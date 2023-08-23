

CREATE TABLE CLIENTE(
id_cliente INT AUTO_INCREMENT NOT NULL,
nombre_cliente VARCHAR(20) NOT NULL,
apellido_cliente VARCHAR(20) NOT NULL,
dni VARCHAR(10) NOT NULL,
direccion_cliente VARCHAR(50) NOT NULL,
telefono_cliente VARCHAR(15) NOT NULL,
correo_electronico_cliente VARCHAR(50),
fecha_registro_cliente DATETIME NOT NULL,
nacimiento_cliente DATETIME,
PRIMARY KEY(id_cliente)
);

CREATE TABLE PEDIDO(
id_pedido INT AUTO_INCREMENT NOT NULL,
fecha_pedido DATETIME NOT NULL,
fecha_devolucion_pedido DATETIME NOT NULL,
id_cliente INT NOT NULL,
PRIMARY KEY(id_pedido),
FOREIGN KEY(id_cliente) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE EDITORIAL(
id_editorial INT AUTO_INCREMENT NOT NULL,
nombre_editorial VARCHAR(20) NOT NULL,
telefono_editorial VARCHAR(20) NOT NULL,
PRIMARY KEY(id_editorial)
);

CREATE TABLE AUTOR(
id_autor INT AUTO_INCREMENT NOT NULL,
nombre_autor VARCHAR(20) NOT NULL,
nacimiento_autor DATETIME, 
defuncion_autor DATETIME,
PRIMARY KEY(id_autor)
);

CREATE TABLE SECTOR(
id_sector INT AUTO_INCREMENT NOT NULL,
nombre_sector VARCHAR(20) NOT NULL,
descripcion_sector VARCHAR(50),
PRIMARY KEY(id_sector)
);

CREATE TABLE LIBRO(
id_libro INT AUTO_INCREMENT NOT NULL,
nombre_libro VARCHAR(20) NOT NULL,
id_autor INT NOT NULL,
id_editorial INT NOT NULL,
fecha_pulicacion DATETIME,
descripcion_libro VARCHAR(50),
valor_libro FLOAT NOT NULL,
id_sector INT NOT NULL,
PRIMARY KEY(id_libro),
FOREIGN KEY(id_autor) REFERENCES AUTOR(id_autor),
FOREIGN KEY(id_editorial) REFERENCES EDITORIAL(id_editorial),
FOREIGN KEY(id_sector) REFERENCES SECTOR(id_sector)
);

CREATE TABLE PEDIDO_LIBRO(
id_pedido INT NOT NULL,
id_libro INT NOT NULL,
FOREIGN KEY(id_pedido) REFERENCES PEDIDO(id_pedido),
FOREIGN KEY(id_libro) REFERENCES LIBRO(id_libro)
);

CREATE TABLE TEMA(
id_tema INT AUTO_INCREMENT NOT NULL,
nombre_tema VARCHAR(20) NOT NULL,
descripcion_tema VARCHAR(20),
PRIMARY KEY(id_tema)
);

CREATE TABLE LIBRO_TEMA(
id_libro INT NOT NULL,
id_tema INT NOT NULL,
FOREIGN KEY(id_libro) REFERENCES LIBRO(id_libro),
FOREIGN KEY(id_tema) REFERENCES TEMA(id_tema)
);

