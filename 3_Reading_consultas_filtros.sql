-- Consultas y filtrados
-- ==================================
-- Seleccione los vendedores que tienen un salario superior al promedio.
SELECT * FROM vendedores WHERE salario > (SELECT AVG(salario) FROM vendedores);

-- Seleccione los productos más caros que el promedio.
SELECT * FROM productos where precio > (SELECT AVG(precio)FROM productos);

SELECT * FROM vendedores WHERE salario > (SELECT AVG(salario) FROM vendedores);

-- cuantos vendedores ganan mas que el promedio
SELECT nombre, apellidos FROM vendedor WHERE salario > (SELECT AVG(salario) FROM vendedor);

-- cuantos vendedores ganan menos que el promedio
SELECT COUNT(*) FROM vendedor WHERE salario < (SELECT AVG(salario) FROM vendedor);

-- cuantos productos son mas baratos que el promedio
SELECT COUNT(*) FROM producto WHERE precio < (SELECT AVG(precio) FROM producto);

select * FROM producto;
SELECT nombre FROM producto WHERE precio = (SELECT MAX(precio) FROM producto) OR precio = (SELECT MIN(precio) FROM producto);

select SUM(precio) from producto;
