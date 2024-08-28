import { get_resources, set_readme, set_resources } from "./data/index.mjs";
import { run_command } from "./util/command.mjs";
import { get_full_commit_id } from "./util/git.mjs";
import { gen_readme } from "./util/readme.mjs";

const resources = get_resources();
const next_resources = { ...resources };

await push();
const readme = await gen_readme();
set_readme(readme);

/**
 * @param {string}  localBranchName
 * @param {string}  item
 * @param {boolean} pushOnlyWhenChanged
 * @return {Promise<void>}
 */
async function refresh(localBranchName, item, pushOnlyWhenChanged) {
  const commitId = await get_full_commit_id(localBranchName);
  if (!pushOnlyWhenChanged || commitId !== item.commit) {
    const cmd = `git push origin ${localBranchName}`;
    await run_command(cmd, true, true, true);
  }

  next_resources[localBranchName] = {
    remote: item.remote,
    branch: item.branch,
    commit: commitId,
  };
}

/**
 * @return {Promise<void>}
 */
async function push() {
  const args = process.argv.slice(2);
  const pushEvenNotChanged = args.includes("--push-even-not-changed");
  const pushOnlyWhenChanged = !pushEvenNotChanged;

  let localBranchNames = args.filter(
    (localBranchName) => !!resources[localBranchName],
  );
  if (localBranchNames.length < 1) localBranchNames = Object.keys(resources);

  for (const localBranchName of localBranchNames) {
    const item = resources[localBranchName];
    await refresh(localBranchName, item, pushOnlyWhenChanged);
  }

  set_resources(next_resources);
}
