create database db_pizzarai_legal;

create table tb_pizza(
id bigint auto_increment,
nome varchar(255),
preco decimal (4,2),
tamanho varchar(255),
massa varchar(255),
primary key(id)
);

create table tb_categoria(
id bigint auto_increment,
categoria varchar (255),
fermentacao varchar(255),
primary key(id)

);

insert into tb_categoria(categoria, fermentacao) values ("Pizza doce", "Fermentação natural");
insert into tb_categoria(categoria, fermentacao) values ("Pizza doce", "Fermentação química");
insert into tb_categoria(categoria, fermentacao) values ("Pizza salgada", "Fermentação natural");
insert into tb_categoria(categoria, fermentacao) values ("Pizza salgada", "Fermentação química");
insert into tb_categoria(categoria, fermentacao) values ("Pizza Agridoce", "Fermentação natural");
insert into tb_categoria(categoria, fermentacao) values ("Pizza Agridoce", "Fermentação química");

alter table tb_pizza add categoria_id bigint;

alter table tb_pizza add constraint fk_pizza_categoria
foreign key (categoria_id) references tb_categoria(id);

insert into tb_pizza(nome, preco, tamanho, massa, categoria_id) values("Calabresa", 43.99,"Media", "Fina", 4 );
insert into tb_pizza(nome, preco, tamanho, massa, categoria_id) values("Romeu e Julieta", 55.00, "Media", "Fina", 2);
insert into tb_pizza(nome, preco, tamanho, massa, categoria_id) values("Siciliana", 70.00, "Grande", "Pan", 3);
insert into tb_pizza(nome, preco, tamanho, massa, categoria_id) values("Brigadeiro", 45.50, "Brotinho", "Pan", 1);
insert into tb_pizza(nome, preco, tamanho, massa, categoria_id) values("Lombo com mel", 80.00, "Grande", "Pan", 5);
insert into tb_pizza(nome, preco, tamanho, massa, categoria_id) values("Havaiana", 60.00, "Média", "Fina", 6);
insert into tb_pizza(nome, preco, tamanho, massa, categoria_id) values("Toscana", 43.00, "Média", "Fina", 4);
insert into tb_pizza(nome, preco, tamanho, massa, categoria_id) values("Quatro Queijos", 68.00, "Grande","Pan", 3);

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 50.00 and 100.00;

select * from tb_pizza where nome like "%m%";

select nome, preco, tamanho from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select nome, preco, tamanho from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where categoria in ("Pizza doce")