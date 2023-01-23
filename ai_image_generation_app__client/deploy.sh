#!/usr/bin/env sh

# прерывание при ошибках
set -e

# build
yarn build

# перейти в каталог вывода сборки
cd dist

# если вы развертываете в личном домене
# echo 'www.example.com' > CNAME

git init
git checkout -b gh-pages
git add -A
git commit -m 'deploy'

# если вы развертываете на https: // <USERNAME> .github.io
# git push -f git@github.com: <ИМЯ ПОЛЬЗОВАТЕЛЯ> / <ИМЯ ПОЛЬЗОВАТЕЛЯ> .github.io.git main

# если вы развертываете на https: // <USERNAME> .github.io / <REPO>
git push -f git@github.com:LUVROK/OpenAI_generation_image_app.git main: gh-pages

cd -