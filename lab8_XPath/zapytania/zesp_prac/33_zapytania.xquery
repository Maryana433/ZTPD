for $pracownik in doc('file:///C:/XPath-XQuery/zesp_prac.xml')/ZESPOLY/ROW[NAZWA='SYSTEMY EKSPERCKIE']/PRACOWNICY/ROW/NAZWISKO
return data($pracownik)