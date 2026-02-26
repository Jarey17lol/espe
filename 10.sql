--Ejercicio 10 clientes femeninas ordenadas por fecha de nacimiento (mas antiguas primero)

SELECT nombre,
       fecha_nacimiento
FROM clientes
WHERE genero = 'F'
ORDER BY fecha_nacimiento ASC;

--SELECT nombre, fecha_nacimiento Obtiene unicamente las columnas solicitadas de la tabla clientes.
--FROM clientes indica la tabla de donde se extraen los datos.
--WHERE genero = 'F' Filtra los registros para mostrar solo las clientes de genero femenino.
--ORDER BY fecha_nacimiento ASC Ordena los resultados desde la fecha mas antigua hasta la mas reciente.