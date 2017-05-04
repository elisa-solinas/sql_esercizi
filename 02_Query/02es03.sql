/*
	Esercizio 2.3:
	Quali sono le parti disponibili nella 
	stessa città di un fornitore (non 
	necessariamente fornite da quel 
	fornitore)? 
	Elencare nome, colore e peso delle 
	parti e nome del fornitore
*/

select distinct PName, Color, Weight, SName
from S, P
where 
	P.City = S.City;