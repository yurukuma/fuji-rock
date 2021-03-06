#!/usr/bin/env sh

# abort on errors
set -e

# build
yarn run build
cd src/.vuepress/dist
git init
git add -A
git commit -m 'deploy'
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
git push -f git@github.com:yurukuma/fuji-rock.git master:gh-pages
cd ../../../