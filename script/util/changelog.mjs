import { get_resources } from "../data/index.mjs";
import { list_change_commits } from "./git.mjs";

const resources = get_resources();

/**
 * @return {Promise<string>}
 */
export async function gen_changelog() {
  const sections = [];
  for (const [localBranchName, item] of Object.entries(resources)) {
    if (!item.commit) continue;
    const commits = await list_change_commits(
      item.remote,
      item.commit,
      `origin_${localBranchName}/${item.branch}`,
    );

    if (!commits || commits.length < 1) continue;

    sections.push({
      id: localBranchName,
      title: "* " + localBranchName,
      items: commits.map((line) => "  - " + line),
    });
  }

  if (sections.length < 1) {
    console.error("No changes.");
    return;
  }

  sections.sort((a, b) => a.id.localeCompare(b.id));
  const changelog = sections
    .map((section) => section.title + "\n" + section.items.join("\n"))
    .join("\n\n");
  return changelog;
}
