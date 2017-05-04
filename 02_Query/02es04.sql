/*
	Esercizio 2.4:
	Elencare, in ordine alfabetico crescente, 
	il nome dei fornitori che hanno evaso almeno 
	una volta ordini di almeno 300 bulloni (bolt) 
	o di almeno 300 dadi (nut)
*/

select distinct SName
from S, P, SP
where 
	(S.SNum = SP.SNum) 
	and (P.PNum = SP.PNum)
	and (PName = 'Bolt' or PName = 'Nut')
	and SP.Qty >= 300
order by SName;
     
		