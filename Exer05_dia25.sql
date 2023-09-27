create database db_construindo_vidas;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco decimal(6,2),
quantidade bigint,
dataCompra date,
categoria_id bigint,
primary key(id)

);

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
marca varchar(255),
primary key(id)
);

alter table tb_produtos add constraint fk_produtos_categorias
foreign key (categoria_id) references tb_categorias(id);

insert into tb_categorias (tipo, marca) values ("Hidraulico", "Amanco");
insert into tb_categorias (tipo, marca) values ("Elétrico", "Amanco");
insert into tb_categorias (tipo, marca) values ("Hidraulico", "Coral");
insert into tb_categorias (tipo, marca) values ("Elétrico", "Coral");
insert into tb_categorias (tipo, marca) values ("Acabamento", "Porto-Belo");


insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Conexão de 50", 120.00, 100, "2023-08-21", 1);
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Interruptor", 70.00, 90, "2023-08-21", 2 );
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Conexão de 100", 130.00, 80, "2023-08-21", 3);
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Fio-Elétrico", 130.00, 70, "2023-08-21", 4 );
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Porcelanato", 250.00, 90, "2023-08-21",5);
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Disjuntor", 80, 55, "2023-08-21",2);
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Cano-PVC", 75.00, 90, "2023-08-21", 3);
insert into tb_produtos (nome, preco, quantidade, dataCompra, categoria_id) values("Interruptor", 15.00, 250, "2023-08-21", 4);

select * from tb_produtos where preco > 100;

select * from tb_produtos where preco between 70 and 150;

select * from tb_produtos where nome like "%C%";

select nome, preco, quantidade, categoria_id from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;

select nome, preco, quantidade, categoria_id from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id where tipo in ("Elétrico");