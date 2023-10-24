USE BIBLIOTECA;

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


