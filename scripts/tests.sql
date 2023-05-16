SELECT * FROM mercadito.dbo.gastos g;
SELECT * FROM mercadito.dbo.productos p;
SELECT * FROM mercadito.dbo.productos p WHERE p.proveedor_id = 1;

SELECT * FROM mercadito.dbo.productos p 
INNER JOIN mercadito.dbo.proveedores p2 ON p.proveedor_id = p2.proveedor_id WHERE p.proveedor_id = 2;

SELECT * FROM mercadito.dbo.gastos g WHERE g.fecha > '2023/03/20';

SELECT * FROM mercadito.dbo.clientes c WHERE c.linea_credito > 1000;

SELECT * FROM mercadito.dbo.ventas v WHERE v.total  > 800;