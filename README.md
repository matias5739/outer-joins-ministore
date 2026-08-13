1. ¿Por qué usaste LEFT JOIN para la Consulta 1 y no INNER JOIN? ¿Qué se perdería si usaras INNER JOIN?
LEFT JOIN Trae todas las filas de la tabla izquierda, aunque no tengan coincidencia en la derecha.
Esto muestra todos los productos, incluso los que no tienen ventas. Si un producto no tiene ventas → id_venta = NULL

INNER JOIN solo muestra coincidencias. Si un producto no tiene ventas, desaparece del resultado.

2. ¿Por qué usaste RIGHT JOIN para la Consulta 2? ¿Qué tabla está a la izquierda y cuál a la derecha?
Para ver todas las ventas, incluyendo las ventas de los productos inexistentes en el catálogo. Si un producto no existe → nombre_producto = NULL

A la izquierda tenemos la tabla productos y a la derecha ventas

3. ¿Qué representan los valores NULL en cada resultado?
Significa que valor no se encontró/es desconocido. No es vacío, no es cero (0), no es 'NULL' texto.
En las consultas anteriores, no se encontraron ventas asociadas a esos productos; y
no se encontraron esos productos vendidos en el catálogo de productos

4. ¿Cuándo usarías FULL OUTER JOIN en un caso real de negocio?
FULL OUTER JOIN combina las funciones/sintaxis LEFT JOIN Y RIGHT JOIN. Se usa para ver todo, incluso:
