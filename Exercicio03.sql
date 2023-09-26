create database db_exe03;

create table tb_escola(
id bigint auto_increment,
nome varchar(255),
nascimento varchar(255),
anoEscolar varchar (255),
periodo varchar(255),
nota decimal (6,2),
primary key(id)
);

insert into tb_escola (nome, nascimento, anoEscolar, periodo, nota) values ("Eduardo", "22/06/2000", "1°EM", "Matutino", 9.0);
insert into tb_escola (nome, nascimento, anoEscolar, periodo, nota) values ("Wilkler", "28/09/1999", "1°EM", "Matutino", 8.5);
insert into tb_escola (nome, nascimento, anoEscolar, periodo, nota) values ("Otávio", "05/05/2000", "1°EM", "Vespertino", 10.0);
insert into tb_escola (nome, nascimento, anoEscolar, periodo, nota) values ("Matheus", "30/03/200", "1°EM", "Noturno", 5.0);
insert into tb_escola (nome, nascimento, anoEscolar, periodo, nota) values ("Vinicius", "12/12/1998", "1°EM", "Noturno", 3.0);
insert into tb_escola (nome, nascimento, anoEscolar, periodo, nota) values ("Thaina", "05/05/2000", "1°EM", "Matutino", 7.1);
insert into tb_escola (nome, nascimento, anoEscolar, periodo, nota) values ("Jorge", "21/08/2000", "1°EM", "Noturno", 8.0);
insert into tb_escola (nome, nascimento, anoEscolar, periodo, nota) values ("Debora", "26/02/2000", "1°EM", "Matutino", 10.0);

select * from tb_escola;

select * from tb_escola where nota > 7.00;

select * from tb_escola where nota < 7.00;