import { set_readme } from './data/index.mjs'
import { gen_readme } from './util/readme.mjs'

const readme = await gen_readme()
set_readme(readme)
