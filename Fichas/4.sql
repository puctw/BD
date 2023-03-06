--1.
select upper(emp.nome) "Nome", lower(emp.funcao) "Funcao", initcap(dep.nome) "Departamento"
from dep, emp
where emp.ndep = dep.ndep and emp.funcao = 'Vendedor' 
order by emp.nome asc;

--2.
select count(nome) "Total de empregados" from emp;

--3.
select count(*) "Empregados sem premio" from emp
where premios is null;

--4.
select count(nome) "Total de empregados", round(avg(sal), 2) "Salário médio mensal", sum(sal) * 12 + sum(premios) "Renumeração total anual"
from emp;

--5.
select nome "NOME", funcao "FUNCAO", sal "SAL", round(sal * 1.1355, 1) "Salário com aumento" from emp
where funcao = 'Continuo';

--6.
select nome "NOME", funcao "FUNCAO", sal "SAL", round(sal * 1.1355, 0) "Salário com aumento" from emp
where funcao = 'Continuo';

--7.
select min(sal) "Salário mínimo", max(sal) "Salário máximo", round(avg(sal), 2) "Salário médio" from emp;

--8.
select ndep "Departamento", max(sal) - min(sal) "Diferença" from emp
group by ndep
order by ndep asc;

--9.
select funcao "FUNCAO", count(funcao)"Quantidade" from emp
group by funcao
order by funcao asc;

--10.
select funcao "FUNCAO", count(funcao)"Quantidade" from emp
where funcao like '%o' or funcao like 'Analista'
group by funcao
order by funcao asc;

--11.
select encar "Encarregado", min(sal) "Salário Mínimo" from emp
where encar is not null
group by encar having min(sal) > 200000
order by min(sal) asc;

--12.
select funcao "FUNCAO", ceil(avg(sal)) "Salário médio" from emp
group by funcao having count(nome) > 1
order by "Salário médio" asc;

--13.
select ndep "NDEP", funcao "FUNCAO", ceil(max(sal)) "Salário máximo", ceil(min(sal)) "Salário mínimo", ceil(avg(sal)) "Salário médio", count(nome) "Número de empregados" from emp
where nome != 'Jorge Sampaio'
group by ndep, funcao having ceil(max(sal)) >= 200000
order by "NDEP" asc, "Salário máximo" asc;