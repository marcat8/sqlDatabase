Use libreria;

/*1. Romanzi pubblicati nel 2009*/
select *
from Romanzo
where AnnoPubblicazione = 1981 && 2009


/*2. Romanzi pubblicati a partire dal 1990*/
select *
from Romanzo
where AnnoPubblicazione >= 1990

/*3. Romanzi del ventesimo secolo*/
select *
from Romanzo
where AnnoPubblicazione >= 1900 and AnnoPubblicazione <= 1999

/*4. Autore (cioè Nome e Cognome) e Titolo di tutti i romanzi*/

select autore.Nome, autore.Cognome, romanzo.Titolo
from romanzo, autore
where autore = autore.id

/*5. Autore (cioè Nome e Cognome) e Titolo di tutti i romanzi, ordinati per 
cognome e nome dell’autore*/

select autore.Nome, autore.Cognome, romanzo.Titolo
from romanzo, autore
where autore = autore.id
order by autore.Cognome, autore.Nome

/*6. Autore (cioè Nome e Cognome) e Titolo dei romanzi di autori
russi, ordinati per cognome e nome dell’autore*/

select autore.Nome, autore.Cognome, romanzo.Titolo
from romanzo, autore
where autore = autore.id && Nazionalità = "Russo"
order by autore.Cognome, autore.Nome

/*7. Titolo dei romanzi di autori nati nel ventesimo secolo,
ordinati per cognome e nome dell’autore e – a parità di
autore – di data di pubblicazione*/

select romanzo.Titolo
from Romanzo, Autore
where Autore = Autore.id && DataNascita >= 1901 &&
DataNascita <= 2000
order by autore.Cognome, autore.Nome, romanzo.AnnoPubblicazione

/*8*/
select romanzo.Titolo, romanzo.AnnoPubblicazione
from Romanzo, Autore
where romanzo.Autore = Autore.id && Autore.DataMorte is null

/*9. Romanzi di scrittori viventi, oppure morti ma non a Torino*/
select *
from Romanzo, Autore
where Autore = autore.id && (DataMorte is null ||
LuogoMorte != "Torino")

/*10*/
select romanzo.Titolo, romanzo.AnnoPubblicazione
from Romanzo, Autore
where Autore = autore.id && LuogoNascita = "Roma"

/*11*/
select *
from Romanzo
where Titolo like "Tokyo%"

/*12*/
select *
from Romanzo
where Titolo like "%Sposi%"

/*13*/
select *
from Romanzo
where Titolo like "%i_"

/*14*/
select *
from Romanzo
where Titolo like "%blues"

/*15*/
select *
from Romanzo
where AnnoPubblicazione >= 1901 && AnnoPubblicazione <= 2000 && Titolo like "%Zeno%"

/*16*/
select *
from Romanzo
where AnnoPubblicazione <1900 && (Titolo like "%Sposi%" || Titolo like "%sposi%")

/*17*/
select Romanzo.*
from Romanzo, Autore
where Autore = autore.id && autore.Nome = "Alessandro" && autore.Cognome = "Manzoni"

/*18*/
select distinct *
from Romanzo, Autore
where romanzo.Autore = autore.id && autore.Nome = "Don" && autore.Cognome = "DeLillo"

/*19*/
select Romanzo.*
from Romanzo, Personaggio, PersonaggioRomanzo
where personaggio.Nome = "Benjamin" && personaggio.Cognome = "Malaussène" personaggio.id = PersonaggioRomanzo.Personaggio && romanzo.id = PersonaggioRomanzo.Romanzo
