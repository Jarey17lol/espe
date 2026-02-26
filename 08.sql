--Ejercicio 8 ventas que usaron el cupon ULTIMO_SUSPIRO

SELECT COUNT(*) AS total_ventas_cupon
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO';

--COUNT(*) Cuenta el total de registros que cumplen la condicion.
--AS total_ventas_cupon Asigna un nombre al resultado del conteo.
--FROM ventas Indica que la informacion se obtiene de la tabla ventas.
--WHERE cupon_usado = 'ULTIMO_SUSPIRO' Filtra unicamente las ventas donde se utilizo ese cupon especifico.