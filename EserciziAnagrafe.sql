/*Query 1*/

select Persona.Nome, Città.Regione 
from Persona join Città on Persona.CittàNascita = Città.Nome 
where Persona.Età >= 18

select Persona.Nome, Città.Regione
from Persona, Città
where Persona.CittàNascita = Città.Nome && Persona.Età >= 18

/*Query 2*/

select PG.Nome, PF.Nome
from Genia join Persona PG on Genia.Genitore=PG.Nome
  join Persona PF on Genia.Figlio=PF.Nome
where PG.Città = PF.Città

