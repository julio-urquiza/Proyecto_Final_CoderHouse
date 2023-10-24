USE BIBLIOTECA;

-- ///////////////////
-- INSERCION DE DATOS 
-- ///////////////////

INSERT INTO CLIENTE (nombre_cliente, apellido_cliente, dni, direccion_cliente, telefono_cliente, correo_electronico_cliente, fecha_registro_cliente, nacimiento_cliente)
VALUES 
('Juan', 'Perez', '38682179', 'Reconquista 2001', '25972678', 'cojufru-1070@yopmail.com', '2010/12/12','1990/12/05'),
('Maria', 'Garcia', '50226918', 'Acassuso 98', '36117703', 'joudattu-7156@yopmail.com', '2010/12/15','1991/01/18'),
('Jose', 'Martinez', '31909829', 'Acevedo 34', '26255402', 'preuyoo-8175@yopmail.com', '2010/11/25','1980/04/01'),
('Manuel', 'Sanchez', '70956009', 'Agrelo 768', '41878003', 'hapuna-8836@yopmail.com', '2010/11/05','2000/12/03'),
('Carmen', 'Gomez', '93251717', 'Azcuénaga 123', '34597088', 'gracrimme@yopmail.com', '2010/10/06','1999/11/04'),
('Jesus', 'Fernandez', '33467376', 'Boeri 912', '41256868', 'prullei@yopmail.com', '2010/10/27','1989/10/17'),
('Miguel', 'Moreno', '97609125', 'Cajaravilla 4543', '25591127', 'prefilleriwe-4756@yopmail.com', '2010/09/12','1990/07/15'),
('Dolores', 'Jimenez', '89841694', 'Campillo 4564', '37869336', 'fragammoicenno-2337@yopmail.com', '2010/09/15','1991/04/19'),
('Javier', 'Perez', '26960822', 'Copérnico 786', '37101563', 'zukoteireho-8190@yopmail.com', '2010/08/12','1999/09/21'),
('Antonio', 'Rodriguez', '22603909', 'Cuyo 123', '33187971', 'tuzejoubrise-2168@yopmail.com', '2010/08/19','2000/07/27'),
('Ana', 'Navarro', '36078531', 'Dekay 6756', '40584415', 'goissaufaweusse-4000@yopmail.com', '2010/07/17','1980/05/29'),
('Carlos', 'Ruiz', '60905483', 'Desaguadero 675', '41442445', 'nulleseihoiffo-1755@yopmail.com', '2010/07/17','1995/11/20'),
('Maria', 'Diaz', '64175485', 'Ensenada	 312', '35489786', 'grebuwusute-9187@yopmail.com', '2010/06/15','1992/04/17'),
('Alejandro', 'Serrano', '83453054', 'Floresta 677', '33247776', 'trezelafeiso-4713@yopmail.com', '2010/06/02','1990/03/19'),
('Cristina', 'Saez', '71475220', 'Galicia 563', '26133977', 'bruvareuceiwa-3839@yopmail.com', '2010/05/01','1990/01/12');

INSERT INTO EDITORIAL (nombre_editorial,telefono_editorial)
VALUES
('Planeta', '12345678'),
('Espasa', '23456789'),
('Booket', '34567890'),
('Planeta Comic', '45678901'),
('Tusquets Editores', '56789012'),
('Martinez Roca', '67890123'),
('Croosbooks', '78901234'),
('Libros Disney', '89012345'),
('Paidos', '90123456'),
('GeoPlaneta', '01234567'),
('Austral Editorial', '09876543'),
('Minotauro', '98765432'),
('Editorial Ariel', '87654321'),
('Deusto', '76543210'),
('Diana', '65432109');

INSERT INTO AUTOR (nombre_autor, nacimiento_autor, defuncion_autor)
VALUES
('Oscar Wilde', '1854/10/16', '1900/11/30'),
('George Orwell', '1903/06/21', '1950/01/21'),
('George R. R. Martin', '1948/09/20', null),
('Franz Kafka', '1883/07/03', '1924/07/03'),
('Charles Dickens', '1812/02/07', '1870/06/09'),
('Stephen King', '1947/09/21', null),
('Jorge Luis Borges', '1899/08/24', '1986/06/14'),
('J.R.R. Tolkien', '1892/01/03', '1973/09/02'),
('Philip K. Dick', '1928/12/16', '1982/03/02'),
('Charles Darwin', '1809/02/12', '1882/04/19'),
('J. K. Rowling', '1965/07/31', null),
('Julio Cortazar', '1914/08/26', '1984/02/12'),
('Agatha Christie', '1890/09/15', '1976/01/12' ),
('Julio Verne', '1828/02/08', '1905/03/24'),
('William Shakespere', '1564/04/01', '1616/04/23');

