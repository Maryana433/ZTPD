for $k in doc('file:///C:/XPath-XQuery/swiat.xml')/SWIAT/KRAJE/KRAJ
where starts-with($k/NAZWA, 'A')
return <KRAJ>
{$k/NAZWA, $k/STOLICA}
</KRAJ>