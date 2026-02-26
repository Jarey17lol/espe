-- Ejercicio 29 Porcentaje de ingresos generados por el cupón

SELECT 
    (SUM(CASE WHEN cupon_usado = 'ULTIMO_SUSPIRO' THEN total_venta ELSE 0 END) 
     / SUM(total_venta)) * 100 AS porcentaje_cupon
FROM ventas;


--SUM(total_venta) calcula el ingreso total de todas las ventas.
--SUM(CASE WHEN cupon_usado = 'ULTIMO_SUSPIRO' THEN total_venta ELSE 0 END) suma únicamente los ingresos donde se utilizó el cupón indicado.
--Se divide el total generado por el cupón entre el total general de ventas.
--Se multiplica por 100 para convertir la proporción en porcentaje.
--AS porcentaje_cupon asigna un nombre al resultado final.