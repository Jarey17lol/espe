--Ejercicio 20 ingreso total, unidades vendidas y ticket promedio por categoria

SELECT 
    p.categoria,
    SUM(v.total_venta) AS ingreso_total,
    SUM(d.cantidad) AS total_unidades,
    AVG(v.total_venta) AS ticket_promedio
FROM detalle_ventas d
JOIN productos p 
    ON d.id_producto = p.id_producto
JOIN ventas v 
    ON d.id_venta = v.id_venta
GROUP BY p.categoria;

--SELECT p.categoria Selecciona la categoria del producto.
--SUM(v.total_venta) Calcula el ingreso total generado por cada categoria.
--AS ingreso_total Asigna un nombre al resultado de la suma de ingresos.
--SUM(d.cantidad) Suma la cantidad total de unidades vendidas por categoria.
--AS total_unidades Asigna un nombre al total de unidades vendidas.
--AVG(v.total_venta) Calcula el valor promedio de las ventas (ticket promedio) por categoria.
--AS ticket_promedio Asigna un nombre al promedio calculado.
--FROM detalle_ventas d Define la tabla principal con alias d.
--JOIN productos p ON d.id_producto = p.id_producto Relaciona cada detalle con su producto correspondiente.
--JOIN ventas v ON d.id_venta = v.id_venta Relaciona cada detalle con la venta a la que pertenece.
--GROUP BY p.categoria Agrupa los resultados por categoria para que los calculos se realicen por cada una.