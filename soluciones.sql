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
-- ── CONSULTA 2: RIGHT JOIN ────────────────
-- Pregunta de negocio: ¿Existen ventas registradas con productos
-- que no figuran en nuestro catálogo? (posible error de carga de datos)
-- Los registros huérfanos aparecerán con NULL en las columnas de productos.
-- Si, existen producto no categorizados en nuestro catalagos que tuvieran ventas. venta_id 10, porducto_id 999
-- ── CONSULTA 3: FULL OUTER JOIN ───────────
-- Pregunta de negocio: Vista completa de auditoría que muestre
-- todos los productos y todas las ventas sin perder ninguna fila,
-- identificando tanto productos sin ventas como ventas sin producto.
nombre                venta_id    producto_id
Laptop Pro 15      	      1          	101
Laptop Pro 15	           4      	    101
Mouse Inalámbrico	        2      	    102
Mouse Inalámbrico    	    8        	  102
Monitor 4K 27"      	    3        	  103
Teclado Mecánico	        5	          104
Auriculares BT Pro	      6        	  105
SSD Externo 1TB	          7      	    106
Webcam HD 1080p	          9	          107
Hub USB-C 7p	            NULL	      NULL
Parlante Bluetooth	      NULL    	  NULL
NULL	                    10	        999
