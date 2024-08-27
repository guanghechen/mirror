import { get_resources } from "./data/index.mjs";
import { fetch_repo } from "./util/fetch.mjs";

const resources = get_resources();
for (const [localBranchName, item] of Object.entries(resources)) {
  await fetch_repo(localBranchName, item);
}
