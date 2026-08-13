-- ══════════════════════════════════════════
-- MiniStore — Soluciones con Outer JOINs
-- Autor: Matías Morelli
-- Fecha: 13-08-2026
-- ══════════════════════════════════════════
-- ── CONSULTA 1: LEFT JOIN ─────────────────
-- Pregunta de negocio: ¿Qué productos del catálogo nunca fueron vendidos?
-- Mostrá todos los productos y sus ventas asociadas.
-- Los productos sin ventas aparecerán con NULL en las columnas de ventas.
-- Los productos del catálogo que nunca fueron vendidos son el Hub USB-C 7p y el Parlante Bluetooth.
SELECT 
T1.nombre,
T2.venta_id
FROM productos AS T1
LEFT JOIN ventas AS T2
ON T1.producto_id=T2.producto_id
WHERE venta_id IS NULL;
-- ── CONSULTA 2: RIGHT JOIN ────────────────
-- Pregunta de negocio: ¿Existen ventas registradas con productos
-- que no figuran en nuestro catálogo? (posible error de carga de datos)
-- Los registros huérfanos aparecerán con NULL en las columnas de productos.
-- Si, existen producto no categorizados en nuestro catalagos que tuvieran ventas. venta_id 10, porducto_id 999
SELECT 
T1.nombre,
T2.venta_id,
T2.producto_id
FROM productos AS T1
RIGHT JOIN ventas AS T2
ON T1.producto_id=T2.producto_id
WHERE nombre IS NULL;
-- ── CONSULTA 3: FULL OUTER JOIN ───────────
-- Pregunta de negocio: Vista completa de auditoría que muestre
-- todos los productos y todas las ventas sin perder ninguna fila,
-- identificando tanto productos sin ventas como ventas sin producto.

SELECT 
T1.nombre,
T2.venta_id
FROM productos AS T1
LEFT JOIN ventas AS T2
ON T1.producto_id=T2.producto_id
WHERE venta_id IS NULL
UNION
SELECT 
T1.nombre,
T2.venta_id,
T2.producto_id
FROM productos AS T1
RIGHT JOIN ventas AS T2
ON T1.producto_id=T2.producto_id
WHERE nombre IS NULL;
