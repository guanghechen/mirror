import { set_changelog, set_readme } from "./data/index.mjs";
import { gen_changelog } from "./util/changelog.mjs";
import { gen_readme } from "./util/readme.mjs";

const readme = await gen_readme();
set_readme(readme);

const changelog = await gen_changelog();
set_changelog(changelog);
