import { set_changelog } from './data/index.mjs'
import { gen_changelog } from './util/changelog.mjs'
import { get_changelog_filepath, get_resources } from './data/index.mjs'
import { resolve_branch_names } from './util/args.mjs'
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

  const localBranchNames = resolve_branch_names(args, resources)

  for (const localBranchName of localBranchNames) {
    const item = resources[localBranchName]
    if (item.pinned) await fetch_repo_pinned(localBranchName, item)
    else await fetch_repo(localBranchName, item)
  }
}
