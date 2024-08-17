#!/bin/sh

cd "${0%/*}"

[ ! -d ../public ] && mkdir ../public

echo "" > ../public/index.html || touch ../public/index.html

cp ../src/public/* ../public/.
cat ../src/top.html >> ../public/index.html
cat ../extra/books.html >> ../public/index.html
cat ../src/btm.html >> ../public/index.html

yarn run prettier -w  ${PWD%/*}/public/index.html
yarn build
