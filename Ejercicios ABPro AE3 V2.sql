

/*								Ejercicios ABPro AE3

Bases de datos relacionales – Manipulación de datos.

Nombres: Jorge Moraga Calvo, Gustavo Ruiz Saumon, Juan Pino Contreras, Harold Klapp.*/

/*Actualización de tablas.
 ----------------------------------------*/
 USE telovendo;
 
-- A.	Ingrese 5 vendedores.
INSERT INTO vendedores (RUN, nombre, apellido, fecha_nacimiento, seccion, salario)
VALUES
    ('11112222-3', 'Ricardo', 'Vega', '1990-02-25', 'Mujer', 2800000),
    ('22223333-4', 'Karla', 'Hernández', '1987-08-14', 'Tecnología', 3200000),
    ('33334444-5', 'Jorge', 'González', '1991-06-01', 'Hogar', 2400000),
    ('44445555-6', 'Fernanda', 'Lara', '1997-01-12', 'Perfume', 2900000),
    ('55556666-7', 'Marcelo', 'Salas', '1994-12-06', 'Cocina', 2600000);
select * from vendedores;

-- B.	Ingrese 5 clientes.
INSERT INTO clientes (nombre, apellido, telefono, direccion, comuna, email, fecha_registro, total_pagado) 
VALUES 
('Francisco', 'Gómez', '+56977777777', 'Calle 16', 'Las Condes', 'franciscogomez@gmail.com', '2022-04-05', 20000),
 ('Camila', 'Torres', '+56988888888', 'Calle 17', 'Providencia', 'camilatorres@hotmail.com', '2021-12-30', 30000),
 ('Juanita', 'Ramírez', '+56999999999', 'Calle 18', 'Santiago', 'juanitaramirez@gmail.com', '2022-01-15', 40000),
 ('Sebastián', 'Muñoz', '+56955555555', 'Calle 19', 'La Florida', 'sebastianmunoz@hotmail.com', '2021-10-23', 60000),
 ('Valentina', 'Morales', '+56944444444', 'Calle 20', 'Vitacura', 'valentinamorales@gmail.com', '2022-02-20', 50000);
select * from clientes;

-- C.	Ingrese 5 productos.
INSERT INTO productos (SKU, nombre, categoria, productor, stock, precio) 
VALUES 
(1011, 'Laptop de alta gama', 'Tecnología', 'Apple', 50, 2000000), 
(1012, 'Lentes de sol polarizados', 'Accesorios', 'Ray-Ban', 80, 100000),
 (1013, 'Vino tinto reserva', 'Bebidas', 'Concha y Toro', 120, 35000), 
 (1014, 'Reloj clásico de cuero', 'Accesorios', 'Fossil', 60, 80000), 
 (1015, 'Silla de escritorio ergonómica', 'Hogar', 'IKEA', 40, 100000);
 select * from productos;
 
 /* Manipulación de datos - Consultas SQL.
 ----------------------------------------*/
 -- D. Identifique cual es el salario mínimo entre vendedores.
SELECT MIN(salario) AS salario_minimo FROM vendedores;
 
-- E. Identifique cual es el salario máximo entre vendedores.
SELECT MAX(salario) AS salario_maximo FROM vendedores;

-- F. Súmele el salario mínimo identificado al salario de todos los vendedores.
		/*UPDATE vendedores SET salario = salario + (SELECT MIN(salario) FROM vendedores);
	*esta consulta arroja error 1093 "you cant spicify target table 'vendedores' for update if FROM clause* */
            
UPDATE vendedores SET salario = salario + ( SELECT MIN(salary.salario) FROM (SELECT * FROM vendedores) AS salary);
SELECT * FROM vendedores;
		/* usamos alias para poder realizar la consulta*/

-- G. Elimine el producto más caro del inventario.
DELETE FROM productos WHERE precio = (SELECT MAX(product.precio) FROM (SELECT * FROM productos) AS product);

-- H. Cree una tabla que contenga solo los clientes que han pagado más que el promedio.
CREATE TABLE clientes_preferentes SELECT * FROM clientes
WHERE total_pagado > (SELECT AVG(total_pagado) FROM clientes);	

SELECT * FROM clientes_preferentes;

-- I. Actualice los datos de tres productos.
UPDATE productos SET 
stock = '60', precio = '650000' ,categoria = 'Hombre'
WHERE SKU IN (1006, 1001, 1004);
SELECT * FROM productos WHERE SKU IN (1006, 1001, 1004);

-- J. Actualice los datos de tres vendedores.
UPDATE vendedores
SET fecha_nacimiento = '1991-05-09', seccion = 'Tecnología' ,salario = '2000000'
WHERE run IN ('33334444-5', '11111111-1','99999999-9');
SELECT * FROM vendedores WHERE run IN ('33334444-5', '11111111-1','99999999-9');

-- K. Actualice los datos de 1 cliente.
UPDATE clientes SET telefono = '+56974653237', comuna='La Serena', email='juanperez2023@gmail.com' WHERE codigo = '1';
SELECT * FROM clientes;

-- L. Seleccione el nombre y el apellido de los vendedores que tienen un salario superior al promedio.
SELECT nombre, apellido FROM vendedores WHERE salario >(SELECT AVG(salario) FROM vendedores);

-- M. Indique cuál es el cliente con mayor gasto.
SELECT * FROM clientes WHERE total_pagado = (SELECT MAX(total_pagado) FROM clientes);


/* NOTAS 
jpino- me da duplicado el ejercicio M, sofia rodriguez con codigo 20 y 35.
*/