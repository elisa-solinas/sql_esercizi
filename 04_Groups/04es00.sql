--Caso 1: Estrarre il  numero di fornitori per città con status almeno uguale a 20
select City, count(SNum)
from S
where (status >= 20)
group by City;

--Caso 2: Elencare le città con almeno due fornitori
select City, count(SNum)
from S
group by City
having count(SNum) >= 2;