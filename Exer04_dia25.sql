create database db_cidade_das_carnes;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco decimal(6,2),
quantidade int,
dataCompra date,
primary key (id)
);

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
marca varchar(255),
primary key(id)
);

insert into tb_categorias (tipo, marca) values ("Bovino", "Perdigão");
insert into tb_categorias (tipo, marca) values ("Suíno", "Perdigão");
insert into tb_categorias (tipo, marca) values ("Bovino", "Sadía");
insert into tb_categorias (tipo, marca) values ("Suíno", "Sadía");
insert into tb_categorias (tipo, marca) values ("Bovino", "Seara");

alter table tb_produtos add  categoria_id bigint;

alter table tb_produtos add constraint fk_produtos_categorias
foreign key (categoria_id) references tb_categorias(id);

insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Contra-filé", 70.00, 100, "2023-08-02", 1);
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Linguiça-toscana", 20.00, 180, "2023-05-22", 2);
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Picanha", 100.00, 80, "2023-08-21", 3);
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Pichanha Suína", 20, 80, "2023-08-21", 4);
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Patinho", 60, 100, "2023-08-22", 5);
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Picanha", 120.00, 50, "2023-08-21", 1);
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Linguiça-toscana", 15.00, 180, "2023-05-22", 4);
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Costela", 60.00, 50, "2023-09-01", 1);


select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 50 and 150;

select * from tb_produtos where nome like "%C%";

select nome, preco, quantidade, categoria_id from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;

select nome, preco, quantidade, categoria_id from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id where tipo in ("Bovino");