create database db_generation_game_online;

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
poderDef int,
poderAta int,
habilidade varchar (255),
primary key (id)

);


create table tb_classes(
id bigint auto_increment,
classe varchar (255),
primary key (id)

);


insert into tb_classes(classe) values ("Duelista");
insert into tb_classes(classe) values ("Controlador");
insert into tb_classes(classe) values ("Iniciador");
insert into tb_classes(classe) values ("Entry fragger");
insert into tb_classes(classe) values ("Clutchzero");

alter table tb_personagens add classe_id bigint;

alter table tb_personagens add constraint fk_personagens_classes
foreign key (classe_id) references tb_classes(id);

insert into tb_personagens(nome, poderDef, poderAta, habilidade, classe_id) values ("Jett", 1200, 2500, "Tapa Dash", 1);
insert into tb_personagens(nome, poderDef, poderAta, habilidade, classe_id) values ("Neon", 900, 2300, "Choque", 1);
insert into tb_personagens(nome, poderDef, poderAta, habilidade, classe_id) values ("Viper", 1900, 1500, "Veneno", 2);
insert into tb_personagens(nome, poderDef, poderAta, habilidade, classe_id) values ("Sky", 1050, 1400, "Bang", 3);
insert into tb_personagens(nome, poderDef, poderAta, habilidade, classe_id) values ("Reyna", 500, 2100, "Nenhuma", 4);
insert into tb_personagens(nome, poderDef, poderAta, habilidade, classe_id) values ("Omen", 2000, 1800, "Teletransporte", 5);
insert into tb_personagens(nome, poderDef, poderAta, habilidade, classe_id) values ("Brinstone", 1850, 1700, "3 Smokes", 2);
insert into tb_personagens(nome, poderDef, poderAta, habilidade, classe_id) values ("Gekko", 950, 1800, "Thrash", 3);
insert into tb_personagens(nome, poderDef, poderAta, habilidade, classe_id) values ("Carlos", 1200, 1600, "Cura", 2);
insert into tb_personagens(nome, poderDef, poderAta, habilidade, classe_id) values ("Cazim", 900, 2050, "Chute", 1);
select * from tb_personagens where poderAta >2000;

select * from tb_personagens where poderDef between 1000 and 2000;

select * from tb_personagens where nome like "c%";

select nome, poderDef, poderAta, habilidade from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.classe_id;

select nome, poderDef, poderAta, habilidade from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.classe_id where classe in ("Duelista");



