/*
	Esercizio 2.2:
	Elencare il nome di tutti i fornitori 
	di Atene (Athens) con Status inferiore a 20
*/

select SName
from S
where 
	(City = 'Athens') 
	and (Status < 20);