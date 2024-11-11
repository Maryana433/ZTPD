<Data>
  {
    for $book in doc("db/bib/bib.xml")/bib/book
    where contains($book/title, "Data")
    return
      (
        <title>{ $book/title/text() }</title>,
        for $author in $book/author
        return <nazwisko>{ $author/last/text() }</nazwisko>
      )
  }
</Data>
