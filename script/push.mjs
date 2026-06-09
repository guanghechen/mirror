import { get_resources, set_readme, set_resources } from './data/index.mjs'
import { resolve_branch_names } from './util/args.mjs'
import { run_command } from './util/command.mjs'
import { get_full_commit_id } from './util/git.mjs'
import { gen_readme } from './util/readme.mjs'

const resources = get_resources()
const next_resources = { ...resources }

await push()
const readme = await gen_readme()
set_readme(readme)

/**
 * @param {string}  branchName
 * @param {object}  item
 * @param {boolean} pushOnlyWhenChanged
 * @return {Promise<void>}
 */
async function pushItem(branchName, item, pushOnlyWhenChanged) {
  const commitId = await get_full_commit_id(branchName)
  if (!pushOnlyWhenChanged || commitId !== item.commit) {
    await run_command(['git', 'push', 'origin', `${branchName}:${branchName}`], { echo: true, quitOnError: true })
  }

  next_resources[branchName] = {
    remote: item.remote,
    branch: item.branch,
    commit: commitId,
    pinned: item.pinned,
  }
}

/**
 * @return {Promise<void>}
 */
async function push() {
  const args = process.argv.slice(2)
  const pushEvenNotChanged = args.includes('--push-even-not-changed')
  const pushOnlyWhenChanged = !pushEvenNotChanged

  const localBranchNames = resolve_branch_names(args, resources)

  for (const localBranchName of localBranchNames) {
    const item = resources[localBranchName]
    await pushItem(localBranchName, item, pushOnlyWhenChanged)
  }

  set_resources(next_resources)
}