INSERT INTO SECTOR (nombre_sector, descripcion_sector)
VALUES
('A1' , 'Mostrador 1er piso'),
('A2' , 'Estantes salida'),
('A3' , 'Estantes entrada'),
('B1' , 'Pared 1er Piso'),
('B2' , 'Bodega Subsuelo'),
('B3' , 'Bodega 2do Piso'),
('C1' , 'Mostrador 2do piso'),
('C2' , 'Bodega 3er piso'),
('C3' , 'Mostrador pta. baja'),
('D1' , 'Estantes 1er Piso'),
('D2' , 'Estantes 2do Piso'),
('D3' , 'Estantes 3er Piso'),
('E1' , 'Pared 2do Piso'),
('E2' , 'Pared 3er Piso'),
('E3' , 'Pared pta. Baja');

INSERT INTO TEMA (nombre_tema, descripcion_tema)
VALUES
('Terror', 'Miedo'),
('Psicologico', 'psicologia'),
('Romance', 'amoroso'),
('Hitorico', 'Historia mundial'),
('Pocicial', 'Ficcion policial'),
('Aventura', 'Miedo'),
('Fantastico', 'Sobreantural'),
('Ciencia Ficcion', 'Ciencia Ficcion'),
('Infantil', 'Cuentos'),
('Cocina', 'Recetas'),
('Poesia', 'poesis antugua'),
('Biografia', 'Autobiografias'),
('Misterio', 'Enigmas'),
('Religion', 'Religion'),
('Ciencia', 'Tesis Cientifica'),
('Ficcion', 'Ficcion');

INSERT INTO LIBRO (nombre_libro, id_autor, id_editorial, fecha_publicacion, descripcion_libro, valor_libro, id_sector)
VALUES
('El Principe Feliz',1,1,'1888/01/01','El Príncipe Feliz es la historia de una majestuosa estatua que domina una ciudad',2000,3),
('El gigante egoista',1,2,'1888/05/01','Los niños del pueblo juegan en el amplio jardin de la casa de un Gigante',4000,7),
('1984',2,3,'1949/06/08','1984 de George Orwell es una novela de distopía cuya trama ocurre en Oceanía',4500,2),
('Revelion en la Granja',2,4,'1945/08/17','Los animales de la granja de los Jones se sublevan contra sus dueños humanos y los vencen',5000,9),
('Juego de tronos',3,5,'1996/08/01','La trama se sitúa en un mundo ficticio con elementos fantásticos, como dragones y poderes',3000,2),
('Fuego y sangre',3,6,'2018/11/20','Fuego y Sangre es un libro escrito por George R. R. Martin que narra la historia completa de la Casa Targaryen',6500,14),
('La metamorfosis',4,7,'1915/01/01','“La metamorfosis” narra de forma magistral la transformación de Gregorio Samsa de comerciante a un monstruoso insecto.',1500,15),
('La condena',4,8,'1913/01/01','Antes de entrar en la cárcel, Mark Cobden (Sean Bean) era un ciudadano respetable, padre de familia y profesor.',7000,8),
('Tiempos difíciles',5,9,'1884/08/12','La historia se centra en Thomas Gradgring quien educa a sus hijos bajo un régimen bastante autoritario prohibiendo el uso de la imaginación',5000,6),
('Cuento de Navidad',5,10,'1843/12/19','Narra la historia de como un ser malo, huraño y mezquino, Ebenezer Scrooge, cambió merced a un milagro de navidad',3600,3),
('It',6,11,'1986/09/15','Varios niños de una pequeña ciudad del estado de Maine se alían para combatir a una entidad diabólica',5600,12),
('El resplandor',6,12,'1977/01/28','Jack Torrance se convierte en cuidador de invierno en el Hotel Overlook, en Colorado, con la esperanza de vencer su bloqueo con la escritura',10000,12),
('Ficciones',7,13,'1944/01/01','Pensé en un laberinto, en un sinuoso laberinto creciente que abarcara el pasado y el porvenir y que implicara de algún modo los astros',4500,11),
('El fin',7,14,'1953/01/01','Alude al fin de la vida de Martín Fierro',7400,9),
('El hobbit',8,15,'1937/09/21','La aventura cuenta el viaje de Bilbo Bolsón, quien se ve arrastrado a una épica búsqueda que le llevará a reclamar el reino que años atrás perdieron los enanos',1500,1);

