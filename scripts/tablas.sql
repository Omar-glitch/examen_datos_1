DROP DATABASE IF EXISTS mercadito;

CREATE DATABASE mercadito;

DROP TABLE IF EXISTS mercadito.dbo.tipo_proveedor;

CREATE TABLE mercadito.dbo.tipo_proveedor (
	proveedor_tipo_id INT NOT NULL,
	proveedor_tipo VARCHAR(25),
	PRIMARY KEY (proveedor_tipo_id)
);

DROP TABLE IF EXISTS mercadito.dbo.proveedores;
	
CREATE TABLE mercadito.dbo.proveedores (
	proveedor_id INT NOT NULL,
	proveedor_tipo INT NOT NULL,
	nombre VARCHAR(25),
	PRIMARY KEY (proveedor_id),
	CONSTRAINT fk_pr FOREIGN KEY (proveedor_id) REFERENCES mercadito.dbo.proveedores (proveedor_id)
);

DROP TABLE IF EXISTS mercadito.dbo.productos;

CREATE TABLE mercadito.dbo.productos (
	producto_id INT NOT NULL,
	proveedor_id INT NOT NULL,
	nombre VARCHAR(40),
	costo INT NOT NULL,
	precio AS costo + (costo * 0.3),
	cantidad INT,
	cantidad_estante INT,
	PRIMARY KEY (producto_id),
	CONSTRAINT fk_pr_id FOREIGN KEY (proveedor_id) REFERENCES mercadito.dbo.proveedores (proveedor_id)
);

DROP TABLE IF EXISTS mercadito.dbo.clientes;

CREATE TABLE mercadito.dbo.clientes (
	cliente_id INT NOT NULL,
	nombre VARCHAR(30),
	linea_credito INT,
	telefono VARCHAR(8),
	correo VARCHAR(35),
	direccion VARCHAR(50),
	PRIMARY KEY (cliente_id)
);

DROP TABLE IF EXISTS mercadito.dbo.ventas;

CREATE TABLE mercadito.dbo.ventas (
	venta_id INT NOT NULL,
	cliente_id INT NOT NULL,
	producto_id INT NOT NULL,
	cantidad INT NOT NULL,
	precio INT NOT NULL,
	total AS (precio * cantidad),
	fecha DATE NOT NULL,
	PRIMARY KEY (venta_id),
	CONSTRAINT fk_pd FOREIGN KEY (producto_id) REFERENCES mercadito.dbo.productos (producto_id),
	CONSTRAINT fk_cl_id FOREIGN KEY (cliente_id) REFERENCES mercadito.dbo.clientes (cliente_id)
);

DROP TABLE IF EXISTS mercadito.dbo.pagos;

CREATE TABLE mercadito.dbo.pagos (
	pago_id INT NOT NULL,
	cliente_id INT NOT NULL,
	cantidad_pagada INT NOT NULL,
	fecha DATE NOT NULL,
	PRIMARY KEY (pago_id),
	CONSTRAINT fk_cl FOREIGN KEY (cliente_id) REFERENCES mercadito.dbo.clientes (cliente_id)
);


DROP TABLE IF EXISTS mercadito.dbo.gastos;

CREATE TABLE mercadito.dbo.gastos (
	gasto_id INT NOT NULL,
	luz INT NOT NULL,
	telefono INT NOT NULL,
	agua INT NOT NULL,
	impuesto INT NOT NULL,
	gasto_total AS (luz + telefono + agua + impuesto),
	fecha DATE NOT NULL,
	PRIMARY KEY (gasto_id)
);

DROP TABLE IF EXISTS mercadito.dbo.caja;

CREATE TABLE mercadito.dbo.caja (
	id INT NOT NULL,
	fecha_inicio DATE NOT NULL,
	fecha_final DATE NOT NULL,
	ingresos INT,
	PRIMARY KEY (id),
);
