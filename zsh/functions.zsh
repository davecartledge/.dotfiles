# Display IP info
function ipinfo(){
  curl ipinfo.io/$1
}

# Convert .jpg images to .webp format
function jpgtowebp() {
  which cwebp  >/dev/null || brew install webp
  which rename >/dev/null || brew install rename
  find . -type f -iname '*.jpg' -exec cwebp {} -q 75 -o {}.webp \;
  find . -type f -iname '*.jpg.webp' -exec rename -f 's|.jpg.webp|.webp|' {} \;
}

# Make new directory and enter it
function mkcd() {
  mkdir -p $1; cd $1
}

numfiles() {
  N="$(ls $1 | wc -l)";
  echo "$N files";
}

# Reload shell
function reload() {
  exec $SHELL -l
}

# Output file tree, excluding ignorables
function tree(){
  tree -aC -I '.git|node_modules|.yarn-cache|.DS_Store' --dirsfirst "$@"
}

# Weather info
function weather() {
  curl wttr.in/$1
}
