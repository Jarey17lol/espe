--Ejercicio 24 metricas mensuales para 2025

SELECT 
    strftime('%m', fecha_venta) AS mes,
    SUM(total_venta) AS ingreso_total,
    COUNT(id_venta) AS numero_transacciones,
    AVG(total_venta) AS ticket_promedio
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
GROUP BY mes
ORDER BY mes;

--SELECT strftime('%m', fecha_venta) AS mes Extrae el mes de la fecha de venta y le asigna el alias mes.
--SUM(total_venta) Calcula el ingreso total generado en cada mes.
--AS ingreso_total Asigna un nombre al total mensual calculado.
--COUNT(id_venta) Cuenta el numero de transacciones realizadas en cada mes.
--AS numero_transacciones Asigna un nombre al total de ventas mensuales.
--AVG(total_venta) Calcula el ticket promedio mensual.
--AS ticket_promedio Asigna un nombre al promedio calculado.
--FROM ventas Define la tabla de donde se obtienen los datos.
--WHERE strftime('%Y', fecha_venta) = '2025' Filtra únicamente las ventas realizadas en el año 2025.
--GROUP BY mes Agrupa los resultados por mes para que los cálculos se realicen mensualmente.
--ORDER BY mes Ordena los resultados de enero a diciembre según el numero de mes.