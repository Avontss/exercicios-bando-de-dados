create database db_exe02;

create table tb_commerce(
id bigint auto_increment,
produto varchar(255) not null,
fabricante varchar (255),
quantidade int,
custo decimal (6,2) not null,
venda decimal (6,2),
primary key(id)

);

insert into tb_commerce (produto, fabricante, quantidade, custo, venda) values("Whey 100% Maxx", "Max Titanium", 100, 100.00, 250.00);
insert into tb_commerce (produto, fabricante, quantidade, custo, venda) values("Whey 100% Integral", "Integral Médica", 50, 150.00, 280.00);
insert into tb_commerce (produto, fabricante, quantidade, custo, venda) values("Whey hidrolizado Max", "Max Titanium", 50, 300.00, 550.00);
insert into tb_commerce (produto, fabricante, quantidade, custo, venda) values("Whey hidrolizado Integral","Integral Médica", 50, 400.00, 600.00 );
insert into tb_commerce (produto, fabricante, quantidade, custo, venda) values("Creatina MAX", "Max Titanium", 200, 120.00, 200.00 );
insert into tb_commerce (produto, fabricante, quantidade, custo, venda) values("Creatina Integral", "Integral Médica", 200, 150.00, 250.00);
insert into tb_commerce (produto, fabricante, quantidade, custo, venda) values("Hyper Calórico", "Adaptogen", 85, 80.00, 150.75);
insert into tb_commerce (produto, fabricante, quantidade, custo, venda) values("BCAA", "Growth", 250, 75.95, 160.99);

select * from tb_commerce;

select * from tb_commerce  where venda > 500.00;

select * from tb_commerce  where venda < 500.00;