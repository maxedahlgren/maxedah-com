# maxedah.com

The source for my personal website [maxedah.com](maxedah.com). Currently managed as markdown files pandoc'd to html.

## Build instructions

`./update-html.sh` will run pandoc on all markdown files in `src/` and write to `output/`.

`scp -r output/* USER@HOST:/public_html` will upload html to remote server. (Will fail if any subdirectories don't already exist on host.)
