CREATE DATABASE Recibos1;
USE Recibos1;

/* */
CREATE TABLE recibo (
    id_recibos int(11) AUTO_INCREMENT,
    nombre_clientes VARCHAR(30),
    dpi_clientes VARCHAR(60),
    correo_clientes VARCHAR(15),
    telefono_clientes VARCHAR(19),
    tipo_clientes VARCHAR(60),
    genero_clientes VARCHAR(11),
    renta_clientes VARCHAR(15),
    devolucion_clientes VARCHAR(15),
    totalpago_clientes VARCHAR(10),
    PRIMARY KEY (id_recibos)
    )  ENGINE=INNODB DEFAULT CHARSET=LATIN1;
/* */
    