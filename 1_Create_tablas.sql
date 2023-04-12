use telovendo;
-- Creando tablas clientes, productos y vendedores
-- ==================================
CREATE TABLE clientes  (
codigo INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
telefono VARCHAR(50) NOT NULL,
direccion VARCHAR(100) NOT NULL,
comuna VARCHAR(30) NOT NULL,
email VARCHAR (100) NOT NULL,
fecha_registro DATE NOT NULL
);

CREATE TABLE productos (
SKU INT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
categoria VARCHAR(50) NOT NULL,
productor VARCHAR(50) NOT NULL,
stock INT
);

CREATE TABLE vendedores (
RUN VARCHAR(12) PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
fecha_nacimiento DATE NOT NULL,
seccion VARCHAR(30) NOT NULL
);
DESCRIBE vendedores;


-- Insertando datos a vendedor
-- ==================================
SELECT * from vendedor;
INSERT INTO vendedores (RUN, nombre, apellido, fecha_nacimiento, seccion)
VALUES
  ('12345678-9', 'Juan', 'Pérez', '1990-01-01', 'Cocina'),
  ('98765432-1', 'María', 'González', '1995-02-02', 'Infantil'),
  ('11111111-1', 'Pedro', 'Sánchez', '1992-03-03', 'Mujer'),
  ('22222222-2', 'Ana', 'López', '1993-04-04', 'Hombre'),
  ('33333333-3', 'Carlos', 'Martínez', '1988-05-05', 'Telefonía'),
  ('44444444-4', 'Laura', 'García', '1989-06-06', 'Televisor'),
  ('55555555-5', 'Miguel', 'Fernández', '1991-07-07', 'Temporada'),
  ('66666666-6', 'Paola', 'Díaz', '1996-08-08', 'Cocina'),
  ('77777777-7', 'David', 'Gutiérrez', '1994-09-09', 'Infantil'),
  ('88888888-8', 'Sofía', 'Rodríguez', '1997-10-10', 'Mujer'),
  ('99999999-9', 'Diego', 'Hernández', '1998-11-11', 'Hombre'),
  ('12121212-1', 'Lucía', 'Soto', '1999-12-12', 'Telefonía'),
  ('23232323-2', 'Fernando', 'Castillo', '1990-01-13', 'Televisor'),
  ('34343434-3', 'Carla', 'Fuentes', '1991-02-14', 'Temporada'),
  ('45454545-4', 'José', 'Moreno', '1992-03-15', 'Cocina');



