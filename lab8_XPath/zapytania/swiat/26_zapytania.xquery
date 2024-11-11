for $k in doc('file:///C:/XPath-XQuery/swiat.xml')/SWIAT/KONTYNENTY/KONTYNENT
return <KRAJ>
{$k/NAZWA, $k/STOLICA}
</KRAJ>