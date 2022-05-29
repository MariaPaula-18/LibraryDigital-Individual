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



