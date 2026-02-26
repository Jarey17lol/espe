--Ejercicio 14 ventas realizadas en 2025 (más recientes primero)

SELECT *
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
ORDER BY fecha_venta DESC;

--SELECT * Obtiene todas las columnas de la tabla ventas.
--FROM ventas Indica la tabla de donde se extraen los datos.
--strftime('%Y', fecha_venta) = '2025' extrae el año de la fecha_venta para filtrar unicamente las ventas realizadas en 2025.
--ORDER BY fecha_venta DESC Ordena los resultados desde la venta mas reciente hasta la mas antigua.
--En SQLite se utiliza strftime('%Y', columna_fecha) porque no existe la funcion YEAR() para extraer el año directamente.