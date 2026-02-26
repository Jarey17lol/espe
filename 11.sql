--Ejercicio 11 total de líneas de detalle de venta

SELECT COUNT(*) AS total_detalles
FROM detalle_ventas;

--COUNT(*) Cuenta el total de registros existentes en la tabla detalle_ventas.
--AS total_detalles Asigna un nombre al resultado del conteo.
--FROM detalle_ventas Indica que el cálculo se realiza sobre esa tabla.
--Cada registro en detalle_ventas representa un producto incluido dentro de una venta.