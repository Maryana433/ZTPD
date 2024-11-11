for $k in doc('file:///C:/XPath-XQuery/swiat.xml')/SWIAT/KRAJE/KRAJ
where substring($k/NAZWA, 1, 1) = substring($k/STOLICA, 1, 1)
return <KRAJ>
{$k/NAZWA, $k/STOLICA}
</KRAJ>