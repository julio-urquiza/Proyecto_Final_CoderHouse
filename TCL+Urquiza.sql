use biblioteca;
set autocommit=0;
select @@autocommit;

start transaction;
SET FOREIGN_KEY_CHECKS=0;
delete pedido,pedido_libro
  from pedido
  join pedido_libro
  on pedido.id_pedido=pedido_libro.id_pedido
  where pedido.id_pedido=1;
SET FOREIGN_KEY_CHECKS=1;

rollback;
-- commit;

select *from pedido;
select *from pedido_libro;

-- /////////////////////

start transaction;
insert into editorial (nombre_editorial,telefono_editorial)
values
('Ivrea','93847564'),
('Acen','48569287'),
('Alfaguara','36475869'),
('Altera','74839201');
savepoint inserts_01;
insert into editorial (nombre_editorial,telefono_editorial)
values
('Anagrama','03948576'),
('Atonitos','69785039'),
('Calambur','14253647'),
('Gigamesh','68795849');
savepoint inserts_02;

rollback;
release savepoint inserts_01;
-- commit;

select * from editorial;

