--Ejercicio 23 cinco productos con mayor ingreso total generado

SELECT 
    p.nombre,
    SUM(d.cantidad * d.precio_unitario) AS ingreso_total
FROM detalle_ventas d
JOIN productos p 
    ON d.id_producto = p.id_producto
GROUP BY d.id_producto
ORDER BY ingreso_total DESC
LIMIT 5;

--SELECT p.nombre Selecciona el nombre del producto.
--SUM(d.cantidad * d.precio_unitario) Calcula el ingreso total generado por cada producto multiplicando la cantidad vendida por su precio unitario y acumulándolo.
--AS ingreso_total Asigna un nombre al total de ingresos calculado.
--FROM detalle_ventas d Define la tabla principal con alias d.
--JOIN productos p ON d.id_producto = p.id_producto Relaciona cada detalle de venta con su producto correspondiente.
--GROUP BY d.id_producto Agrupa los registros por producto para calcular el ingreso total individual.
--ORDER BY ingreso_total DESC Ordena los resultados de mayor a menor según el ingreso generado.
--LIMIT 5 Devuelve únicamente los cinco productos con mayor ingreso total.