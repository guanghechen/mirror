/**
 * Resolve which local branches to operate on from CLI args.
 *
 * - Flags (`--foo`) are ignored.
 * - No branch args -> operate on every resource.
 * - Any branch arg that does not match a resource -> exit(1). A typo never
 *   silently falls back to all branches, nor gets silently dropped while its
 *   siblings run (e.g. `push blink.cmp` missing the `nvim@` prefix would
 *   otherwise force-push everything).
 *
 * @param {string[]}               args       process.argv.slice(2)
 * @param {Record<string, object>} resources
 * @return {string[]}
 */
export function resolve_branch_names(args, resources) {
  const candidates = args.filter((arg) => !arg.startsWith('--'))
  if (candidates.length < 1) return Object.keys(resources)

  const unknown = candidates.filter((name) => !resources[name])
  if (unknown.length > 0) {
    console.error(`No matching branch for: ${unknown.join(', ')}`)
    process.exit(1)
  }
  return candidates
}
