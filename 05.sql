--Ejercicio 5 clientes ordenados alfabeticamente

SELECT nombre,
       correo,
       fecha_nacimiento
FROM clientes
ORDER BY nombre ASC;

--SELECT nombre, correo, fecha_nacimiento Obtiene unicamente las columnas indicadas de la tabla clientes.
--FROM clientes Especifica la tabla de donde se extraen los datos.
--ORDER BY nombre ASC Ordena los registros alfabeticamente por el nombre, de la A a la Z.