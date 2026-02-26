--Ejercicio 9 venta con mayor monto registrado

SELECT MAX(total_venta) AS mayor_venta
FROM ventas;

--MAX(total_venta) Funcion agregada que obtiene el valor mas alto registrado en la columna total_venta.
--AS mayor_venta Asigna un nombre al resultado obtenido.
--FROM ventas Indica que la informacion se toma de la tabla ventas.
--Permite identificar el monto mas alto registrado en una venta.