INSERT INTO PEDIDO (fecha_pedido, fecha_devolucion_pedido,id_cliente)
VALUES
('2023/01/12','2023/02/19',1),
('2023/02/15','2023/03/01',2),
('2023/03/02','2023/03/29',3),
('2023/05/06','2023/05/30',4),
('2023/06/07','2023/06/28',5),
('2023/06/04','2023/07/01',6),
('2023/07/01','2023/08/04',7),
('2023/07/12','2023/07/29',8),
('2023/08/10','2023/08/30',9),
('2023/08/19','2023/09/28',10),
('2023/08/29','2023/09/10',11),
('2023/08/20','2023/09/12',12),
('2023/08/29','2023/09/30',13),
('2023/08/26','2023/09/20',14),
('2032/09/01','2023/09/27',15);

INSERT INTO PEDIDO_LIBRO (id_pedido, id_libro)
VALUES
(1,1),
(1,2),
(2,4),
(3,3),
(3,2),
(4,6),
(5,7),
(5,9),
(6,1),
(7,1),
(7,15),
(8,14),
(9,13),
(9,9),
(9,10),
(10,11),
(11,15),
(12,14),
(13,11),
(14,7),
(15,11),
(15,2),
(15,9);

INSERT INTO LIBRO_TEMA (id_libro,id_tema)
VALUES
(1,8),
(2,9),
(3,8),
(4,16),
(5,16),
(6,16),
(7,16),
(8,16),
(9,16),
(10,16),
(11,16),
(11,1),
(12,16),
(13,16),
(14,16),
(15,16),
(11,7);



-- ///////////////////
-- CREACION DE VISTAS 
-- ///////////////////

-- TABLA QUE JUNTA LOS IDS DE LOS CLIENTES Y LOS IDS DE LOS LIBROS ALQUILADOS POR ESTOS, JUNTO CON LAS FECHA DE PRESTAMO Y DEVOLUCION
CREATE OR REPLACE VIEW ID_CLIENTE_ID_LIBRO
AS
SELECT id_cliente, id_libro,fecha_pedido,fecha_devolucion_pedido
FROM pedido_libro
JOIN pedido
ON pedido.id_pedido=pedido_libro.id_pedido;

-- TABLA QUE JUNTA LOS DATOS DE CLIENTES, SUS LIBROS ALQUILADOS, LAS FECHAS DE PRESTAMO Y DEVOLUCION 
CREATE OR REPLACE VIEW CLIENTE_LIBRO
AS
SELECT 
CONCAT(nombre_cliente,' ',apellido_cliente) as Nombre, 
nombre_libro as Libro,
fecha_pedido as Prestamo,
fecha_devolucion_pedido as Devolucion
FROM id_cliente_id_libro as cl
JOIN libro
ON cl.id_libro=libro.id_libro
JOIN cliente
ON cl.id_cliente=cliente.id_cliente;

-- TABLA QUE MUESTRA LA CANTIDAD DE PRESTAMOS O ALQUILERES POR LIBRO
CREATE OR REPLACE VIEW CANTIDAD_ALQUILERES_POR_LIBRO
AS
SELECT 
nombre_libro AS Nombre,
COUNT(*) as Alquieres 
FROM pedido_libro
JOIN libro
ON pedido_libro.id_libro=libro.id_libro
GROUP BY pedido_libro.id_libro;

-- TABLA QUE MUESTRA LA CANTIDAD DE LIBROS POR TEMA
CREATE OR REPLACE VIEW CANTIDAD_LIBROS_POR_TEMA
AS
SELECT 
nombre_tema AS Nombre,
COUNT(*) as Cantidad 
FROM libro_tema as lt
JOIN tema
ON lt.id_tema=tema.id_tema
GROUP BY lt.id_tema;

-- TABLA QUE MUESTRA EL NOMBRE DEL LIBRO, DEL AUTOR, DE LA EDITORIAL, FECHA DE PUBLICACION, VALOR MONERATIO DEL LIBRO Y EL SECTOR DONDE ESTA UBICADO
CREATE OR REPLACE VIEW LIBRO_INFORMACION_COMPLETA
AS
SELECT 
nombre_libro as Libro,
nombre_autor as Autor,
nombre_editorial as Editorial,
fecha_publicacion as Publicacion,
valor_libro as Valor,
nombre_sector as Sector
FROM libro
JOIN editorial
ON libro.id_editorial=editorial.id_editorial
JOIN autor
on libro.id_autor=autor.id_autor
JOIN sector
ON libro.id_sector=sector.id_sector;

