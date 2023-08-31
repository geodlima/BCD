Create database Meu_segundo_dd;
USE meu_segundo_dd;

-- Ecercício 1
-- Escreva uma cláusula SQL para criar uma tabela simples 
-- chamada Países, incluindo as colunas country_id, country_name e region_id.

Create table países (
	county_id char(4) not null primary key,
    country_name varchar(40) not null,
    region_id  char(5)
);


-- Exercício 2
-- Escreva uma cláusula SQL para criar uma tabela simples 
-- de países incluindo as colunas country_id, country_name e region_id que 
-- já existe.


Create table if not exists países (
	county_id char(4) not null primary key,
    country_name varchar(40) not null,
    region_id  char(5)
);


-- Execício 3
-- Escreva uma instrução SQL para criar a estrutura de uma 
-- tabela dup_countries semelhantes a países.

-- Criar uma tabela indentica a países
-- Caso não exista a tabela dup_países
create table if not exists dup_países like países; 


-- Exercício 6 
-- Escreva uma instrução SQL para criar uma tabela chamada 
-- jobs incluindo as colunas job_id, job_title, min_salary, max_salary e 
-- verifique se o valor max_salary excede o limite superior de 25.000.

Create table jobs(
	job_id varchar(10) not null,
    job_title varchar(40) not null,
    min_sallary decimal(6,2),
    max_salary decimal(6,2),
    check(max_salary <= 2500)

);


-- Exercícios 7
-- Escreva uma instrução SQL para criar uma tabela chamada 
-- países incluindo as colunas country_id, country_name e region_id e 
-- certifique-se de que nenhum país, exceto Itália, Índia e China, será inserido 
-- na tabela

create table países_2(
	países_id varchar(4) not null primary key,
    países_name varchar(40) not null,
    region_id char(5),
    check(países_name in ( "itália", "índia", "china"))

);

-- Exercício 8
-- Escreva uma instrução SQL para criar uma tabela chamada 
-- job_histr incluindo as colunas Employee_id, start_date, end_date, job_id e 
-- Department_id e certifique-se de que o valor da coluna end_date será inserido 
-- no momento da inserção no formato como '--/-- /----'

DROP TABLE job_history;
create table job_history(
	employee_id char(3) not null,
    start_date date not null,
    end_date date not null,
    job_id varchar(10),
    departament_id varchar(5) not null,
    check( end_date like '--/--/----')

);

-- Exercício 9
-- Escreva uma instrução SQL para criar uma tabela chamada 
-- países incluindo as colunas country_id, country_name e region_id e 
-- certifique-se de que nenhum dado duplicado na coluna country_id será 
-- permitido no momento da inserção.

create table países_3(
	países_id varchar(2) not null unique,
    países_name varchar(40) not null,
    region_id char(5)
);



