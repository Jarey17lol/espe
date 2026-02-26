--Ejercicio 30 analisis por rangos de edad

WITH clientes_con_edad AS (
    SELECT 
        id_cliente,
        nombre,
        (CAST(strftime('%Y','now') AS INTEGER) 
         - CAST(strftime('%Y', fecha_nacimiento) AS INTEGER)) AS edad
    FROM clientes
)

SELECT 
    CASE 
        WHEN edad BETWEEN 18 AND 29 THEN '18-29'
        WHEN edad BETWEEN 30 AND 39 THEN '30-39'
        WHEN edad BETWEEN 40 AND 49 THEN '40-49'
        WHEN edad BETWEEN 50 AND 59 THEN '50-59'
        WHEN edad BETWEEN 60 AND 69 THEN '60-69'
        ELSE '70+'
    END AS rango_edad,
    COUNT(DISTINCT c.id_cliente) AS total_clientes,
    COUNT(v.id_venta) AS total_transacciones,
    SUM(v.total_venta) AS ingreso_total
FROM clientes_con_edad c
LEFT JOIN ventas v 
    ON c.id_cliente = v.id_cliente
GROUP BY rango_edad
ORDER BY rango_edad;

--WITH clientes_con_edad Crea una CTE donde se calcula la edad aproximada de cada cliente a partir del año actual menos el año de nacimiento.
--En la consulta principal, CASE clasifica a los clientes en rangos de edad (18-29, 30-39, etc.).
--LEFT JOIN ventas permite incluir también a los clientes que no tienen compras registradas.
--COUNT(DISTINCT c.id_cliente) calcula la cantidad de clientes por rango.
--COUNT(v.id_venta) cuenta el total de transacciones en cada rango.
--SUM(v.total_venta) suma el ingreso generado por cada grupo etario.
--GROUP BY rango_edad agrupa los resultados según la clasificación definida.
--ORDER BY rango_edad ordena los rangos de forma ascendente.