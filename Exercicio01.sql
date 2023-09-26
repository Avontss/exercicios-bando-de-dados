create database db_exe01;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
admissao varchar(255) not null,
cargaH varchar(255),
salario decimal (6,2),
primary key (id)

);

insert into tb_funcionarios(nome, admissao, cargaH, salario) values ("Afonso", "12/12/12", "40h", 2000.00);
insert into tb_funcionarios(nome, admissao, cargaH, salario) values ("Irineu", "13/05/13", "36h", 1500.00);
insert into tb_funcionarios(nome, admissao, cargaH, salario) values ("Maria", "21/08/12", "40h", 4500.00);
insert into tb_funcionarios(nome, admissao, cargaH, salario) values ("Juliana", "31/03/15", "36h", 1200.00);
insert into tb_funcionarios(nome, admissao, cargaH, salario) values ("Mauro", "05/08/13", "36h", 1800.00);

select * from tb_funcionarios;

select * from tb_funcionarios where salario > 1999.00;

select * from tb_funcionarios where salario < 1999.00;