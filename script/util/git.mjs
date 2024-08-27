import { run_command } from "./command.mjs";

const regex = /(\w+) ([\w\W]+)/;

/**
 * @param {string}  branchNameOrCommitId
 * @return {Promise<boolean>}
 */
export async function check_branch_or_commit_exist(branchNameOrCommitId) {
  const cmd = `git log -1 --pretty=format:"%h %s" ${branchNameOrCommitId}`;
  const result = await run_command(cmd, false, true, false);
  return result !== false;
}

/**
 * @param {string}  branchNameOrCommitId
 * @return {Promise<string>}
 */
export async function get_full_commit_id(branchNameOrCommitId) {
  const cmd = `git rev-parse ${branchNameOrCommitId}`;
  const result = await run_command(cmd, false, true, true);
  return result;
}

/**
 * @param {string}  fromBranchName
 * @param {string}  toBranchName
 * @return {Promise<string[]>}
 */
export async function list_change_commits(
  remote,
  fromBranchName,
  toBranchName,
) {
  const isFromBranchExist = await check_branch_or_commit_exist(fromBranchName);
  const cmd = isFromBranchExist
    ? `git log --pretty=format:"%h %s" ${fromBranchName}..${toBranchName}`
    : `git log --pretty=format:"%h %s" ${toBranchName}`;
  const commits = await run_command(cmd, true, false, true);
  const lines = commits.trim().split(/\n/g).filter(Boolean);
  if (lines.length < 1) return "";

  const results = [];
  for (const line of lines) {
    const [_, commitId, remainContent] = regex.exec(line);
    const fullCommitId = await get_full_commit_id(commitId);
    const text = `[${commitId}](${remote}/commit/${fullCommitId}) ${remainContent}`;
    results.push(text);
  }
  return results;
}
