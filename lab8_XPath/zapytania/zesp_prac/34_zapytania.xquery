let $pracownicy := doc('file:///C:/XPath-XQuery/zesp_prac.xml')/ZESPOLY/ROW[ID_ZESP=10]/PRACOWNICY/ROW
return count($pracownicy)