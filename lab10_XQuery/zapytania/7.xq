for $book in doc("db/bib/bib.xml")/bib/book,
    $title in $book/title,
    $author in $book/author
return 
    <ksiazka>
        <autor>{$author/last/text()} {$author/first/text()}</autor>
        <tytul>{$title}</tytul>
    </ksiazka>
