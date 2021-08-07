#!/usr/bin/env sh

# 發生錯誤時執行終止指令
set -e

# 打包編譯
npm run generate

cd dist

git init
git add -A
git commit -m 'deploy'

git push -f https://github.com/carolxuan/nuxt-app.git master:gh-pages

cd -
