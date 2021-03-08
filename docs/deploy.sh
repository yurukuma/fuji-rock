#!/usr/bin/env sh

# abort on errors
set -e

# build
yarn run build
cd docs/src/.vuepress/dist
git init
git add -A
git commit -m 'deploy'
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
git push -f git@github.com:yurukuma/fuji-rock.git main:gh-pages
cd ../../../