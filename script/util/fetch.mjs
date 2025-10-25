import { run_command } from './command.mjs'

/**
 * @param {string}      localBranchName
 * @param {string}      item
 * @return {Promise<void>}
 */
export async function fetch_repo(localBranchName, item) {
  const remote = `${item.remote}.git`
  const remoteBranchName = item.branch
  const originName = `origin_${  localBranchName}`

  const cmds = {
    add_remote: `git remote add ${originName} ${remote}`,
    fetch_remote: `git fetch ${originName} ${remoteBranchName}`,
    del_branch: `git branch -D ${localBranchName}`,
    add_branch: `git branch ${localBranchName} ${originName}/${remoteBranchName}`,
  }

  await run_command(cmds.add_remote, true, true, false)
  await run_command(cmds.fetch_remote, true, true, true)
  await run_command(cmds.del_branch, true, true, false)
  await run_command(cmds.add_branch, true, true, true)
}

export async function fetch_repo_pinned(localBranchName, item) {
  const remote = `${item.remote}.git`
  const originName = `origin_${  localBranchName}`

  const cmds = {
    add_remote: `git remote add ${originName} ${remote}`,
    fetch_remote: `git fetch ${originName} ${item.commit}`,
    del_branch: `git branch -D ${localBranchName}`,
    add_branch: `git branch ${localBranchName} ${item.commit}`,
  }

  await run_command(cmds.add_remote, true, true, false)
  await run_command(cmds.fetch_remote, true, true, true)
  await run_command(cmds.del_branch, true, true, false)
  await run_command(cmds.add_branch, true, true, true)
}
