create database db_curso_da_minha_vida;

create table tb_cursos(
id bigint auto_increment,
nome varchar(255),
preco decimal (6,2),
alunos bigint,
datalan date,
categoria_id bigint,
primary key(id)

);

create table tb_categorias(
id bigint auto_increment,
area varchar(255),
professor varchar(255),
primary key(id)

);

insert into tb_categorias (area, professor) values ("TI", "Airton");
insert into tb_categorias (area, professor) values ("Física", "Wilson");
insert into tb_categorias (area, professor) values ("Linguas", "Debora");
insert into tb_categorias (area, professor) values ("Matemática", "Arcanjo");
insert into tb_categorias (area, professor) values ("Astronomia", "Sergio");


alter table tb_cursos add constraint fk_cursos_categorias
foreign key (categoria_id) references tb_categorias(id);

insert into tb_cursos (nome, preco, alunos, datalan, categoria_id) values("Banco de dados", 300.00, 50, "2023-05-22", 1);
insert into tb_cursos (nome, preco, alunos, datalan, categoria_id) values("As leis de Newton", 550.00, 30, "2023-05-22", 2);
insert into tb_cursos (nome, preco, alunos, datalan, categoria_id) values("Hablas comigo", 700.00, 90, "2023-05-22", 3);
insert into tb_cursos (nome, preco, alunos, datalan, categoria_id) values("Cálculo", 400.00, 22, "2023-05-22", 4);
insert into tb_cursos (nome, preco, alunos, datalan, categoria_id) values("Aprendendo Teoria da Relatividade", 900.00, 150, "2023-05-22", 5);
insert into tb_cursos (nome, preco, alunos, datalan, categoria_id) values("Python para Iniciantes", 490.99, 900, "2023-05-22", 1);
insert into tb_cursos (nome, preco, alunos, datalan, categoria_id) values("Java para iniciantes", 550.00, 1000, "2023-05-22", 1);
insert into tb_cursos (nome, preco, alunos, datalan, categoria_id) values("Talk with Me", 600.00, 550, "2023-05-22", 3);

select * from tb_cursos where preco > 500;

select * from tb_cursos where preco between 600 and 1000;

select * from tb_cursos where nome like "%J%";


select nome, preco, alunos, categoria_id from tb_cursos
inner join tb_categorias on tb_categorias.id = tb_cursos.categoria_id;

select nome, preco, alunos, categoria_id from tb_cursos
inner join tb_categorias on tb_categorias.id = tb_cursos.categoria_id where area in ("TI");