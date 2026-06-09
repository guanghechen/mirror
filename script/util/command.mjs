import { execFile } from 'node:child_process'

// Args matching this print unquoted; anything else (spaces, |, ^, %, ...) gets
// single-quoted so the echoed command can be pasted into a shell and run as-is.
const SHELL_SAFE_ARG = /^[\w@+=:,./-]+$/

/**
 * Run a command without spawning a shell. The first array element is the
 * executable, the rest are arguments passed verbatim to the process. The echoed
 * string is shell-quoted for display only, so it can be copied into a shell.
 *
 * @param {string[]} args  e.g. ['git', 'push', 'origin', 'main:main']
 * @param {{ echo?: boolean, silent?: boolean, quitOnError?: boolean }} [opts]
 * @return {Promise<string|false>}
 */
export async function run_command(args, opts = {}) {
  const { echo = false, silent = true, quitOnError = false } = opts
  const printable = args.map(shell_quote).join(' ')
  if (echo) console.log('', printable)

  try {
    return await new Promise((resolve, reject) => {
      execFile(
        args[0],
        args.slice(1),
        { encoding: 'utf8', maxBuffer: 1024 * 1024 * 64 },
        (error, stdout, stderr) => {
          if (error) {
            error.stderr = stderr
            return reject(error)
          }
          resolve(stdout.toString().trim())
        },
      )
    })
  } catch (error) {
    if (!silent) console.error('Failed:', printable, '\n', error.stderr || error)
    if (quitOnError) throw error
    return false
  }
}

/**
 * Single-quote an arg for shell copy-paste when it holds metacharacters.
 * @param {string} arg
 * @return {string}
 */
function shell_quote(arg) {
  if (SHELL_SAFE_ARG.test(arg)) return arg
  return `'${arg.replace(/'/g, "'\\''")}'`
}
