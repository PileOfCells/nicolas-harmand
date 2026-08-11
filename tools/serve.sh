#!/usr/bin/env bash
# Prévisualisation locale du site, à l'adresse http://127.0.0.1:4000/
#
#   ./tools/serve.sh              # port 4000
#   ./tools/serve.sh --port 4111  # autre port
#
# Passe TOUJOURS par ce script plutôt que par `jekyll build` seul : la config de
# production place le site sous /nicolas-harmand/, celle de développement à la
# racine. Un `_site` construit avec la config de production et servi à la racine
# donne un 404 sur chaque lien interne — c'est le seul piège de ce dépôt.
set -euo pipefail
cd "$(dirname "$0")/.."

exec bundle exec jekyll serve --config _config.yml,_config.dev.yml "$@"
