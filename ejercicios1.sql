-- Crear la tabla cocina_chilena
CREATE TABLE cocina_chilena (
    id INT,
    nombre VARCHAR(50)
);

-- Insertar 10 registros con diferentes id y nombres
INSERT INTO cocina_chilena (id, nombre) VALUES
(1, 'Empanadas'),
(2, 'Cazuela'),
(3, 'Asado'),
(4, 'Pastel de choclo'),
(5, 'Chorrillana'),
(6, 'Pebre'),
(7, 'Curanto'),
(8, 'Charquicán'),
(9, 'Porotos con riendas'),
(10, 'Sopaipillas');

SELECT * FROM cocina_chilena;

-- Realizar 2 actualizaciones de nombres utilizando el id como valor de búsqueda
UPDATE cocina_chilena SET nombre = 'Machas a la parmesana' WHERE id = 2;
UPDATE cocina_chilena SET nombre = 'Mariscal' WHERE id = 5;

SELECT * FROM cocina_chilena;

-- Insertar 7 registros nuevos con id y nombres diferentes
INSERT INTO cocina_chilena (id, nombre) VALUES
(11, 'Caldillo de Congrio'),
(12, 'Humitas'),
(13, 'Caldillo de Congrio1'),
(14, 'Humitas1'),
(15, 'Caldillo de Congrio2'),
(16, 'Humitas2'),
(17, 'Prietas');

-- Realizar 2 actualizaciones de nombres utilizando el nombre como valor de búsqueda
UPDATE cocina_chilena SET nombre = 'Sopa de mariscos' WHERE nombre = 'Pebre';
UPDATE cocina_chilena SET nombre = 'Ensalada chilena' WHERE nombre = 'Curanto';

-- Eliminar un registro por Id
DELETE FROM cocina_chilena WHERE id = 13;

-- Eliminar el registro con el mayor id
DELETE FROM cocina_chilena WHERE id = (SELECT MAX(id) FROM cocina_chilena);

-- DELETE FROM cocina_chile WHERE id = (SELECT ID FROM cocina_chilena ORDER BY id DESC);

-- Eliminar 2 registros con id diferentes
DELETE FROM cocina_chilena WHERE id IN (8, 10);
-- DELETE FROM cocina_chilena WHERE id = 8 OR id =10;

-- Eliminar un registro usando el nombre como condición
DELETE FROM cocina_chilena WHERE nombre = 'Humitas';

-- Eliminar los registros cuyo ID esté entre 2 y 4
DELETE FROM cocina_chilena WHERE id BETWEEN 2 AND 4;

-- Eliminar los registros cuyos nombres empiecen con la letra 'H'
DELETE FROM cocina_chilena WHERE nombre LIKE 'H%';

-- Eliminar los registros cuyos nombres terminen con el número '2'
DELETE FROM cocina_chilena WHERE nombre LIKE '%2';

-- Eliminar los registros cuyos nombres contienen la subcadena 'as'
DELETE FROM cocina_chilena WHERE nombre LIKE '%as%';


