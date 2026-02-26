--Ejercicio 18 clientes mayores de 60 con total gastado

SELECT 
    c.nombre,
    (CAST(strftime('%Y','now') AS INTEGER) 
     - CAST(strftime('%Y', c.fecha_nacimiento) AS INTEGER)) AS edad_aproximada,
    SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v 
    ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
HAVING edad_aproximada > 60;


--SELECT c.nombre Selecciona el nombre del cliente.
--(CAST(strftime('%Y','now') AS INTEGER) - CAST(strftime('%Y', c.fecha_nacimiento) AS INTEGER)) calcula una edad aproximada restando el año de nacimiento al año actual.
--AS edad_aproximada asigna un nombre al cálculo de la edad.
--SUM(v.total_venta) calcula el total gastado por cada cliente.
--AS total_gastado asigna un nombre al resultado de la suma.
--FROM clientes c Define la tabla principal con alias c.
--JOIN ventas v ON c.id_cliente = v.id_cliente Relaciona cada cliente con sus respectivas ventas.
--GROUP BY c.id_cliente Agrupa los registros por cliente para calcular el total individual.
--HAVING edad_aproximada > 60 Filtra únicamente los clientes cuya edad aproximada sea mayor a 60 años.