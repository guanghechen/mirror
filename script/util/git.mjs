import { run_command } from './command.mjs'

/**
 * @param {string}  branchNameOrCommitId
 * @return {Promise<boolean>}
 */
export async function check_branch_or_commit_exist(branchNameOrCommitId) {
  const cmd = `git log -1 --pretty=format:"%h %s" ${branchNameOrCommitId}`
  const result = await run_command(cmd, false, true, false)
  return result !== false
}

/**
 * @param {string}  branchNameOrCommitId
 * @return {Promise<string>}
 */
export async function get_full_commit_id(branchNameOrCommitId) {
  const cmd = `git rev-parse ${branchNameOrCommitId}`
  const result = await run_command(cmd, false, true, true)
  return result
}

export async function get_parent_commit_id(commitId) {
  try {
    const cmd = `git rev-parse "${commitId}^"`
    const result = await run_command(cmd, false, true, true)
    return result
  } catch (_error) {
    return get_full_commit_id(commitId)
  }
}

/**
 * @typedef {Object} ICommitItem
 * @property {string} hash    - Short commit hash
 * @property {string} date    - Commit date
 * @property {string} author  - Commit author name
 * @property {string} message - Commit message
 * @property {string} url     - URL to the commit on remote repository
 */

/**
 * @param {string}  fromCommitId
 * @param {string}  toCommitId
 * @return {Promise<Array<ICommitItem>>}
 */
export async function list_change_commits(remote, fromCommitId, toCommitId) {
  const isFromBranchExist = await check_branch_or_commit_exist(fromCommitId)
  const cmd = isFromBranchExist
    ? `git log --pretty=format:"%h|%ad|%an|%s" --date=iso ${fromCommitId}..${toCommitId}`
    : `git log --pretty=format:"%h|%ad|%an|%s" --date=iso ${toCommitId}`
  const commits = await run_command(cmd, true, false, true)
  const lines = commits.trim().split(/\n/g).filter(Boolean)
  if (lines.length < 1) return []

  const results = []
  for (const line of lines) {
    const [commitId, commitDate, author, message] = line.split('|')
    const fullCommitId = await get_full_commit_id(commitId)
    results.push({
      hash: commitId,
      date: new Date(commitDate).toISOString(),
      author,
      message,
      url: `${remote}/commit/${fullCommitId}`,
    })
  }
  return results
}
