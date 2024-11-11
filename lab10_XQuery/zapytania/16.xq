let $years := doc("db/bib/bib.xml")/bib/book/@year
let $minYear := min($years)
let $maxYear := max($years)
return <przedział>
           {$minYear} - {$maxYear}
       </przedział>
