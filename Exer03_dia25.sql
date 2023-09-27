create database db_farmacia_bem_estar;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255)not null,
valor decimal(4,2)not null,
quantidade int,
dataCompra date,
primary key(id)
);

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
fabricante varchar(255),
primary key(id)
);

insert into tb_categorias(tipo, fabricante)values("Antibiótico", "Medley");
insert into tb_categorias(tipo, fabricante)values("Anti-Inflamatório", "Meddley");
insert into tb_categorias(tipo, fabricante)values("Anti-Coagulante", "Bayern");
insert into tb_categorias(tipo, fabricante)values("Anti-térmico", "Bayern");
insert into tb_categorias(tipo, fabricante)values("Analgésico", "Euro-Farma");
insert into tb_categorias(tipo)values("Cosmédito" );

alter table tb_produtos add categoria_id bigint;

alter table tb_produtos add constraint fk_produtos_categorias
foreign key (categoria_id) references tb_categorias(id);

insert into tb_produtos (nome, valor, quantidade, dataCompra, categoria_id) values ("Cefalixina", 20.00, 200, "2023-08-21", 1);
insert into tb_produtos (nome, valor, quantidade, dataCompra, categoria_id) values ("Clexane", 99.00, 100, "2023-05-22", 3);
insert into tb_produtos (nome, valor, quantidade, dataCompra, categoria_id) values ("Cetoprofeno", 10.00, 250, "2023-04-15", 2);
insert into tb_produtos (nome, valor, quantidade, dataCompra, categoria_id) values ("Dipirona", 15.00, 150, "2022-12-25", 4 );
insert into tb_produtos (nome, valor, quantidade, dataCompra, categoria_id) values ("Paracetamol", 7.90, 200, "2023-08-05", 5);
insert into tb_produtos (nome, valor, quantidade, dataCompra, categoria_id) values ("Sabonete facial", 80.00, 50,"2023-04-15", 6 );
insert into tb_produtos (nome, valor, quantidade, dataCompra, categoria_id) values ("Amoxicilina", 15.00, 132,"2023-08-21", 1);
insert into tb_produtos (nome, valor, quantidade, dataCompra, categoria_id) values ("Nimesulida", 9.99, 80, "2022-12-25", 2);

select * from tb_produtos where valor > 50.00;

select * from tb_produtos where valor between 5.00 and 60.00;

select * from tb_produtos where nome like "%C%";

select nome, valor, quantidade, categoria_id from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;

select nome, valor, quantidade, categoria_id from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id where tipo in ("Antibiótico");