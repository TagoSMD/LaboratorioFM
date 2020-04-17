CREATE DATABASE xa00;
USE xa00;

/* */
CREATE TABLE clientes (
    id_clientes int(11) AUTO_INCREMENT,
    codigo_clientes VARCHAR(5),
    nombre_clientes VARCHAR(60),
    dpi_clientes VARCHAR(10),
    fecha_clientes VARCHAR(5),
    dirreccion_clientes VARCHAR(60),
    telefono_clientes VARCHAR(11),
    renta_clientes VARCHAR(10),
    devolucion_clientes VARCHAR(10),
    PRIMARY KEY (id_clientes)
)  ENGINE=INNODB DEFAULT CHARSET=LATIN1;
/* */
CREATE TABLE peliculas (
    id_peliculas int(11) AUTO_INCREMENT,
	codigo_peliculas VARCHAR(5),
    nombre_peliculas VARCHAR(60),
    genero_peliculas  VARCHAR(20),
    existensias_peliculas VARCHAR(5),
    actor_peliculas VARCHAR(60),
    tipodvd_peliculas VARCHAR(5),
    PRIMARY KEY (id_peliculas)	
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/* */
CREATE TABLE videojuegos (
   id_videojuegos int(11) AUTO_INCREMENT,
	codigo_videojuegos VARCHAR(5),
    nombre_videojuegos VARCHAR(60),
    genero_videojuegos VARCHAR(1),
    existensias_videojuegos VARCHAR(1),
    plataforma_videojuegos VARCHAR(60),
    PRIMARY KEY (id_videojuegos)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/* */

CREATE TABLE recibo (
    id_recibo int(11) AUTO_INCREMENT,
    id_clientes int(11),
    id_peliculas int(11),
    id_videojuegos int(11),
    PRIMARY KEY (id_recibo,id_clientes,id_peliculas,id_videojuegos),
     FOREIGN KEY (id_clientes) REFERENCES  clientes (id_clientes),
      FOREIGN KEY (id_peliculas) REFERENCES  peliculas (id_peliculas),
       FOREIGN KEY (id_videojuegos) REFERENCES  videojuegos (id_videojuegos)
     

) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/* */
