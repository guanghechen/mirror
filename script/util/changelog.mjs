import fs from 'node:fs'
import { get_resources } from '../data/index.mjs'
import { get_parent_commit_id, list_change_commits } from './git.mjs'

const resources = get_resources()

const regexes = {
  section: /^\*\s+(\S+)$/,
  commit: /^\s+-[^[]+\[(\w+)\]\(/,
}

/**
 * @param {string|undefined} filepath
 * @return {Promise<Record<string, string>>}
 */
export async function parse_changelog(filepath) {
  if (!filepath || !fs.existsSync(filepath) || !fs.statSync(filepath).isFile()) {
    return {}
  }

  const lines = fs.readFileSync(filepath, 'utf-8').split(/\n+/g)
  const branch_2_commit = {}
  let branch = null
  for (const line of lines) {
    if (regexes.section.test(line)) {
      branch = line.match(regexes.section)[1]
      branch_2_commit[branch] = ''
      continue
    }
    if (regexes.commit.test(line)) {
      const commit = line.match(regexes.commit)[1]
      branch_2_commit[branch] = commit
      continue
    }
  }
  return branch_2_commit
}

/**
 * @param {string|undefined} old_filepath
 * @return {Promise<string>}
 */
export async function gen_changelog(old_filepath) {
  const branch_2_commit = await parse_changelog(old_filepath)
  const sections = []
  for (const [localBranchName, item] of Object.entries(resources)) {
    if (!item.commit) continue

    const fromCommit = branch_2_commit[localBranchName]
      ? await get_parent_commit_id(branch_2_commit[localBranchName])
      : item.commit
    const commits = await list_change_commits(item.remote, fromCommit, localBranchName)

    if (!commits || commits.length < 1) continue

    sections.push({
      id: localBranchName,
      title: `* ${localBranchName}`,
      items: commits.map(
        commit =>
          `  - ${commit.date} [${commit.hash}](${commit.url}) ${commit.message} (${commit.author})`,
      ),
    })
  }

  if (sections.length < 1) {
    console.error('No changes.')
    return
  }

  sections.sort((a, b) => a.id.localeCompare(b.id))
  const changelog = sections
    .map(section => `${section.title}\n${section.items.join('\n')}`)
    .join('\n\n')
  return changelog
}
