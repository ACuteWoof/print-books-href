#!/bin/sh

cd "${0%/*}"

echo -n "Title: " 
read TITLE

echo -n "Author: "
read AUTHOR

echo -n "Subnote/Language: " 
read SUBNOTE

echo -n "Description: " 
read DESCRIPTION

echo -n "Image URL: " 
read IMAGE

echo -n "Lulu URL: " 
read LULU

echo -n "Price: $"
read PRICE

echo -n "PDF URL: " 
read PDF

echo "$TITLE|$AUTHOR|$SUBNOTE|$DESCRIPTION|$IMAGE|$LULU|$PRICE|$PDF" >> ../src/books.txt
