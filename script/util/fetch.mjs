import { run_command } from './command.mjs'

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
    reset_branch: `git branch -f ${localBranchName} ${originName}/${remoteBranchName}`,
  }

  await run_command(cmds.add_remote, true, true, false)
  await run_command(cmds.fetch_remote, true, true, true)
  await run_command(cmds.reset_branch, true, true, true)
}

export async function fetch_repo_pinned(localBranchName, item) {
  const remote = `${item.remote}.git`
  const originName = `origin_${localBranchName}`

  const cmds = {
    add_remote: `git remote add ${originName} ${remote}`,
    fetch_remote: `git fetch ${originName} ${item.commit}`,
    reset_branch: `git branch -f ${localBranchName} ${item.commit}`,
  }

  await run_command(cmds.add_remote, true, true, false)
  await run_command(cmds.fetch_remote, true, true, true)
  await run_command(cmds.reset_branch, true, true, true)
}
