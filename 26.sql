--Ejercicio 26 clientes que solo compraron Paracaidas

SELECT 
    c.nombre,
    SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v 
    ON c.id_cliente = v.id_cliente
WHERE c.id_cliente NOT IN (
    SELECT DISTINCT v2.id_cliente
    FROM ventas v2
    JOIN detalle_ventas d2 
        ON v2.id_venta = d2.id_venta
    JOIN productos p2 
        ON d2.id_producto = p2.id_producto
    WHERE p2.categoria = 'Accesorios'
)
GROUP BY c.id_cliente, c.nombre;


--SELECT c.nombre Selecciona el nombre del cliente.
--SUM(v.total_venta) Calcula el total gastado por cada cliente.
--AS total_gastado Asigna un nombre al total acumulado.
--FROM clientes c Define la tabla principal con alias c.
--JOIN ventas v ON c.id_cliente = v.id_cliente Relaciona cada cliente con sus compras.
--WHERE c.id_cliente NOT IN (...) Excluye los clientes que aparecen en la subconsulta.
--Subconsulta (SELECT DISTINCT v2.id_cliente ...) Obtiene los clientes que compraron productos de la categoria 'Accesorios', uniendo ventas, detalle_ventas y productos y filtrando por esa categoría.
--GROUP BY c.id_cliente, c.nombre Agrupa los resultados por cliente para calcular el total individual.