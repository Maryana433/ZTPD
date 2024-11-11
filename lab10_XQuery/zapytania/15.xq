for $book in doc("db/bib/bib.xml")/bib/book
return <ksiazka>
           <title>{$book/title/text()}</title>
           <autorow>{count($book/author)}</autorow>
       </ksiazka>
