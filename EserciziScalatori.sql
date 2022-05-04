/*query 1*/
select scalata.scalatore as A, nazione.continente as B
from scalata join nazione on scalata.nazione = nazione.nome

/*query 2*/
select distinct scalata.scalatore, nazione.continente
from scalata join nazione on scalata.nazione = nazione.nome
    join scalatore on scalata.scalatore = scalatore.cf
where scalatore.annoNascita < 1980
order by scalatore.cf, nazione.continente

/*query 3*/
select distinct nazione.nome, nazione.continente
from scalata join nazione on scalata.nazione = nazione.nome
    join scalatore on scalata.scalatore = scalatore.cf
where (scalata.anno - scalatore.annoNascita) <=20

