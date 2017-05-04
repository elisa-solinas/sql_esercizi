/*	
	Esercizio 3.3
	Elencare tutte le coppie di	parti disponibili nella stessa 
	città ma di colore diverso (mostrare codice delle parti 
	e nome della città)
*/

select PNum, P.City
from P P1 join P P2 
	on (P1.City = P2.City and P1.Color <> P2.Color)	
