Create database libraryDigital;
use libraryDigital;


Create table usuario (
idUsuario int primary key auto_increment,
nomeUsuario varchar (45),
dataNacs date,
email varchar (45),
senha varchar (45),
fkPremium int,
foreign key (fkPremium) references usuario (idUsuario) );

create table livro (
idLivro int primary key auto_increment,
nomeLivro varchar (45),
dataLancamento date,
nomeAutor varchar (45),
editora varchar  (45),
fkUsuario int,
foreign key (fkUsuario) references  usuario (idUsuario));



