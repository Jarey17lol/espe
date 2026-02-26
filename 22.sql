--Ejercicio 22 segmentación de clientes por nivel de gasto

SELECT 
    c.nombre,
    SUM(v.total_venta) AS total_gastado,
    CASE 
        WHEN SUM(v.total_venta) > 5000 THEN 'Alto Valor'
        WHEN SUM(v.total_venta) BETWEEN 2000 AND 5000 THEN 'Medio Valor'
        ELSE 'Bajo Valor'
    END AS nivel_cliente
FROM ventas v
JOIN clientes c 
    ON v.id_cliente = c.id_cliente
GROUP BY v.id_cliente;

--SELECT c.nombre Selecciona el nombre del cliente.
--SUM(v.total_venta) Calcula el total acumulado que ha gastado cada cliente.
--AS total_gastado Asigna un nombre al total calculado.
--CASE Permite clasificar a los clientes según su nivel de gasto.
--WHEN SUM(v.total_venta) > 5000 THEN 'Alto Valor' Clasifica como “Alto Valor” si supera 5000.
--WHEN SUM(v.total_venta) BETWEEN 2000 AND 5000 THEN 'Medio Valor' Clasifica como “Medio Valor” si está entre 2000 y 5000.
--ELSE 'Bajo Valor' Clasifica como “Bajo Valor” si es menor a 2000.
--END AS nivel_cliente Asigna un nombre a la categoría calculada.
--FROM ventas v Define la tabla principal con alias v.
--JOIN clientes c ON v.id_cliente = c.id_cliente Relaciona cada venta con su cliente correspondiente.
--GROUP BY v.id_cliente Agrupa los registros por cliente para calcular el total individual y su clasificación.