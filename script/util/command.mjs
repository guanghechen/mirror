import { execFile } from 'node:child_process'

/**
 * Run a command without spawning a shell. The first array element is the
 * executable, the rest are arguments passed verbatim (no shell quoting/escaping).
 *
 * @param {string[]} args  e.g. ['git', 'push', 'origin', 'main:main']
 * @param {{ echo?: boolean, silent?: boolean, quitOnError?: boolean }} [opts]
 * @return {Promise<string|false>}
 */
export async function run_command(args, opts = {}) {
  const { echo = false, silent = true, quitOnError = false } = opts
  if (echo) console.log('', args.join(' '))

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
    if (!silent) console.error('Failed:', args.join(' '), '\n', error.stderr || error)
    if (quitOnError) throw error
    return false
  }
}
