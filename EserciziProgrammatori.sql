/*query 1*/
select programmatore.Codice
from autore  join programma on programma.id = Autore.id
    join programmatore on programmatore.codice = autore.codice
where programma.anno >= 2000 && programma.linguaggio = "Java";