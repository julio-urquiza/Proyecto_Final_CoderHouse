use biblioteca;
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