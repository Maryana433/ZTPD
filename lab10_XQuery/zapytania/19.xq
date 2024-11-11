for $autorLast in distinct-values(doc("db/bib/bib.xml")/bib/book/author/last)
let $books := 
    for $book in doc("db/bib/bib.xml")/bib/book
    where $book/author/last = $autorLast
    return $book/title
return
<autor>
    <last>{ $autorLast }</last>
    {
        for $title in $books
        return $title
    }
</autor>
