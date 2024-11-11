for $book in doc("db/bib/bib.xml")/bib/book
where $book/title = "Data on the Web"
return 
  <DataOnTheWeb>
    {$book}
  </DataOnTheWeb>