--1.
select * from dep;

--2.
select nome, funcao, sal, ndep from emp;

--3.
select nome, ndep, sal from emp
where sal <= 300000 and sal >= 150000;

--4.
select * from dep
order by ndep desc;

--5.
select distinct funcao from emp;

--6.
select nome, funcao, premios from emp
where premios is not null;

--7.
select * from emp
where ndep = 10 or ndep = 30;

--8.
select nome from emp
where funcao = 'Analista' and ndep = 20;

--9.
select nome, funcao from emp
where nome like '%v%' or nome like '%u%';

--10.
select nome, funcao from emp
where nome like 'A%' and nome like '%us%' or nome like 'R%' and nome like '%ei%';

--11.
select nome, funcao, sal * 12 + coalesce(premios,0) "Remuneração Anual" from emp;

--12.
select nome, (sal * 12 + coalesce(premios,0)) * (0.1) "10% Sal. Anual", premios from emp
where premios is not null and funcao = 'Vendedor'
order by "10% Sal. Anual" asc, nome;