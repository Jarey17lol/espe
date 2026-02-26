--Ejercicio 3 paracaidas mas caro

SELECT nombre, precio
FROM productos
WHERE categoria = 'Paracaídas'
AND precio = (
    SELECT MAX(precio)
    FROM productos
    WHERE categoria = 'Paracaídas'
);

--WHERE Filtra los productos que pertenecen a la categoria 'Paracaídas'.
--MAX() Función agregada que obtiene el precio mas alto dentro de esa categoria.
--Subconsulta Se utiliza para calcular el precio maximo y luego compararlo en la consulta principal.
--SELECT Devuelve el nombre y el precio del producto que cumple esa condición.