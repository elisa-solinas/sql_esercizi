/*
	Esercizio 3.4
	Elencare tutte le coppie di parti fornite 
	dallo stesso fornitore (mostrare nome 
	del fornitore, codice e nome delle parti) 
	(suggerimento: scrivere prima la query che 
	mostra il codice del fornitore e i codici 
	delle coppie di parti dello stesso fornitore)
*/

select distinct SName, T1.PNum, P1.PName, T2.PNum, P2.PName
from (SP T1 join SP T2 using (SNum))
      join P P1 on (P1.PNum = T1.PNum)
      join P P2 on (P2.PNum = T2.PNum)
      join S S2 on (T1.SNum = S2.SNum)
where 
	T1.PNum < T2.PNum
    
order by SName