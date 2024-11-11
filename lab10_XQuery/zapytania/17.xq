let $ceny := doc("db/bib/bib.xml")/bib/book/price
let $priceMin := min($ceny)
let $priceMax := max($ceny)
return <różnica>
           {$priceMax - $priceMin}
       </różnica>