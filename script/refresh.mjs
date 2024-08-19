import { execSync } from "node:child_process";
import fs from "node:fs";
import path from "node:path";
import url from "node:url";

const __dirname = path.dirname(url.fileURLToPath(import.meta.url));
const filepath = path.resolve(__dirname, "resource.json");
const resources = JSON.parse(fs.readFileSync(filepath, "utf8"));
const new_data = { ...resources };
run();

function run_command(cmd, silent, quit_on_error) {
  console.log("", cmd);
  try {
    const stdout = execSync(cmd + " 2>/dev/null", { encoding: "utf8" });
    return stdout.toString().trim();
  } catch (error) {
    if (!silent) console.error("Failed:", error);
    if (quit_on_error) throw error;
    return "";
  }
}

function refresh(localBranchName, item) {
  const remote = `${item.remote}.git`;
  const remoteBranchName = item.branch;
  const originName = "origin_" + localBranchName;

  const cmds = {
    add_remote: `git remote add ${originName} ${remote}`,
    fetch_remote: `git fetch ${originName} ${remoteBranchName}`,
    del_branch: `git branch -D ${localBranchName}`,
    add_branch: `git branch ${localBranchName} ${originName}/${remoteBranchName}`,
    push_origin: `git push origin ${localBranchName}`,
    get_commit_id: `git rev-parse ${localBranchName}`,
  };

  run_command(cmds.add_remote, true, false);
  run_command(cmds.fetch_remote, true, true);
  run_command(cmds.del_branch, true, false);
  run_command(cmds.add_branch, true, true);
  run_command(cmds.push_origin, true, true);
  const commitId = run_command(cmds.get_commit_id, true, true);

  new_data[localBranchName] = {
    remote: item.remote,
    branch: item.branch,
    commit: commitId,
  };
}

function run() {
  const args = process.argv.slice(2);
  const localBranchNames = args.filter(
    (localBranchName) => !!resources[localBranchName],
  );
  if (localBranchNames.length > 0) {
    for (const [localBranchName, item] of Object.entries(resources)) {
      if (localBranchNames.includes(localBranchName)) {
        refresh(localBranchName, item);
      }
    }
  } else {
    // refresh all
    for (const [localBranchName, item] of Object.entries(resources)) {
      refresh(localBranchName, item);
    }
  }

  fs.writeFileSync(filepath, JSON.stringify(new_data, null, 2), "utf8");
}
