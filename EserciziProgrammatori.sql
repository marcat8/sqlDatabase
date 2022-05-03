/*query 1*/
select programmatore.Codice
from autore  join programma on programma.id = Autore.id
    join programmatore on programmatore.codice = autore.codice
where programma.anno >= 2000 && programma.linguaggio = "Java";

/*query 2*/
select programmatore.Nome, programmatore.Categoria
from autore  join programma on programma.id = Autore.id
    join programmatore on programmatore.codice = autore.codice
where programma.linguaggio != "Python"
order by programmatore.Nome

/*query 3*/
select programmatore.codice, programma.anno
from autore  join programma on programma.id = Autore.id
    join programmatore on programmatore.codice = autore.codice
where programma.linguaggio != "Java" && programmatore.categoria = 10