-- Creamos schema para trabajar
create schema example;
use example;

-- Creamos tabla cliente
create table clientes(
id int not null primary key,
nombre varchar(50),
correo varchar(70),
tarjetacredito blob
);

 -- Ingresamos datos a la tabla clientes y encriptamos la variable tarjetacredito
insert into clientes values(1, 'Yulissa Restrepo', 'yulissatatiana@gmail.com', aes_encrypt('48621514565','contraseña'));
insert into clientes values(2, 'Valentina Correa', 'valencorreabarco@hotmail.com', aes_encrypt('87454158211','contraseña'));
insert into clientes values(3, 'Juan Caro', 'juandiaz7289@gmail.com', aes_encrypt('84521657435','contraseña'));
insert into clientes values(4, 'Hector Pinedo', 'kikepinedo1999@gmail.com', aes_encrypt('92054189943','contraseña'));
insert into clientes values(5, 'Vicky Arnedo', 'arnedobvicky@gmail.com', aes_encrypt('15927024771','contraseña'));
insert into clientes values(6, 'Matias Curi', 'matiassaithcuri13@gmail.com', aes_encrypt('67239012683','contraseña'));
insert into clientes values(7, 'Fabian Manjarres', 'fcma1999@gmail.com', aes_encrypt('89320943217','contraseña'));
insert into clientes values(8, 'Andrea Barrios', 'barriosandrea12@gmail.com', aes_encrypt('47339016723','contraseña'));
insert into clientes values(9, 'Natalia Salgado', 'natysalgaso30@gmail.com', aes_encrypt('88732690148','contraseña'));
insert into clientes values(10, 'Valentina Montenegro', 'vale28@gmail.com', aes_encrypt('74722109523','contraseña'));
insert into clientes values(11, 'Santiago Gonzalez', 'santigonzales8@gmail.com', aes_encrypt('721309942178','contraseña'));
insert into clientes values(12, 'Karen Rivera', 'karenrivera30@gmail.com', aes_encrypt('32489137821','contraseña'));
insert into clientes values(13, 'Mairyn Arellano', 'maiarellano24@gmail.com', aes_encrypt('66792910562','contraseña'));
insert into clientes values(14, 'Miguel Morales', 'miguemoralesc@gmail.com', aes_encrypt('49237845120','contraseña'));
insert into clientes values(15, 'Gabriel Hernandez ', 'ghernandez@gmail.com', aes_encrypt('71298317826','contraseña'));


-- Comprobamos que este cifrado la columna de la tarjeta de crédito
select * from clientes;

-- Ahora desencriptamos la columna tarjetacredito y mostramos la tabla
select id, nombre, correo, cast(aes_decrypt(tarjetacredito, 'contraseña')as char) as tarjetacredito from clientes;
