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

/*query 4*/
select nazione.nome, count(scalata.nazione) as numero
from scalata join nazione on scalata.nazione = nazione.nome
    join scalatore on scalata.scalatore = scalatore.cf
where scalatore.nazioneNascita = scalata.nazione
group by nazione.nome

/*query 5*/

/*query 6*/
select CF, nazioneNascita, continente, nazione
from scalatore left join scalata on CF = scalatore
    join Nazione on nome = nazioneNascita
where continente != "America"

/*query 7*/
select continente, nazione, anno, count(*)
from nazione join scalata on nazione.nome = scalata.nazione
group by scalata,nazione, scalata.anno
having count(*) > 1
order by nazione.continente, scalata.anno

