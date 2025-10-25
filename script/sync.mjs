import { get_resources } from './data/index.mjs'
import { run_command } from './util/command.mjs'

const resources = get_resources()
await sync()

/**
 * @param {string}  branchName
 * @param {string}  item
 * @return {Promise<void>}
 */
async function syncItem(branchName, item) {
  const cmd = `git push origin ${item.commit}:${branchName} --force`
  await run_command(cmd, true, true, true)
}

/**
 * @return {Promise<void>}
 */
async function sync() {
  const args = process.argv.slice(2)

  let localBranchNames = args.filter(
    (localBranchName) => Boolean(resources[localBranchName]),
  )
  if (localBranchNames.length < 1) localBranchNames = Object.keys(resources)

  for (const localBranchName of localBranchNames) {
    const item = resources[localBranchName]
    await syncItem(localBranchName, item)
  }
}
