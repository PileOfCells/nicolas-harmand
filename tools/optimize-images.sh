#!/usr/bin/env bash
# Régénère assets/img/ à partir des masters de _src/img/.
#
#   ./tools/optimize-images.sh
#
# Les masters sont recadrés à la main une fois pour toutes ; ce script ne fait
# que redimensionner et encoder, ce qui le rend rejouable à l'identique.
#
# _src/img/ ne contient que les masters effectivement utilisés ci-dessous : les
# logos officiels en vectoriel (EPS) sont retéléchargeables auprès du CNRS et de
# Sorbonne Université, ils n'ont pas à vivre dans le dépôt.
set -euo pipefail
cd "$(dirname "$0")/.."

SRC=_src/img
OUT=assets/img
mkdir -p "$OUT"

# photo <fichier-source> <nom-de-base> <largeurs...>
photo () {
  local src="$SRC/$1" base="$2"; shift 2
  for w in "$@"; do
    magick "$src" -auto-orient -strip -colorspace sRGB -resize "${w}x" \
      -quality 45 "$OUT/$base-$w.avif"
    magick "$src" -auto-orient -strip -colorspace sRGB -resize "${w}x" \
      -define webp:method=6 -quality 80 "$OUT/$base-$w.webp"
  done
  echo "  $base : $*"
}

# carre <fichier-source> <nom-de-base> <largeurs...>  (recadrage centré 1:1)
carre () {
  local src="$SRC/$1" base="$2"; shift 2
  for w in "$@"; do
    magick "$src" -auto-orient -strip -colorspace sRGB \
      -resize "${w}x${w}^" -gravity center -extent "${w}x${w}" \
      -quality 45 "$OUT/$base-$w.avif"
    magick "$src" -auto-orient -strip -colorspace sRGB \
      -resize "${w}x${w}^" -gravity center -extent "${w}x${w}" \
      -define webp:method=6 -quality 80 "$OUT/$base-$w.webp"
  done
  echo "  $base (carré) : $*"
}

# logo <fichier-source> <nom-de-base> [nombre-de-couleurs]
# Les aplats gagnent en PNG quantifié : le logo CNRS fait 1,4 Ko en PNG8
# contre 3,6 Ko en WebP.
logo () {
  magick "$SRC/$1" -strip -colorspace sRGB -resize x100 -colors "${3:-64}" "$OUT/$2-100.png"
  echo "  $2 : PNG8 100px"
}

echo "Images :"
photo portrait.jpg               portrait               200 400 600
photo epithelia-shape.jpg        epithelia-shape        400 800 1200
photo epithelia-thickness.jpg    epithelia-thickness    800 1600
photo stress-sensors.jpg         stress-sensors         400 800 1600
photo backgammon.webp            backgammon             260 520
photo gallery-cell-island.png    gallery-cell-island    600 1200
photo gallery-oscillatoria.png   gallery-oscillatoria   600 1200

carre epithelia-shape.jpg        epithelia-shape-sq     200 360
carre epithelia-thickness.jpg    epithelia-thickness-sq 200 360
carre stress-sensors.jpg         stress-sensors-sq      200 360

echo "Logos :"
logo logo-ljp.png   logo-ljp   64
logo logo-cnrs.png  logo-cnrs  64
logo logo-su.png    logo-su    16

# og:image — JPEG obligatoire : les crawlers sociaux ne décodent pas WebP.
# Mise en boîte sur fond noir plutôt que recadrage : en 1,91:1 un recadrage
# centré amputerait le haut et le bas de l'îlot cellulaire.
echo "og:image :"
magick "$SRC/gallery-cell-island.png" -strip -colorspace sRGB \
  -resize 1200x630 -background black -gravity center -extent 1200x630 \
  -quality 78 -sampling-factor 4:2:0 -interlace JPEG assets/icons/og-default.jpg
echo "  assets/icons/og-default.jpg  $(du -h assets/icons/og-default.jpg | cut -f1)"

echo
echo "Total assets/img : $(du -sh "$OUT" | cut -f1)"
