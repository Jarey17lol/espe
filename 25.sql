-- Ejercicio 25 Cliente con mayor variedad de productos distintos

SELECT 
    c.nombre,
    COUNT(DISTINCT d.id_producto) AS variedad_productos
FROM clientes c
JOIN ventas v 
    ON c.id_cliente = v.id_cliente
JOIN detalle_ventas d 
    ON v.id_venta = d.id_venta
GROUP BY c.id_cliente, c.nombre
ORDER BY variedad_productos DESC
LIMIT 1;


--SELECT c.nombre Selecciona el nombre del cliente.
--COUNT(DISTINCT d.id_producto) Cuenta la cantidad de productos distintos que ha comprado cada cliente.
--AS variedad_productos Asigna un nombre al total de productos diferentes adquiridos.
--FROM clientes c Define la tabla principal con alias c.
--JOIN ventas v ON c.id_cliente = v.id_cliente Relaciona cada cliente con sus ventas.
--JOIN detalle_ventas d ON v.id_venta = d.id_venta Relaciona cada venta con los productos incluidos en ella.
--GROUP BY c.id_cliente, c.nombre Agrupa los registros por cliente para calcular la variedad individual.
--ORDER BY variedad_productos DESC Ordena los resultados de mayor a menor según la cantidad de productos distintos.
--LIMIT 1 Devuelve únicamente el cliente con mayor variedad de productos comprados.