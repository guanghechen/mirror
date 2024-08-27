import { get_resources, set_resources } from "./data/index.mjs";
import { run_command } from "./util/command.mjs";
import { get_full_commit_id } from "./util/git.mjs";

const resources = get_resources();
const next_resources = { ...resources };
await run();

/**
 * @param {string}  localBranchName
 * @param {string}  item
 * @param {boolean} pushOnlyWhenChanged
 * @return {Promise<void>}
 */
async function refresh(localBranchName, item, pushOnlyWhenChanged) {
  const commitId = await get_full_commit_id(localBranchName);
  if (!pushOnlyWhenChanged || commitId !== item.commit) {
    const cmd = `git push origin ${localBranchName}`;
    await run_command(cmd, true, true, true);
  }

  next_resources[localBranchName] = {
    remote: item.remote,
    branch: item.branch,
    commit: commitId,
  };
}

/**
 * @return {Promise<void>}
 */
async function run() {
  const args = process.argv.slice(2);
  const pushEvenNotChanged = args.includes("--push-even-not-changed");
  const pushOnlyWhenChanged = !pushEvenNotChanged;
  const localBranchNames = args.filter(
    (localBranchName) => !!resources[localBranchName],
  );
  if (localBranchNames.length > 0) {
    for (const [localBranchName, item] of Object.entries(resources)) {
      if (localBranchNames.includes(localBranchName)) {
        await refresh(localBranchName, item, pushOnlyWhenChanged);
      }
    }
  } else {
    // refresh all
    for (const [localBranchName, item] of Object.entries(resources)) {
      await refresh(localBranchName, item, pushOnlyWhenChanged);
    }
  }

  set_resources(next_resources);
}
