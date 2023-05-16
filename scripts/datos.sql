INSERT INTO mercadito.dbo.tipo_proveedor (proveedor_tipo_id, proveedor_tipo) VALUES 
(1, 'pago al momento'),
(2, 'pago por orden')

INSERT INTO mercadito.dbo.proveedores (proveedor_id, proveedor_tipo, nombre) VALUES
(1, 1, 'colgate'),
(2, 1, 'cocacola'),
(3, 1, 'pepsi'),
(4, 2, 'zambos'),
(5, 2, 'taquirito'),
(6, 1, 'Nestlé'),
(7, 1, 'Unilever'),
(8, 2, 'Kraft'),
(9, 2, 'Danone'),
(10, 1, 'General Mills');

INSERT INTO mercadito.dbo.productos (producto_id, proveedor_id, nombre, costo, cantidad, cantidad_estante) VALUES
(1, 1, 'pasta de dientes colgate', 40, 100, 25),
(2, 1, 'pasta blanqueadora', 45, 100, 25),
(3, 3, 'pepsi 3 litros', 55, 60, 20),
(4, 2, 'cocacola 2 litros', 30, 80, 35),
(5, 1, 'cocacola 3 litros', 55, 60, 25),
(6, 6, 'cereal nestle', 400, 100, 25),
(7, 6, 'leche nestle', 400, 100, 25),
(8, 6, 'cafe nestle', 300, 100, 25),
(9, 9, 'leche danone', 200, 100, 25),
(10, 9, 'leche danone', 200, 100, 25);

INSERT INTO mercadito.dbo.clientes (cliente_id, nombre, linea_credito, telefono, correo, direccion) VALUES 
(1, 'Omar Meza', 50000, '89455678', 'omar@gmail.com', 'choloma'),
(2, 'Arantza Ramirez', 5000, '89455677', 'aran@gmail.com', 'valle verde'),
(3, 'Agustin Franco', 8000, '89455675', 'agusting@gmail.com', 'San Pedro sula'),
(4, 'Gorka Puente', 0, '89452678', 'gorka@gmail.com', 'lima'),
(5, 'Isidro Sanchez', 50, '89445678', 'isidro@gmail.com', 'la ceiba'),
(6, 'Juan Vera', 80, '89455678', 'juan@gmail.com', 'villanueva'),
(7, 'Joaquim Castillo', 850, '99455678', 'joaquim@gmail.com', 'villanueva'),
(8, 'Aurea Barreiro', 300, '79455678', 'aurera@gmail.com', 'choloma'),
(9, 'Arancha Lora', 200, '69455678', 'arancha@gmail.com', 'la ceiba'),
(10, 'Tomas Pedrosa', 100, '59455678', 'tomas@gmail.com', 'la esperanza');


INSERT INTO mercadito.dbo.ventas (venta_id, cliente_id, producto_id, cantidad, precio, fecha) VALUES
(1, 1, 1, 10, 250, '2023/03/21'),
(2, 1, 2, 5, 300, '2023/03/21'),
(3, 1, 4, 3, 200, '2023/03/21'),
(4, 2, 8, 4, 500, '2023/03/21'),
(5, 3, 10, 2, 300, '2023/03/21'),
(6, 7, 9, 1, 200, '2023/03/21'),
(7, 8, 9, 1, 100, '2023/03/21'),
(8, 9, 9, 12, 20, '2023/03/21'),
(9, 10, 7, 13, 40, '2023/03/21'),
(10, 8, 6, 5, 60, '2023/03/21');

INSERT INTO mercadito.dbo.pagos (pago_id, cliente_id, cantidad_pagada, fecha) VALUES
(1, 1, 500, '2023/03/21'),
(2, 3, 800, '2023/03/21'),
(3, 1, 100, '2023/03/21'),
(4, 1, 100, '2023/03/21'),
(5, 1, 200, '2023/03/21'),
(6, 10, 600, '2023/03/21'),
(7, 1, 100, '2023/03/21'),
(8, 2, 50, '2023/03/21'),
(9, 4, 400, '2023/03/21'),
(10, 7, 600, '2023/03/21');

INSERT INTO mercadito.dbo.gastos (gasto_id, luz, telefono, agua, impuesto, fecha) VALUES
(1, 300, 410, 500, 800, '2023/01/21'),
(2, 350, 300, 500, 800, '2023/02/21'),
(3, 380, 340, 500, 800, '2023/03/21'),
(4, 310, 400, 500, 800, '2023/04/21'),
(5, 320, 500, 500, 800, '2023/05/21'),
(6, 340, 410, 500, 800, '2023/06/21'),
(7, 360, 600, 500, 800, '2023/07/21'),
(8, 380, 700, 500, 800, '2023/08/21'),
(9, 340, 100, 500, 300, '2023/09/21'),
(10, 360, 200, 500, 300, '2023/10/21');

INSERT INTO mercadito.dbo.caja (id, fecha_inicio, fecha_final, ingresos) VALUES
(1, '2023/01/1', '2023/01/21', 8000),
(2, '2023/02/1', '2023/02/21', 16000),
(3, '2023/03/1', '2023/03/21', 15000),
(4, '2023/04/1', '2023/04/21', 6000),
(5, '2023/05/1', '2023/05/21', 6500),
(6, '2023/06/1', '2023/06/21', 8000),
(7, '2023/07/1', '2023/07/21', 9000),
(8, '2023/08/1', '2023/08/21', 10000),
(9, '2023/09/1', '2023/09/21', 6500),
(10, '2023/10/1', '2023/10/21', 11000);
