--Ejercicio 19 producto con mayor número de unidades vendidas

SELECT 
    p.nombre,
    SUM(d.cantidad) AS total_unidades
FROM detalle_ventas d
JOIN productos p 
    ON d.id_producto = p.id_producto
GROUP BY d.id_producto
ORDER BY total_unidades DESC
LIMIT 1;

--SELECT p.nombre Selecciona el nombre del producto.
--SUM(d.cantidad) Suma todas las unidades vendidas de cada producto.
--AS total_unidades Asigna un nombre al resultado de la suma.
--FROM detalle_ventas d Define la tabla principal con alias d.
--JOIN productos p ON d.id_producto = p.id_producto Relaciona cada detalle de venta con su producto correspondiente.
--GROUP BY d.id_producto Agrupa los registros por producto para calcular el total vendido por cada uno.
--ORDER BY total_unidades DESC Ordena los resultados de mayor a menor segun la cantidad total vendida.
--LIMIT 1 Devuelve unicamente el producto con mayor numero de unidades vendidas.