--Ejercicio 2 productos categoria Paracaidas ordenados de mayor a menor precio

SELECT nombre, precio
FROM productos
WHERE categoria = 'Paracaídas'
ORDER BY precio DESC;

--WHERE se utiliza para filtrar los registros según una condicion especifica.
--ORDER BY permite ordenar los resultados obtenidos en una consulta.
--DESC indica que el orden sera descendente, es decir, de mayor a menor.