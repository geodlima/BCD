-- comentário
-- Criar banco de dados CLÍNICA
CREATE database clinica_turmaA;

-- Ativar o banco de dados
USE clinica_turmaA;

-- Criar a Tabela Sala
CREATE table Sala(
	numero_sala int not null,
    andar int not null,
    check(numero_sala>1 and numero_sala<50),
    check(andar < 12)
);

CREATE table medico (
	crm varchar(15) not null unique,
    nome varchar(40) not null,
    idade int ,
    especialidade char(20) not null default "Ortopedia",
    cpf char(11) not null, 
    data_admissão date not null
    check(idade<12)
);

CREATE table pacientes (
	RG varchar(9) not null unique,
    nome varchar(40) not null,
    data_de_nascimento date,
    cidade char(30) default "Itabuna",
    doenca varchar(40) not null,
    plano_de_saude varchar(40) not null default "SUS"
    
    );
    
    CREATE table Funcionarios (
		matricula varchar(15) unique not null,
		nome varchar(40) not null,
		data_de_nascimento date not null,
		data_admissao date not null,
		cargo varchar(40) not null default "Assistente Médico",
		salario float not null default "510.00"
    );
    
    CREATE table Consultas (
		codigo_consulta int unique not null,
        data_horario datetime
    )
