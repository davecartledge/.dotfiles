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

function numfiles() {
  N="$(ls $1 | wc -l)";
  echo "$N files";
}

# Reload shell
function reload() {
  exec $SHELL -l
}

# Diesplay term colors
function termcolours() {
  for i in {0..255}; do 
    print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f "${${(M)$((i%6)):#3}:+$'\n'}; 
  done
}

# Weather info
function weather() {
  curl wttr.in/$1
}
