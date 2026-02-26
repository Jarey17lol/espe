--Ejercicio 15 accesorio más barato disponible

SELECT nombre, precio
FROM productos
WHERE categoria = 'Accesorios'
ORDER BY precio ASC
LIMIT 1;

--SELECT nombre, precio Obtiene unicamente el nombre y el precio de los productos.
--FROM productos Indica la tabla de donde se extraen los datos.
--WHERE categoria = 'Accesorios' filtra solo los productos que pertenecen a esa categoria.
--ORDER BY precio ASC Ordena los resultados de menor a mayor precio.
--LIMIT 1 Restringe el resultado a un solo registro, mostrando el accesorio mas economico disponible.