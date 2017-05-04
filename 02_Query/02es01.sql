/*
	Esercizio 2.1:
	Elencare il nome di tutte le parti rosse 
	con peso compreso tra 13 kg e 17 kg
*/

select PNum
from P
where 
	(Weight >= 13) 
	and (Weight <= 17) 
	and (Color = 'Red');