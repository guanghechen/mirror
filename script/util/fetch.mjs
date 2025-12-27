import { run_command } from './command.mjs'

/**
 * Get worktree path for a branch if it exists
 * @param {string} branchName
 * @return {Promise<string|null>}
 */
async function get_worktree_path(branchName) {
  const output = await run_command('git worktree list --porcelain', false, true, false)
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
    await run_command(`git -C "${worktreePath}" reset --hard ${target}`, true, true, true)
  } else {
    await run_command(`git branch -f ${branchName} ${target}`, true, true, true)
  }
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

  const cmds = {
    add_remote: `git remote add ${originName} ${remote}`,
    fetch_remote: `git fetch ${originName} ${remoteBranchName}`,
  }

  await run_command(cmds.add_remote, true, true, false)
  await run_command(cmds.fetch_remote, true, true, true)
  await reset_branch(localBranchName, `${originName}/${remoteBranchName}`)
}

export async function fetch_repo_pinned(localBranchName, item) {
  const remote = `${item.remote}.git`
  const originName = `origin_${localBranchName}`

  const cmds = {
    add_remote: `git remote add ${originName} ${remote}`,
    fetch_remote: `git fetch ${originName} ${item.commit}`,
  }

  await run_command(cmds.add_remote, true, true, false)
  await run_command(cmds.fetch_remote, true, true, true)
  await reset_branch(localBranchName, item.commit)
}
