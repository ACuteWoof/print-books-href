#!/bin/sh

cd "${0%/*}"

[ ! -d ../extra ] && mkdir ../extra

echo "" > ../extra/books.html || touch ../extra/books.html

while IFS="|" read -r TITLE AUTHOR SUBNOTE DESCRIPTION IMAGE LULU PRICE PDF; do
	TEXT="<!--- $TITLE ---><div class='entry'><div class='entrycontent'><img class='w-30' src='$IMAGE' alt='$TITLE $AUTHOR' /><div class='flex flex-col gap-2'><div class='flex flex-col gap-1'><h2>$TITLE - $AUTHOR</h2><span class='subnote'>$SUBNOTE</span></div><p>$DESCRIPTION</p></div></div><div class='buttons'><a href='$LULU' target='_blank' class='link-text'>Buy on Lulu - \$$PRICE</a><a href='$PDF' target='_blank'>View PDF</a></div></div>"
	echo $TEXT >> ../extra/books.html
done < ../src/books.txt