-- TABLA QUE MUESTRA LA CANTIDAD ALQUILERES QUE REALIZO UN CLIENTE
CREATE OR REPLACE VIEW CANTIDAD_ALQUILERES_POR_CLIENTE
AS
SELECT 
CONCAT(nombre_cliente,' ',apellido_cliente) as Nombre,
count(id_libro) as Alquileres
FROM id_cliente_id_libro AS cl
JOIN cliente
ON cl.id_cliente=cliente.id_cliente
GROUP BY cl.id_cliente;

CREATE OR REPLACE VIEW LIBROS_DE_CLIENTE
AS
SELECT 
CONCAT(nombre_cliente,' ',apellido_cliente) as Nombre, 
nombre_libro as Libro,
fecha_pedido as Prestamo,
fecha_devolucion_pedido as Devolucion
FROM pedido_libro AS pl
JOIN pedido
ON pl.id_pedido=pedido.id_pedido
JOIN libro
ON libro.id_libro=pl.id_libro
JOIN cliente
ON pedido.id_cliente=cliente.id_cliente;



-- /////////////////////
-- CREACION DE FUNCIONES
-- /////////////////////

drop function if exists calcular_costo_alquiler;
drop function if exists calcular_cantidad_libros_por_usuario;

delimiter $$
CREATE FUNCTION calcular_costo_alquiler(id int,dias int)
RETURNS float
reads sql data
BEGIN
	declare retorno varchar(100);
	SELECT valor_libro
    INTO retorno
    FROM libro
    WHERE libro.id_libro=id;
    SET retorno = (retorno * 0.2)*dias;
RETURN retorno;
END $$
delimiter ;


delimiter $$
CREATE FUNCTION calcular_cantidad_libros_por_usuario(usuario varchar(50))
RETURNS int 
reads sql data
BEGIN
	declare retorno int;
	SELECT alquileres
    INTO RETORNO
    FROM cantidad_alquileres_por_cliente
    WHERE Nombre=usuario;
RETURN retorno;
END $$
delimiter ;

-- SELECT calcular_cantidad_libros_por_usuario('Cristina Saez') as alquileres;

-- SELECT calcular_costo_alquiler(2,7);



-- /////////////////////////////
-- CREACION DE STORES PROCEDURES
-- /////////////////////////////

drop procedure if exists oredenar_clientes;
drop procedure if exists agregar_cliente;

-- ordena la tabla clientes, el primer parametro indica el campo por el cual se ordenara y el segundo indica tipo de orden, ascendente(asc) o descendente(desc)
delimiter $$
create procedure ordenar_clientes(IN campo char(20),in orden char(20))
begin
	if campo <> '' then 
		set @ordenamiento = concat('order by ',campo);
    else
		set @ordenamiento = '';
	end if;
    
    if orden <> '' then
		set @ordenamiento = concat(@ordenamiento,' ',orden);
	end if;
    
	set @ordenamiento = concat('select * from cliente ',@ordenamiento);
    
    prepare	runSQL from @ordenamiento;
    execute runSQL;
    deallocate prepare runSQL;
end $$
delimiter ;


-- agrega registros a la tabla cliente, los datos siguen el siguiente orden: nombre, apellido, dni, direccion, telefono, correo_electronico, fecha_registro y nacimiento.
delimiter $$
create procedure agregar_cliente(
in nombre VARCHAR(20),
in apellido VARCHAR(20),
in dni VARCHAR(10),
in direccion VARCHAR(50),
in telefono VARCHAR(15),
in correo_electronico VARCHAR(50),
in fecha_registro DATETIME,
in nacimiento DATETIME)
begin
	if nombre <> ''and 
    apellido <> '' and 
    dni <> '' and 
    direccion <> '' and 
    telefono <> '' and 
    correo_electronico <> '' and 
    fecha_registro <> '' and 
    nacimiento <> '' then
		insert into cliente (nombre_cliente, apellido_cliente, dni, direccion_cliente, telefono_cliente, correo_electronico_cliente, fecha_registro_cliente, nacimiento_cliente)
        values (nombre, apellido, dni, direccion, telefono, correo_electronico, fecha_registro, nacimiento);
        select * from cliente order by 1 desc;
	else 
    select 'Datos incorrectos' as Mensaje;
	end if;
