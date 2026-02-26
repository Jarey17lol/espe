--Ejercicio 17 dinero dejado de ingresar por el cupón

SELECT 
    SUM((total_venta / 0.70) - total_venta) AS dinero_perdido
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO';


--SUM((total_venta / 0.70) - total_venta) Calcula y acumula el monto total descontado en las ventas.
--La expresión (total_venta / 0.70) estima el precio original antes del descuento, asumiendo que el cliente pago el 70% del valor real.
--Al restar total_venta se obtiene el importe descontado en cada venta.
--AS dinero_perdido asigna un nombre al resultado final.
--FROM ventas Indica que los datos se toman de la tabla ventas.
--WHERE cupon_usado = 'ULTIMO_SUSPIRO' Filtra unicamente las ventas donde se aplico ese cupon.
--El resultado muestra el total de ingresos que no se percibieron debido al descuento aplicado.