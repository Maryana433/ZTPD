<wynik>
{
for $book in doc("db/bib/bib.xml")/bib/book,
    $title in $book/title,
    $author in $book/author
return 
    <ksiazka>
        <autor>{concat($author/last, " ", $author/first)}</autor>
        <tytul>{$title/text()}</tytul>
    </ksiazka>
}
</wynik>
