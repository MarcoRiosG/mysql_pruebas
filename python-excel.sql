#create database game_collection;

use game_collection;

create table if not exists juegos(
id int not null auto_increment primary key,
nombre varchar(50) not null,
compania varchar(20),
genero varchar(30),
serie varchar(20)
);

create table if not exists personaje_juego(
id_juego int not null,
id_personaje int not null
);

create table if not exists plataforma_juego(
id_juego int not null,
id_plataforma int not null
);

create table if not exists personaje(
id int not null auto_increment primary key,
nombre varchar(30) not null,
alineacion set('bueno','malo','neutral')
);

create table if not exists compania(
id int not null auto_increment primary key,
nombre varchar(30),
pais_origen varchar(20),
fundacion_anio year
);

create table if not exists plataforma(
id int not null auto_increment primary key,
nombre varchar(20),
fabricante varchar(20)
);

insert into juegos (nombre, compania, genero, serie) values ('Super Smash Bros. Ultimate', 'Nintendo', 'peleas', 'Super Smash Bros.');
insert into juegos (nombre, compania, genero, serie) values ('Final Fantasy VII', 'Square Enix', 'rpg', 'Final Fantasy');
insert into juegos (nombre, compania, genero, serie) values ('Super Mario Bros.', 'Nintendo', 'plataformas 2-d', 'Super Mario Bros.');
insert into juegos (nombre, compania, genero, serie) values ('Grand Theft Auto San Andreas', 'Rockstar', 'crimen', 'Grand Theft Auto');
insert into juegos (nombre, compania, genero, serie) values ('Doom 2016', 'Bethesda', 'shooter', 'Doom');
insert into juegos (nombre, compania, genero, serie) values ("New Yoshi's Island", 'Nintendo', 'plataformas 2-d', "Yoshi's Island");
insert into juegos (nombre, compania, genero, serie) values ('Call of Duty Modern Warfare (2019)', 'Infinity Ward', 'shooter', 'Call of Duty');
insert into juegos (nombre, compania, genero, serie) values ('Pokemon Edicion Roja', 'Game Freak', 'rpg', 'Pokemon');
insert into juegos (nombre, compania, genero, serie) values ('Super Mario Bros. U', 'Nintendo', 'plataformas 2-d', 'Super Mario Bros');
insert into juegos (nombre, compania, genero, serie) values ('Resident Evil 4', 'Capcom', 'accion', 'Resident evil');

insert into personaje_juego values (1,1), (1,2), (1,3), (1,4), (1,5), (1,6), (1,7), (1,8), (1,9), (2,1),
(2,2), (2,10), (2,11), (2,12), (3,3), (3,4), (3,13), (3,14), (3,15), (4,16), (4,17), (5,18), (6,9), (6,19),
(7,20), (8,8), (8,21), (9,3), (9,4), (9,13), (9,14), (9,15), (10,22), (10,23), (10,24);

insert into plataforma_juego values (1,1), (2,2), (2,3), (3,4), (4,5), (4,6), (4,7), (5,2),
(5,11), (6,12), (7,4), (7,7), (7,11), (8,8), (9,9), (10,5), (10,10);

INSERT INTO personaje (nombre, alineacion) VALUES ('Cloud', 'bueno'), 
('Sephiroth', 'malo'), ('Mario', 'bueno'), ('Bowser', 'malo'), ('Pac-Man', 'bueno'),
('Marth', 'bueno'), ('Fox McCloud', 'bueno'), ('Pikachu', 'neutral'),
('Yoshi', 'bueno'), ('Aerith', 'bueno'), ('Tifa', 'bueno'), ('Barret', 'bueno'),
('Peach', 'bueno'), ('Toad', 'bueno'), ('Luigi', 'bueno'), ('Carl Jhonson', 'bueno'),
('Big Smoke', 'malo'), ('DoomSlayer', 'bueno'), ('Baby Mario', 'bueno'),
('Cpt. Price', 'bueno'), ('Profesor Oak', 'bueno'), ('Leon S. Kennedy', 'bueno'),
('Ada Wong', 'neutral'), ('Ashley Graham', 'bueno');

INSERT INTO compania (nombre, pais_origen, fundacion_anio) VALUES ('Nintendo', 'Japon', 1977),
('Square Enix', 'Japon', 1975), ('Rockstar', 'Estados Unidos', 1998), ('Bethesda', 'Estados Unidos', 1986),
('Infinity Ward', 'Estados Unidos', 2002), ('Game Freak', 'Japon', 1989), ('Capcom', 'Japon', 1979);

INSERT INTO plataforma (nombre, fabricante) VALUES ('Nintendo Switch', 'Nintendo'),
('Playstation 4', 'Sony'), ('Playstation 5', 'Sony'), ('NES', 'Nintendo'),
('Playstation 2', 'Sony'), ('Xbox', 'Microsoft'), ('PC', 'Varios'), ('Game Boy', 'Nintendo'),
('Wii U', 'Nintendo'), ('Gamecube', 'Nintendo'), ('Xbox One', 'Microsoft'), ('Nintendo 3DS', 'Nintendo');
