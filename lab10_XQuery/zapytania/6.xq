for $book in doc("db/bib/bib.xml")/bib/book,
    $title in $book/title,
    $author in $book/author
return 
    <ksiazka>
        <author>
            {$author/last}
            {$author/first}
        </author>
        {$title}
    </ksiazka>
