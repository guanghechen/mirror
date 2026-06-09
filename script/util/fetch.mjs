import { run_command } from './command.mjs'

/**
 * Get worktree path for a branch if it exists
 * @param {string} branchName
 * @return {Promise<string|null>}
 */
async function get_worktree_path(branchName) {
  const output = await run_command(['git', 'worktree', 'list', '--porcelain'], { silent: true })
  if (!output) return null

  const lines = output.split('\n')
  let currentWorktree = null
  for (const line of lines) {
    if (line.startsWith('worktree ')) {
      currentWorktree = line.slice(9)
    } else if (line.startsWith('branch ') && line.endsWith(`/${branchName}`)) {
      return currentWorktree
    }
  }
  return null
}

/**
 * Reset branch to target, handling worktree case
 * @param {string} branchName
 * @param {string} target
 * @return {Promise<void>}
 */
async function reset_branch(branchName, target) {
  const worktreePath = await get_worktree_path(branchName)
  if (worktreePath) {
    await run_command(['git', '-C', worktreePath, 'reset', '--hard', target], { echo: true, quitOnError: true })
  } else {
    await run_command(['git', 'branch', '-f', branchName, target], { echo: true, quitOnError: true })
  }
}

/**
 * Point originName at remote, recreating it so the URL stays in sync. A bare
 * `git remote add` fails on reruns and (being swallowed) would silently keep a
 * stale URL after item.remote changes upstream, fetching from the old repo.
 * @param {string} originName
 * @param {string} remote
 * @return {Promise<void>}
 */
async function ensure_remote(originName, remote) {
  await run_command(['git', 'remote', 'remove', originName], { silent: true })
  await run_command(['git', 'remote', 'add', originName, remote], { echo: true, quitOnError: true })
}

/**
 * @param {string}      localBranchName
 * @param {string}      item
 * @return {Promise<void>}
 */
export async function fetch_repo(localBranchName, item) {
  const remote = `${item.remote}.git`
  const remoteBranchName = item.branch
  const originName = `origin_${localBranchName}`

  await ensure_remote(originName, remote)
  await run_command(['git', 'fetch', originName, remoteBranchName], { echo: true, quitOnError: true })
  await reset_branch(localBranchName, `${originName}/${remoteBranchName}`)
}

export async function fetch_repo_pinned(localBranchName, item) {
  const remote = `${item.remote}.git`
  const originName = `origin_${localBranchName}`

  await ensure_remote(originName, remote)
  await run_command(['git', 'fetch', originName, item.commit], { echo: true, quitOnError: true })
  await reset_branch(localBranchName, item.commit)
}
