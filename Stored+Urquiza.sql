use biblioteca;
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

