echo -n "Title: " 
read TITLE

echo -n "Subnote/Language: " 
read SUBNOTE

echo -n "Description: " 
read Description

echo -n "Image URL: " 
read IMAGE

echo -n "Lulu URL: " 
read LULU

echo -n "Price: "
read PRICE

echo -n "PDF URL: " 
read PDF


TEXT="<!--- $TITLE ---><div class='entry'><div class='entrycontent'><img class='w-30' src='$IMAGE' alt='$TITLE' /><div class='flex flex-col gap-2'><div class='flex flex-col gap-1'><h2>$TITLE</h2><span class='subnote'>$SUBNOTE</span></div><p>$DESCRIPTION</p></div></div><div class='buttons'><a href='$LULU' target='_blank' class='text-blue-200'>Buy on Lulu - \$$PRICE</a><a href='$PDF' target='_blank'>View PDF</a></div></div>"

echo $TEXT >> src/books.html
