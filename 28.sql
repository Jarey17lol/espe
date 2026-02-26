--Ejercicio 28 clientes de riesgo (sin compras recientes)

SELECT 
    c.nombre,
    c.correo,
    MAX(v.fecha_venta) AS ultima_compra
FROM clientes c
JOIN ventas v 
    ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nombre, c.correo
HAVING MAX(v.fecha_venta) < DATE('now', '-180 days');


--Se selecciona el nombre y el correo del cliente.
--MAX(v.fecha_venta) AS ultima_compra obtiene la fecha mas reciente en la que el cliente realizo una compra.
--Se realiza un JOIN entre clientes y ventas para relacionar cada cliente con sus transacciones.
--GROUP BY c.id_cliente, c.nombre, c.correo agrupa los datos por cliente para calcular correctamente su ultima compra.
--HAVING MAX(v.fecha_venta) < DATE('now', '-180 days') filtra unicamente a los clientes cuya ultima compra fue hace mas de 180 dias, identificándolos como clientes de riesgo.