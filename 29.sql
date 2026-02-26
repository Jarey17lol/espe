--Ejercicio 29 porcentaje de ingresos generados por el cupón

SELECT 
    (SUM(CASE WHEN cupon_usado = 'ULTIMO_SUSPIRO' THEN total_venta ELSE 0 END) 
     / SUM(total_venta)) * 100 AS porcentaje_cupon
FROM ventas;


--SUM(total_venta) calcula el ingreso total de todas las ventas.
--SUM(CASE WHEN cupon_usado = 'ULTIMO_SUSPIRO' THEN total_venta ELSE 0 END) suma unicamente los ingresos donde se utilizo el cupon indicado.
--Se divide el total generado por el cupon entre el total general de ventas.
--Se multiplica por 100 para convertir la proporcion en porcentaje.
--AS porcentaje_cupon asigna un nombre al resultado final.