SHOW DATABASES;

CREATE DATABASES autos_db;

USE autos_db;

SHOW TABLES;

CREATE TABLE primer_tabla( 
    id_registro INT NOT NULL AUTO_INCREMENT,
    marca VARCHAR(30) NOT NULL,
    color VARCHAR(30) NOT NULL,
    año INT NOT NULL,
    PRIMARY KEY (id_registro)
    );

    DESCRIBE primer_tabla;

    SELECT * FROM primer_tabla;

    INSERT INTO primer_tabla (marca,color,año) VALUES ("peugeot","negro","2022");
    INSERT INTO primer_tabla (marca,color,año) VALUES "(peugeot","rojo","2017");
    INSERT INTO primer_tabla (marca,color,año) VALUES ("for fiesta","negro","2008");
    INSERT INTO primer_tabla (marca,color,año) VALUES ("wolsvagen polo","negro","2020");
    INSERT INTO primer_tabla (marca,color,año) VALUES ("for ecosport","azul","2021");
    INSERT INTO primer_tabla (marca,color,año) VALUES ("honda civic","negro","2022");

    UPDATE primer_tabla SET color = “blanco” WHERE id_registro = 2;

    DELETE FROM primer_tabla WHERE id_registro = 5;

    SELECT * FROM primer_tabla;