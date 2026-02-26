--Ejercicio 27 diferencia entre mejor y peor mes de 2025

WITH ingresos_mensuales AS (
    SELECT 
        strftime('%m', fecha_venta) AS mes,
        SUM(total_venta) AS ingreso_total
    FROM ventas
    WHERE strftime('%Y', fecha_venta) = '2025'
    GROUP BY mes
)

SELECT 
    MAX(ingreso_total) - MIN(ingreso_total) AS diferencia_ingresos
FROM ingresos_mensuales;


--WITH ingresos_mensuales AS (...) Crea una CTE que calcula el ingreso total por cada mes del año 2025.
--strftime('%m', fecha_venta) AS mes Extrae el mes de cada venta.
--SUM(total_venta) AS ingreso_total Calcula el ingreso total mensual.
--WHERE strftime('%Y', fecha_venta) = '2025' Filtra únicamente las ventas del año 2025.
--GROUP BY mes Agrupa los resultados por mes.
--SELECT MAX(ingreso_total) - MIN(ingreso_total) Calcula la diferencia entre el mayor y el menor ingreso mensual.
--AS diferencia_ingresos Asigna un nombre al resultado final.
--FROM ingresos_mensuales Utiliza la CTE previamente creada para obtener los valores maximos y mínimos.