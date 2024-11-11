<imiona>
{
    for $book in doc("db/bib/bib.xml")/bib/book
    where $book/title = "Data on the Web"
    return 
        for $first in $book/author/first
        return <imie>{ $first/text() }</imie>
}
</imiona>

    
