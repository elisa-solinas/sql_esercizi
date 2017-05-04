/*
	Estrarre la quantità totale di parti rosse 
	fornite da ciascun fornitore (mostrare nome 
	del fornitore e quantità totale di parti)
*/

select sum(Qty), S.SName
from S join SP using (SNum) join P using (PNum)
where P.Color = 'Red'
group by SNum;