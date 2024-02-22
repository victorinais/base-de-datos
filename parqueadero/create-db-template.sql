-- Active: 1708629344538@@blen3fpkh0trfqawbsct-mysql.services.clever-cloud.com@3306
CREATE TABLE vehiculos(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    placa VARCHAR(45) UNIQUE NOT NULL,
    modelo VARCHAR(45),
    usuario_id INT,
    tipo_vehiculo_id INT,
    color_id INT,
    marca_id INT
);

SHOW TABLES;
DROP TABLE usuarios;

CREATE TABLE tipo_vehiculos(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45)
);
CREATE TABLE colores(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45)
);
CREATE TABLE marcas(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45)
);
CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombres VARCHAR(45),
    apellidos VARCHAR(45),
    correo VARCHAR(125) UNIQUE,
    genero VARCHAR(25),
    documento VARCHAR(45),
    tipo_documentos_id INT
);
CREATE TABLE tipo_documentos(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45)
)

INSERT INTO vehiculos(placa,modelo,usuario_id,tipo_vehiculo_id,color_id,marca_id)VALUES('ABC123',2015,2,3,2,1);
INSERT INTO marcas(nombre)VALUES('Boxer');
SELECT * FROM usuarios;

DELETE FROM vehiculos WHERE id=1;

SELECT vehiculos.placa, marcas.nombre, colores.nombre, usuarios.nombres, tipo_vehiculos.nombre
FROM vehiculos INNER JOIN marcas INNER JOIN colores INNER JOIN usuarios INNER JOIN tipo_vehiculos
WHERE vehiculos.marca_id = marcas.id and vehiculos.color_id = colores.id AND vehiculos.usuario_id = usuarios.id and vehiculos.tipo_vehiculo_id = tipo_vehiculos.id;

ALTER TABLE usuarios ADD FOREIGN KEY (tipo_documentos_id) REFERENCES tipo_documentos(id);