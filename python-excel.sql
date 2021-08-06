#create database game_collection;

use game_collection;

create table if not exists juegos(
id int not null auto_increment primary key,
nombre varchar(50) not null,
compania varchar(20),
genero varchar(30),
serie varchar(20),
plataforma varchar(30),
personajes text
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

insert into juegos (nombre, compania, genero, serie, plataforma, personajes) values ('Super Smash Bros. Ultimate', 'Nintendo', 'peleas', 'Super Smash Bros.', 'Nintendo Switch', 'Cloud, Sephiroth, Mario, Bowser, Pac-Man, Marth, Fox McCloud, Pikachu, Yoshi');
insert into juegos (nombre, compania, genero, serie, plataforma, personajes) values ('Final Fantasy VII', 'Square Enix', 'rpg', 'Final Fantasy', 'Playstattio 4, Playstation 5', 'Cloud, Sephiroth, Aerith, Tifa, Barret');
insert into juegos (nombre, compania, genero, serie, plataforma, personajes) values ('Super Mario Bros.', 'Nintendo', 'plataformas 2-d', 'Super Mario Bros.', 'NES', 'Mario, Peach, Toad, Luigi');
insert into juegos (nombre, compania, genero, serie, plataforma, personajes) values ('Grand Theft Auto San Andreas', 'Rockstar', 'mundo abierto, crimen', 'Grand Theft Auto','Playstation 2, Xbox, PC', 'Carl Jhonson, Big Smoke');
insert into juegos (nombre, compania, genero, serie, plataforma, personajes) values ('Doom 2016', 'Bethesda', 'shooter', 'Doom', 'Xbox One, Playstation 4', 'DoomSlayer');
insert into juegos (nombre, compania, genero, serie, plataforma, personajes) values ("New Yoshi's Island", 'Nintendo', 'plataformas 2-d', "Yoshi's Island", 'Nintendo 3DS', 'Yoshi, Baby Mario');
insert into juegos (nombre, compania, genero, serie, plataforma, personajes) values ('Call of Duty Modern Warfare (2019)', 'Infinity Ward', 'shooter', 'Call of Duty', 'Xbox One, Playstation 4, PC', 'Cpt. Price');
insert into juegos (nombre, compania, genero, serie, plataforma, personajes) values ('Pokemon Edicion Roja', 'Game Freak', 'rpg', 'Pokemon', 'Game Boy', 'Profesor Oak, Pikachu');
insert into juegos (nombre, compania, genero, serie, plataforma, personajes) values ('Super Mario Bros. U', 'Nintendo', 'plataformas 2-d', 'Super Mario Bros', 'Wii U', 'Mario, Peach, Toad, Luigi');
insert into juegos (nombre, compania, genero, serie, plataforma, personajes) values ('Resident Evil 4', 'Capcom', 'accion, horror', 'Resident evil', 'Playstation 2, GameCube', 'Leon S. Kennedy, Ada Wong, Ashley Graham');

INSERT INTO personaje (nombre, alineacion) VALUES ('Cloud', 'bueno'), 
('Sephiroth', 'malo'), ('Mario', 'bueno'), ('Bowser', 'malo'), ('Pac-Man', 'bueno'),
('Matrh', 'bueno'), ('Fox McCloud', 'bueno'), ('Pikachu', 'neutral'),
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
('Wii U', 'Nintendo'), ('Gamecube', 'Nintendo');

