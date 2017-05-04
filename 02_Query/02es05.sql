/*
	Esercizio 2.5
	Elencare, in ordine di status decrescente, 
	i fornitori che hanno fornito parti con 
	peso fuori dall’intervallo [14 kg, 17 kg]. 
	Mostrare il nome del fornitore e il suo status.
*/

select distinct SName, status
from S, P, SP
where
	(S.SNum = SP.SNum)
	and (P.PNum = SP.PNum)
	and (P.Weight < 14 or P.Weight > 17)
order by status desc;