import { set_changelog } from "./data/index.mjs";
import { gen_changelog } from "./util/changelog.mjs";
import { get_resources } from "./data/index.mjs";
import { fetch_repo } from "./util/fetch.mjs";

await fetch();
const changelog = await gen_changelog();
if (!!changelog) set_changelog(changelog);

/**
 * @return {Promise<void>}
 */
async function fetch() {
  const args = process.argv.slice(2);
  const resources = get_resources();

  let localBranchNames = args.filter(
    (localBranchName) => !!resources[localBranchName],
  );
  if (localBranchNames.length < 1) localBranchNames = Object.keys(resources);

  for (const localBranchName of localBranchNames) {
    const item = resources[localBranchName];
    await fetch_repo(localBranchName, item);
  }
}
