echo "" > public/index.html

cat src/top.html >> public/index.html
cat src/books.html >> public/index.html
cat src/btm.html >> public/index.html

prettier -w public/index.html
