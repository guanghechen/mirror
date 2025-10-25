import { exec } from 'node:child_process'

/**
 * @param {string}      cmd
 * @param {boolean}     echo
 * @param {boolean}     silent
 * @param {boolean}     quit_on_error
 * @return {Promise<string|false>}
 */
export async function run_command(cmd, echo, silent, quit_on_error) {
  if (echo) console.log('', cmd)

  try {
    const stdout = await new Promise((resolve, reject) => {
      exec(
        `${cmd  } 2>/dev/null`,
        { encoding: 'utf8' },
        (error, stdout, stderr) => {
          if (error) return reject(error)
          if (stderr) return reject(stderr)
          resolve(stdout)
        },
      )
    })
    return stdout.toString().trim()
  } catch (error) {
    if (!silent) console.error('Failed:', error)
    if (quit_on_error) throw error
    return false
  }
}
