import { get_resources } from './data/index.mjs'
import { resolve_branch_names } from './util/args.mjs'
import { run_command } from './util/command.mjs'

const resources = get_resources()
await sync()

/**
 * @param {string}  branchName
 * @param {object}  item
 * @return {Promise<void>}
 */
async function syncItem(branchName, item) {
  await run_command(['git', 'push', 'origin', `${item.commit}:${branchName}`, '--force'], { echo: true, quitOnError: true })
}

/**
 * @return {Promise<void>}
 */
async function sync() {
  const args = process.argv.slice(2)
  const localBranchNames = resolve_branch_names(args, resources)

  for (const localBranchName of localBranchNames) {
    const item = resources[localBranchName]
    await syncItem(localBranchName, item)
  }
}
