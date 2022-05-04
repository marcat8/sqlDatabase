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

/*query 4*/
select distinct p1.codice as coautore1, p2.codice as coautore2
from autore  join programma on programma.id = Autore.id
    join programmatore p1 on p1.codice = autore.codice
    join programmatore p2 on p2.codice = autore.codice
where programma.linguaggio = "Python"

/*query 5*/
select programmatore.codice, programmatore.nome
from autore  join programma on programma.id = Autore.id
    join programmatore on programmatore.codice = autore.codice
where programma.linguaggio = "Java"

select p.nome, p.codice
from Programmatore p join Autore a on p.codice = a.codice
    join Programma pr on pr.id = a.id
where pr.linguaggio = "Java" 
group by pr.linguaggio



