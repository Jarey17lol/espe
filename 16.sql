--Ejercicio 16 cliente con mayor gasto acumulado

SELECT 
    c.nombre,
    SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v 
    ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nombre
ORDER BY SUM(v.total_venta) DESC
LIMIT 1;

--SELECT c.nombre selecciona el nombre del cliente.
--SUM(v.total_venta) calcula el total acumulado de compras realizadas por cada cliente.
--AS total_gastado Asigna un nombre al resultado de la suma.
--FROM clientes c Indica la tabla principal y define un alias (c).
--JOIN ventas v ON c.id_cliente = v.id_cliente Relaciona cada cliente con sus ventas mediante el id_cliente.
--GROUP BY c.id_cliente, c.nombre Agrupa los registros para calcular el total gastado por cada cliente.
--ORDER BY SUM(v.total_venta) DESC Ordena los resultados de mayor a menor según el total gastado.
--LIMIT 1 Muestra únicamente el cliente con el mayor gasto acumulado.