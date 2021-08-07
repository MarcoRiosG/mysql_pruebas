use game_collection;

SELECT nombre as juegos_japon FROM juegos WHERE compania IN (
	SELECT nombre FROM compania WHERE pais_origen = "Japon"
);

SELECT nombre as malos FROM personaje WHERE alineacion = "malo" ORDER BY nombre ASC;


/*SELECT nombre FROM personaje WHERE (
	SELECT personajes FROM juegos WHERE nombre = "Super Smash Bros. Ultimate"
) NOT LIKE CONCAT("%",nombre,"%");*/

SELECT nombre as personajes_no_smash FROM personaje WHERE id not in (
	SELECT id_personaje FROM personaje_juego WHERE id_juego = (
		SELECT id FROM juegos WHERE nombre = "Super Smash Bros. Ultimate"
	)
);

SELECT nombre as juegos_personajes_smash FROM juegos WHERE id IN (
	SELECT DISTINCT id_juego FROM personaje_juego WHERE id_personaje IN (
		SELECT id_personaje FROM personaje_juego WHERE id_juego = (
			SELECT id FROM juegos WHERE nombre = "Super Smash Bros. Ultimate"
		)
	)
) ORDER BY id ASC;

SELECT COUNT(id_juego) as juegos_consola, id_plataforma FROM plataforma_juego WHERE id_plataforma IN (
	SELECT id FROM plataforma WHERE fabricante = "Sony"
) GROUP BY id_plataforma;

SELECT compania, COUNT(compania) as no_juegos FROM juegos GROUP BY compania ORDER BY no_juegos DESC;

SELECT COUNT(nombre) as alineacion_smash, alineacion FROM personaje WHERE id in (
	SELECT id_personaje FROM personaje_juego WHERE id_juego = (
		SELECT id FROM juegos WHERE nombre = "Super Smash Bros. Ultimate"
	)
)GROUP BY alineacion LIMIT 1;
 
# Esto es del ultimo query que funciona aun
SELECT compania FROM juegos WHERE id in (
	SELECT COUNT(id_juego), id_juego FROM personaje_juego WHERE id_personaje in (
		SELECT id FROM personaje WHERE alineacion = "bueno"
	) GROUP BY id_juego
)
SELECT nombre, pais_origen FROM compania ORDER BY compania.pais_origen

SELECT DISTINCT id_juego FROM personaje_juego WHERE id_personaje in (
		SELECT id FROM personaje WHERE alineacion = "malo"
	)
SELECT id FROM personaje WHERE alineacion = "malo"

SELECT compania.pais_origen FROM personaje
INNER JOIN personaje_juego ON personaje_juego.id_personaje = personaje.id
INNER JOIN juegos ON personaje_juego.id_juego = juegos.id
INNER JOIN compania ON juegos.compania = compania.nombre
