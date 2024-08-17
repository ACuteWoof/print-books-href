#!/bin/sh

cd "${0%/*}"

echo "" > ../public/index.html

cat ../src/top.html >> ../public/index.html
cat ../extra/books.html >> ../public/index.html
cat ../src/btm.html >> ../public/index.html

yarn run prettier -w  ${PWD%/*}/public/index.html
