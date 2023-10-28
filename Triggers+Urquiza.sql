use biblioteca;

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


-- inserta los clientes ingresados en la tabla cliente en la tabla cliente_log_i junto con la hora, fecha y el usuario que realizo la accion
drop trigger if exists cliente_after_insert;
delimiter //
create trigger cliente_after_insert
  after insert
  on cliente
  for each row
begin
	insert into cliente_log_i values
    (
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
    );
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