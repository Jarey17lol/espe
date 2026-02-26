--Ejercicio 6 monto total historico de ventas

SELECT SUM(total_venta) AS monto_total_historico
FROM ventas;

--SUM(total_venta) Funcion agregada que suma todos los valores de la columna total_venta.
--AS monto_total_historico asigna un nombre al resultado de la suma.
--FROM ventas Indica que los datos se toman de la tabla ventas.
--Permite obtener el total acumulado de ingresos registrados historicamente.