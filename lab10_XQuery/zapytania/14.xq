for $book in doc("db/bib/bib.xml")/bib/book
where count($book/author) <= 2
return <title>{$book/title/text()}</title>
