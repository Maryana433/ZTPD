let $books := doc("db/bib/bib.xml")//bib/book
let $priceMin := min($books/price)
return
<najtańsze>
{
    for $book in $books
    where $book/price = $priceMin
    return
        <najtańsza>
            {$book/title}
            {
                for $author in $book/author
                return <author>
                            {$author/last}
                            {$author/first}
                        </author>
            }
        </najtańsza>
}
</najtańsze>
