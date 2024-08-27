import fs from "node:fs";
import path from "node:path";
import url from "node:url";

const __dirname = path.dirname(url.fileURLToPath(import.meta.url));
const filepaths = {
  changelog: (name) => {
    const filepath = path.join(__dirname, `../../changelog/${name}.md`);
    const dirpath = path.dirname(filepath);
    fs.mkdirSync(dirpath, { recursive: true });
    return filepath;
  },
  resources: path.resolve(__dirname, "resource.json"),
  README: path.resolve(__dirname, "..", "..", "README.md"),
};

export const get_resources = () => {
  const content = fs.readFileSync(filepaths.resources, "utf8");
  return JSON.parse(content);
};
export const set_resources = (data) => {
  const filepath = filepaths.resources;
  const content = JSON.stringify(data, null, 2);
  fs.writeFileSync(filepath, content, "utf8");
};

export const set_changelog = (changelog) => {
  const date = new Date();
  const year = String(date.getFullYear());
  const month = String(date.getMonth() + 1).padStart(2, "0");
  const day = String(date.getDate()).padStart(2, "0");
  const name = `${year}-${month}-${day}`;

  const filepath = filepaths.changelog(name);
  const content = `## ${name}\n\n${changelog}`;
  fs.writeFileSync(filepath, content, "utf8");
};

export const set_readme = (doc) => {
  const filepath = filepaths.README;
  fs.writeFileSync(filepath, doc, "utf8");
};
