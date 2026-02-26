--Ejercicio 21 clientes con uso frecuente del cupón

SELECT 
    c.nombre,
    COUNT(*) AS veces_usado
FROM ventas v
JOIN clientes c 
    ON v.id_cliente = c.id_cliente
WHERE v.cupon_usado = 'ULTIMO_SUSPIRO'
GROUP BY v.id_cliente
HAVING COUNT(*) >= 3;


--SELECT c.nombre Selecciona el nombre del cliente.
--COUNT() Cuenta cuántas veces el cliente utilizo el cupon.
--AS veces_usado Asigna un nombre al total de usos del cupon.
--FROM ventas v Define la tabla principal con alias v.
--JOIN clientes c ON v.id_cliente = c.id_cliente Relaciona cada venta con el cliente correspondiente.
--WHERE v.cupon_usado = 'ULTIMO_SUSPIRO' Filtra unicamente las ventas donde se utilizo ese cupon.
--GROUP BY v.id_cliente Agrupa los registros por cliente para contar los usos individuales.
--HAVING COUNT() >= 3 Filtra los resultados para mostrar solo los clientes que usaron el cupon tres o mas veces.