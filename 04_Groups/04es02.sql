/*
	Estrarre le città in cui ci sono almeno 
	due fornitori che hanno fornito ognuno 
	almeno due prodotti di diverso colore 
	(suggerimento: scrivere prima la query 
	che estrae le informazioni sulle coppie 
	di parti di diverso colore fornite dallo 
	stesso fornitore)
*/


select S.City 
from (SP join P using (PNum)) join S using (SNum)
group by S.City
having count(P.Color) > 1 and count(S.City) > 1