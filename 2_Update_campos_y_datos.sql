USE telovendo;
-- Agregando campos a tablas
-- ==================================
SELECT * FROM productos;
ALTER TABLE productos ADD precio DECIMAL(10,2) NOT NULL;

SELECT * FROM vendedores;
ALTER TABLE vendedores ADD salario DECIMAL(10, 2) NOT NULL;

SELECT * FROM clientes;
ALTER TABLE clientes ADD total_pagado DECIMAL(10, 2) not NULL DEFAULT 0;


-- Insertanto valores a tablas 
-- ==================================
SELECT * FROM vendedores;
INSERT INTO vendedores (RUN, nombre, apellido, fecha_nacimiento, seccion, salario)
VALUES
	('98765432-1', 'María', 'González', '1995-02-02', 'Perfume', 2500000),
	('11111111-1', 'Pedro', 'Sánchez', '1992-03-03', 'Mujer', 3000000),
	('22222222-2', 'Ana', 'López', '1989-04-04', 'Tecnología', 2900000),
	('33333333-3', 'Carlos', 'Martínez', '1998-05-05', 'Hombre', 2200000),
	('44444444-4', 'Laura', 'García', '1997-06-06', 'Hogar', 2800000),
	('55555555-5', 'Miguel', 'Fernández', '1988-07-07', 'Perfume', 3200000),
	('66666666-6', 'Paola', 'Díaz', '1996-08-08', 'Cocina', 2100000),
	('77777777-7', 'David', 'Gutiérrez', '1995-09-09', 'Tecnología', 3400000),
	('88888888-8', 'Sofía', 'Rodríguez', '1991-10-10', 'Mujer', 3000000),
	('99999999-9', 'Diego', 'Hernández', '1993-11-11', 'Hogar', 2500000);


SELECT * FROM clientes;
INSERT INTO clientes (nombre, apellido, telefono, direccion, comuna, email, fecha_registro, total_pagado) 
VALUES 
	('Juan', 'Pérez', '+56912345678', 'Calle 1', 'Santiago', 'juanperez@gmail.com', '2021-03-15', 50000),
	('María', 'González', '+56987654321', 'Calle 2', 'La Florida', 'mariagonzalez@hotmail.com', '2022-01-10', 25000),
	('Pedro', 'Sánchez', '+56955555555', 'Calle 3', 'Las Condes', 'pedrosanchez@gmail.com', '2020-06-20', 40000),
	('Ana', 'López', '+56922222222', 'Calle 4', 'Providencia', 'analopez@hotmail.com', '2021-11-05', 15000),
	('Carlos', 'Martínez', '+56933333333', 'Calle 5', 'Santiago', 'carlosmartinez@gmail.com', '2022-02-25', 80000),
	('Laura', 'García', '+56944444444', 'Calle 6', 'Vitacura', 'lauragarcia@hotmail.com', '2020-12-12', 12000),
	('Miguel', 'Fernández', '+56955555555', 'Calle 7', 'Santiago', 'miguelfernandez@gmail.com', '2022-03-08', 60000),
	('Paola', 'Díaz', '+56966666666', 'Calle 8', 'Las Condes', 'paoladiaz@hotmail.com', '2021-08-14', 45000),
	('David', 'Gutiérrez', '+56977777777', 'Calle 9', 'Providencia', 'davidgutierrez@gmail.com', '2020-07-31', 20000),
	('Sofía', 'Rodríguez', '+56988888888', 'Calle 10', 'Santiago', 'sofiarodriguez@hotmail.com', '2022-04-01', 95000),
	('Diego', 'Hernández', '+56999999999', 'Calle 11', 'Las Condes', 'diegohernandez@gmail.com', '2021-05-22', 30000),
	('Lucía', 'Soto', '+56912121212', 'Calle 12', 'La Florida', 'luciasoto@hotmail.com', '2020-11-17', 50000),
	('Fernando', 'Castillo', '+56923232323', 'Calle 12', 'Santiago', 'fernandocastillo@gmail.com', '2022-03-20', 70000),
	('Carla', 'Fuentes', '+56934343434', 'Calle 14', 'Providencia', 'carlafuentes@hotmail.com', '2021-09-09', 55000),
	('José', 'Moreno', '+56945454545', 'Calle 15', 'Santiago', 'josemoreno@gmail.com', '2022-05-10', 85000);

SELECT * FROM productos;
INSERT INTO productos (SKU, nombre, categoria, productor, stock, precio)
VALUES
  (1001, 'Aspiradora inteligente', 'Hogar', 'XYZ Electronics', 150, 75000),
  (1002, 'Smartwatch deportivo', 'Tecnología', 'ABC Technologies', 75, 120000),
  (1003, 'Camisa a cuadros', 'Hombre', 'Polo Ralph Lauren', 100, 45000),
  (1004, 'Zapatillas para correr', 'Mujer', 'Nike', 120, 85000),
  (1005, 'Perfume floral', 'Perfume', 'Chanel', 90, 150000),
  (1006, 'Cocina a gas', 'Cocina', 'Whirlpool', 80, 350000),
  (1007, 'Smartphone de gama media', 'Tecnología', 'Samsung', 200, 300000),
  (1008, 'Set de ollas de acero inoxidable', 'Cocina', 'Tramontina', 100, 120000),
  (1009, 'Colchón ortopédico', 'Hogar', 'Serta', 60, 600000),
  (1010, 'Blusa estampada', 'Mujer', 'Zara', 150, 25000);

