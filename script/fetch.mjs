import { set_changelog } from './data/index.mjs'
import { gen_changelog } from './util/changelog.mjs'
import { get_changelog_filepath, get_resources } from './data/index.mjs'
import { fetch_repo, fetch_repo_pinned } from './util/fetch.mjs'

await fetch()

const { filepath: changelog_filepath } = get_changelog_filepath()
const changelog = await gen_changelog(changelog_filepath)
if (changelog) set_changelog(changelog)

/**
 * @return {Promise<void>}
 */
async function fetch() {
  const args = process.argv.slice(2)
  const resources = get_resources()

  let localBranchNames = args.filter(
    (localBranchName) => Boolean(resources[localBranchName]),
  )
  if (localBranchNames.length < 1) localBranchNames = Object.keys(resources)

  for (const localBranchName of localBranchNames) {
    const item = resources[localBranchName]
    if (item.pinned) await fetch_repo_pinned(localBranchName, item)
    else await fetch_repo(localBranchName, item)
  }
}
