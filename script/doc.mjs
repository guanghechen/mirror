import fs from "node:fs";
import path from "node:path";
import url from "node:url";

const __dirname = path.dirname(url.fileURLToPath(import.meta.url));
const readmeFilepath = path.join(__dirname, "../README.md");
const resourceFilepath = path.join(__dirname, "resource.json");
const resources = JSON.parse(fs.readFileSync(resourceFilepath, "utf8"));

function gen_introduction() {
  return `
### Motivation

To backup open source codes.
`.trim();
}

function gen_repo_table() {
  let max_n_local_branch_name = 0;
  let max_n_remote_branch_name = 0;
  let max_n_commit_id = 0;

  for (const [localBranchName, item] of Object.entries(resources)) {
    const remoteBranchName = item.branch;
    max_n_local_branch_name = Math.max(
      max_n_local_branch_name,
      localBranchName.length,
    );
    max_n_remote_branch_name = Math.max(
      max_n_remote_branch_name,
      remoteBranchName.length,
    );
    max_n_commit_id = Math.max(max_n_commit_id, item.commit.length);
  }

  max_n_local_branch_name =
    max_n_local_branch_name & 1
      ? max_n_local_branch_name + 7
      : max_n_local_branch_name + 6;
  max_n_remote_branch_name = Math.max(
    16,
    max_n_remote_branch_name & 1
      ? max_n_remote_branch_name + 5
      : max_n_remote_branch_name + 4,
  );
  max_n_commit_id = max_n_commit_id + 2;

  const definitions = [];
  const rows = [];
  for (const [localBranchName, item] of Object.entries(resources)) {
    const remoteBranchName = item.branch;
    const definition = `[${localBranchName}]: ${item.remote}`;
    definitions.push(definition);

    const cell1 = ` [${localBranchName}][]`.padEnd(max_n_local_branch_name);
    const cell2 = ` ${remoteBranchName}`.padEnd(max_n_remote_branch_name - 1);
    const cell3 = ` ${item.commit}`;
    const row = `${cell1}|${cell2}|${cell3}`;
    rows.push(row);
  }

  const header =
    " Local Branch".padEnd(max_n_local_branch_name) +
    "| Remote Branch".padEnd(max_n_remote_branch_name) +
    "| Commit".padEnd(max_n_commit_id);
  const headerSplit =
    "-".repeat(max_n_local_branch_name) +
    "|" +
    "-".repeat(max_n_remote_branch_name - 1) +
    "|" +
    "-".repeat(max_n_commit_id);
  const content =
    header +
    "\n" +
    headerSplit +
    "\n" +
    rows.join("\n") +
    "\n\n" +
    definitions.join("\n");
  return content;
}

const introduction = gen_introduction();
const repo_table = gen_repo_table();
const doc = [introduction, repo_table].join("\n\n\n");
fs.writeFileSync(readmeFilepath, doc, "utf8");
