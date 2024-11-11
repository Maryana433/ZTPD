for $book in doc("db/bib/bib.xml")/bib/book[title = "Data on the Web"]
return 
  <DataOnTheWeb>
    {$book}
  </DataOnTheWeb>

      
