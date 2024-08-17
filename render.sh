echo "" > public/index.html

cat src/top.html >> public/index.html
cat src/books.html >> public/index.html
cat src/btm.html >> public/index.html

yarn run prettier -w public/index.html