end $$
delimiter ;

-- call ordenar_clientes('nombre_cliente','desc');

-- call agregar_cliente('Juana', 'Paez', '52071427', 'San juan 200', '39772613', 'juana123@yopmail.com', '2010/05/04','1990/01/15');





-- ////////////////////
-- CREACION DE TRIGGERS
-- ////////////////////

use bilbioteca;


-- inserta los clientes ingresados en la tabla cliente en la tabla cliente_log_i junto con la hora, fecha y el usuario que realizo la accion
drop trigger if exists cliente_before_insert;
delimiter //
create trigger cliente_before_insert
  before insert
  on cliente
  for each row
begin
  	insert into cliente_log_i values
    (
		new.id_cliente,
		new.nombre_cliente, 
		new.apellido_cliente, 
		new.dni, 
		new.direccion_cliente, 
		new.telefono_cliente,
		new.correo_electronico_cliente,
		new.fecha_registro_cliente,
		new.nacimiento_cliente, 
		current_date(),
        current_time(),
		user()
    );
end //
delimiter ;

-- inserta los clientes modificados en la tabla cliente en la tabla cliente_log_u junto con la hora, fecha y el usuario que realizo la accion
drop trigger if exists cliente_before_update;
delimiter //
create trigger cliente_before_update
  before update
  on cliente
  for each row
begin
  	insert into cliente_log_u 
    select
	id_cliente,
	nombre_cliente, 
	apellido_cliente, 
	dni, 
	direccion_cliente, 
	telefono_cliente,
	correo_electronico_cliente,
	fecha_registro_cliente,
	nacimiento_cliente, 
	current_date(),
    current_time(),
	user()
    from cliente
    where id_cliente=new.id_cliente;
end //
delimiter ;

-- inserta los clientes eliminados en la tabla cliente en la tabla cliente_log_d junto con la hora, fecha y el usuario que realizo la accion
drop trigger if exists cliente_before_delete;
delimiter //
create trigger cliente_before_delete
  before delete
  on cliente
  for each row
begin
	insert into cliente_log_d
    select
	id_cliente,
	nombre_cliente, 
	apellido_cliente, 
	dni, 
	direccion_cliente, 
	telefono_cliente,
	correo_electronico_cliente,
	fecha_registro_cliente,
	nacimiento_cliente, 
	current_date(),
    current_time(),
	user()
    from cliente
    where id_cliente=old.id_cliente;
end //
delimiter ;


-- calcual la edad del cliente automaticamente cuando se inserta en la tabla  
drop trigger if exists cliente_after_insert;
delimiter //
create trigger cliente_after_insert
  after insert
  on cliente
  for each row
begin
	UPDATE cliente
	set cliente.edad=TIMESTAMPDIFF(YEAR, nacimiento_cliente, CURDATE())
    where id_cliente=now.id_cliente;
end //
delimiter ;



-- inserta las filas insertadas en la tabla pedido_libro en la tabla pedido_libro_log_i junto con la hora, fecha y el usuario que realizo la accion
drop trigger if exists pedido_libro_before_insert;
delimiter //
create trigger pedido_libro_before_insert
  before insert
  on pedido_libro
  for each row
begin
	insert into pedido_libro_log_i values
	(
		new.id_pedido,
        new.id_libro,
		current_date(),
		current_time(),
		user()
	);
end //
delimiter ;


-- inserta las filas modificadas en la tabla pedido_libro en la tabla pedido_libro_log_u junto con la hora, fecha y el usuario que realizo la accion
drop trigger if exists pedido_libro_before_update;
delimiter //
create trigger pedido_libro_before_update
  before update
  on pedido_libro
  for each row
begin
	insert into pedido_libro_log_u 
    select
	id_pedido,
    id_libro,
	current_date(),
    current_time(),
	user()
    from pedido_libro
    where id_pedido=new.id_pedido;
end //
delimiter ;


-- inserta las filas eliminadas en la tabla pedido_libro en la tabla pedido_libro_log_d junto con la hora, fecha y el usuario que realizo la accion
drop trigger if exists pedido_libro_before_delete;
delimiter //
create trigger pedido_libro_before_delete
  before delete
  on pedido_libro
  for each row
begin
	insert into pedido_libro_log_d
    select
	id_pedido,
    id_libro,
	current_date(),
    current_time(),
	user()
    from pedido_libro
    where id_pedido=old.id_pedido;
end //
delimiter ;