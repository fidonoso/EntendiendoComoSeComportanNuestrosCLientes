--1. Cargar el respaldo de la base de datos unidad2.sql.
--** En una 'Query tool' Se cargó el archivo unidad2pro.sql proporcionado por el profesor

--2. El cliente usuario01 ha realizado la siguiente compra:
    --● producto: producto9
    --● cantidad: 5
    --● fecha: fecha del sistema
BEGIN TRANSACTION;
UPDATE producto SET stock = stock - 5 WHERE id = 9; --Da como resultado error, ya que, el stock inicial del producto9 es 4.
--ERROR:  el nuevo registro para la relación «producto» viola la restricción «check» «stock_valido» DETAIL:  La fila que falla contiene (9, public.producto9, -1, 4219). SQL state: 23514
rollback;
-- No se reflejan cambios en la tabla

--3. El cliente usuario02 ha realizado la siguiente compra:
    --● producto: producto1, producto 2, producto 8
    --● cantidad: 3 de cada producto
    --● fecha: fecha del sistema
BEGIN TRANSACTION;
UPDATE producto SET stock = stock - 3 WHERE id = 1;
UPDATE producto SET stock = stock - 3 WHERE id = 2;
UPDATE producto SET stock = stock - 3 WHERE id = 8; -- Genera error porque el stock inicial es 0, por lo tanto se aplica rollback.
--ERROR:  el nuevo registro para la relación «producto» viola la restricción «check» «stock_valido» DETAIL:  La fila que falla contiene (8, public.producto8, -3, 8923). SQL state: 23514
rollback;
--Se verifica que no provocó cambios en la base de tados

--4. Realizar las siguientes consultas:
    --a. Deshabilitar el AUTOCOMMIT
    --\set AUTOCOMMIT off; ya no funciona en postgres 14 -- desde pgadmin4 , file > preferences > Query tool > Options > Auto commit? (setear en false)

    --b. Insertar nuevo cliente
    BEGIN;
    insert into cliente (nombre, email) values ('usuario011', 'usuario011@gmail.com');
    --c. Confirmar que fue agregado en la tabla cliente.
    select * from cliente; -- se confirma que aparece en la tabla cliente con id=13 nombre='usuario011', email='usuario011@gmail.com'
    --d. Realizar un rollback.
    rollback;
    --e. Confirmar que se restauró la información, sin considerar la inserción del punto b.
    select * from cliente; -- Se confirma que el nuevo cliente no fue ingresado en la base de datos
    --f. Habilitar de nuevo el AUTOCOMMIT.
    --file > preferences > Query tool > Options > Auto commit? (setear en TRUE)
