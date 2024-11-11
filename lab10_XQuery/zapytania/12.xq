<Data>
{
  for $book in doc("db/bib/bib.xml")/bib/book
  where contains($book/title, "Data")
  for $author in $book/author
    return <nazwisko>{ $author/last/text() }</nazwisko>
    
}
</Data>


