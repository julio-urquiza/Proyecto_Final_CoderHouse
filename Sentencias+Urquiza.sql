use mysql;

-- crea el usuario con el nombre "Usuario_Nivel_3" y con la contrasena "password"
create user 'Usuario_Nivel_3'@'localhost' identified by 'password';

-- le damos permisos de lectura al usuario "Usuario_Nivel_3"
grant select on biblioteca.* to 'Usuario_Nivel_3'@'localhost';

-- crea el usuario con el nombre "Usuario_Nivel_2" y con la contrasena "password"
create user 'Usuario_Nivel_2'@'localhost' identified by 'password';

-- le damos permisos de lectura,escritura y modificacion al usuario "Usuario_Nivel_2"
grant select,insert,update on biblioteca.* to 'Usuario_Nivel_2'@'localhost';