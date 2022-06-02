-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
Create database libraryDigital;
use libraryDigital;


Create table usuario (
idUsuario int primary key auto_increment,
nomeUsuario varchar (45),
dataNacs date,
email varchar (45),
senha varchar (45));

create table livro (
idLivro int primary key auto_increment,
nomeLivro varchar (45),
dataLancamento date,
nomeAutor varchar (45),
editora varchar  (45));

create table usuarioLivro (
fkUsuario int,
fkLivro int,
primary key (fkUsuario, fkLivro),
foreign key (fkUsuario) references usuario (idUsuario),
foreign key (fkLivro) references livro (idLivro),
qtdPaginas decimal, 
dataEntrada date );


/* para sql server - remoto - produção */
CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);

CREATE TABLE aviso (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
);

create table aquario (
/* em nossa regra de negócio, um aquario tem apenas um sensor */
	id INT PRIMARY KEY IDENTITY(1,1),
	descricao VARCHAR(300)
);

/* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

CREATE TABLE medida (
	id INT PRIMARY KEY IDENTITY(1,1),
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT FOREIGN KEY REFERENCES aquario(id)
);
