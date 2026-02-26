--Ejercicio 7 accesorios con precio menor a 500

SELECT nombre,
       precio
FROM productos
WHERE categoria = 'Accesorios'
  AND precio < 500;

 
--SELECT nombre, precio Obtiene unicamente el nombre y el precio de los productos.
--FROM productos Indica la tabla de donde se extrae la informacion.
--WHERE categoria = 'Accesorios' Filtra los productos que pertenecen a la categoria Accesorios.
--precio < 500 Restringe los resultados a aquellos cuyo precio sea menor a 500.
--AND Permite aplicar ambas condiciones al mismo tiempo, exigiendo que se cumplan simultaneamente.