/*
	Esercizio 3.2
	Elencare i nomi di tutte le parti 
	di colore verde e le città dei 
	loro eventuali fornitori
*/

select PName
from P right join (SP join S using (SNum)) using (PNum) 
where
	P.Color = 'Green'
