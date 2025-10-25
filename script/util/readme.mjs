import { get_resources } from '../data/index.mjs'

/**
 * @return {Promise<string>}
 */
export async function gen_introduction() {
  return `
### Setup

* Fetch from remote and generate CHANGELOG

  \`\`\`fish
  node script/fetch.mjs
  \`\`\`

* Sync changes to the mirror.git and update the README

  \`\`\`fish
  node script/push.mjs
  \`\`\`


### Motivation

To backup open source codes.
`.trim()
}

/**
 * @return {Promise<string>}
 */
export async function gen_repo_table() {
  let max_n_local_branch_name = 0
  let max_n_remote_branch_name = 0
  let max_n_commit_id = 0

  const resources = get_resources()
  for (const [localBranchName, item] of Object.entries(resources)) {
    const remoteBranchName = item.branch
    max_n_local_branch_name = Math.max(
      max_n_local_branch_name,
      localBranchName.length,
    )
    max_n_remote_branch_name = Math.max(
      max_n_remote_branch_name,
      remoteBranchName.length,
    )
    max_n_commit_id = Math.max(max_n_commit_id, item.commit.length)
  }

  max_n_local_branch_name =
    max_n_local_branch_name & 1
      ? max_n_local_branch_name + 7
      : max_n_local_branch_name + 6
  max_n_remote_branch_name = Math.max(
    16,
    2 *
    (max_n_remote_branch_name & 1
      ? max_n_remote_branch_name + 3
      : max_n_remote_branch_name + 2) +
    max_n_local_branch_name,
  )
  max_n_commit_id = max_n_commit_id + 2

  const local_branch_definitions = []
  const remote_branch_definitions = []
  const rows = []
  for (const [localBranchName, item] of Object.entries(resources)) {
    const remoteBranchName = item.branch
    const local_branch_identifier = localBranchName
    const remote_branch_identifier = `${localBranchName}#${remoteBranchName}`
    const local_branch_definition = `[${local_branch_identifier}]: https://github.com/guanghechen/mirror/tree/${localBranchName}`
    const remote_branch_definition = `[${remote_branch_identifier}]: ${item.remote}/tree/${remoteBranchName}`
    local_branch_definitions.push(local_branch_definition)
    remote_branch_definitions.push(remote_branch_definition)

    const cell1 = ` [${localBranchName}][]`.padEnd(max_n_local_branch_name)
    const cell2 = ` [${remoteBranchName}][${remote_branch_identifier}]`.padEnd(
      max_n_remote_branch_name - 1,
    )
    const cell3 = ` ${item.commit}`
    const row = `${cell1}|${cell2}|${cell3}`
    rows.push(row)
  }

  const header =
    ' Local Branch'.padEnd(max_n_local_branch_name) +
    '| Remote Branch'.padEnd(max_n_remote_branch_name) +
    '| Commit'.padEnd(max_n_commit_id)
  const headerSplit =
    `${'-'.repeat(max_n_local_branch_name)
    }|${
      '-'.repeat(max_n_remote_branch_name - 1)
    }|${
      '-'.repeat(max_n_commit_id)}`
  const content =
    `${header
    }\n${
      headerSplit
    }\n${
      rows.join('\n')
    }\n\n${
      local_branch_definitions.join('\n')
    }\n\n${
      remote_branch_definitions.join('\n')}`
  return content
}

/**
 * @return {Promise<string>}
 */
export async function gen_readme() {
  const introduction = await gen_introduction()
  const repo_table = await gen_repo_table()
  return `${introduction  }\n\n\n${  repo_table}`
}
