create DATABASE dbLivraria;
use dbLivraria;
create table livro(
livroID int primary key,
titulo varchar(250),
autor varchar(250),
ano_publicacao int
);
create table usuario(
usuarioID int primary key,
nome varchar (90),
email varchar (50)
);
create table emprestimo(
emprestimoID int primary key,
data_entrega date,
data_devolucao date,
livroID int,
usuarioID int,
foreign key  (livroID) references livro (livroID),
foreign key (usuarioID) references usuario (usuarioID)
);
insert into livro(livroID, titulo, autor, ano_publicacao)values
(1,'Dom Casmurro','Machado de Assis', 1902),
(2,'1984','George Orwell',1949),
(3,'O Senhor dos Anéis','J.R.R. Tolkien',1954),
(4,'Harry Potter e a Pedra Filosofal','J. K. Rowling',1997),
(5,'Harry Potter e a Câmara Secreta','J. K. Rowling',1998),
(6,'Harry Potter e o Prisioneiro de Azkaban','J. K. Rowling',1999),
(7,'Harry Potter e o Cálice de Fogo','J. K. Rowling',2000),
(8,'Harry Potter e a Ordem da Fênix','J. K. Rowling',2003),
(9,'Harry Potter e as Relíquias da Morte','J. K. Rowling',2007),
(10,'Harry Potter e a Criança Amaldiçoada','J. K. Rowling',2016);
insert into usuario(usuarioID, nome, email)values
(100,'João Silva','joao.silva@email.com'),
(101,'Mario Oliveira','maria.oliveira@gmail.com'),
(102,'Carlos Pereira','carlos.pereira@gmail.com'),
(103,'Ana Souza','ana.souza@gmail.com'),
(104,'Pedro Santos','pedro.santos@gmail.com'),
(105,'Lucas Almeida','lucas.almeida@gmail.com'),
(106,'Fernanda Costa','fernanda.costa@gmail.com'),
(107,'Bruno Rodrigues','bruno.rodrigues@gmail.com'),
(108,'Juliana Martins','juliana.martins@gmail.com'),
(109,'Rafael Gomes','rafael.gomes@gmail.com'),
(110,'Roberto Pera','senhor.incrivel@gmail.com');
insert into emprestimo(emprestimoID, data_entrega, data_devolucao, livroID, usuarioID)values
(1000,'2023-06-01','2023-06-15',1,100),
(1001,'2023-06-10','2023-06-24',2,101),
(1002,'2023-06-20',NULL,3,102),
(1003,'2023-07-1','2023-07-5',4,103),
(1004,'2023-07-10','2023-07-10',5,104),
(1005,'2023-07-20','2023-07-25',6,105);