--Ejercicio 13 total de productos categoria Paracaidas

SELECT COUNT(*) AS total_paracaidas
FROM productos
WHERE categoria = 'Paracaídas';

--COUNT(*) Funcion agregada que cuenta el total de registros.
--AS total_paracaidas Asigna un nombre al resultado del conteo.
--FROM productos indica que los datos se obtienen de la tabla productos.
--WHERE categoria = 'Paracaídas' filtra unicamente los productos que pertenecen a esa categoria.
--El resultado muestra la cantidad total de productos clasificados como Paracaidas.