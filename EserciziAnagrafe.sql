/*Query 1*/

select Persona.Nome, Città.Regione 
from Persona join Città on Persona.CittàNascita = Città.Nome 
where Persona.Età >= 18

select Persona.Nome, Città.Regione
from Persona, Città
where Persona.CittàNascita = Città.Nome && Persona.Età >= 18


