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

    INSERT INTO primer_tabla (marca,color,año,modelo) VALUES ("peugeot","negro","2022","style");
    INSERT INTO primer_tabla (marca,color,año,modelo) VALUES ("for fiesta","negro","2008","kinetic");
    INSERT INTO primer_tabla (marca,color,año,modelo) VALUES ("wolsvagen polo","negro","2020","trend");
    INSERT INTO primer_tabla (marca,color,año,modelo) VALUES ("for ecosport","azul","2021","freestyle");

    UPDATE primer_tabla SET color = “blanco” WHERE id_registro = 2;

    DELETE FROM primer_tabla WHERE id_registro = 5;

    SELECT * FROM primer_tabla;