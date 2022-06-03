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
editora varchar  (45)) auto_increment = 100;

create table usuarioLivro (
fkUsuario int,
fkLivro int,
primary key (fkUsuario, fkLivro),
foreign key (fkUsuario) references usuario (idUsuario),
foreign key (fkLivro) references livro (idLivro),
qtdPaginas int, 
dataEntrada date );

select * from usuarioLivro;

insert into livro values 
(null, 'corte', '2003-01-02', 'maria','galeria');

insert into usuario values 
(null, 'Paulo', '2009-03-04' ,' paula@sptech.com' , '12345');

-- insert into usuarioLivro values 
-- (1, 100, 

drop database libraryDigital ;


