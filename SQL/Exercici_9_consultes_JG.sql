USE Ejercicio9;
-- Aqui van les consultes

-- CIN PREGUTNES DE NURIA RESPON ERICK:
-- 1.	¿Cuántos usuarios han registrado una dirección de correo electrónico en el sistema?
SELECT COUNT(*) AS total_usuarios_con_correo FROM Usuarios WHERE Correo_usuario IS NOT NULL;

-- 2.	¿Cuántos usuarios están registrados en el sistema?
-- 3.	¿Cuál es el nombre de los productos que están actualmente en promoción?
-- 4.	¿Cuál es el nombre del usuario que ha realizado más ventas en el último mes?
-- 5.	¿Cuál es el nombre del producto y la cantidad disponible de los productos que están asociados con una promoción que está vigente en la fecha actual?


-- CONSULTES DE ERIC RESPON JORDI: 
-- 1.	¿Cuál es el precio más alto entre todos los productos registrados en el sistema?
SELECT MAX(precio) AS precio_mas_alto FROM Producto;

-- 2.	¿Cuántas ventas han sido procesadas en el último mes?
SELECT COUNT(*) AS ventas_procesadas FROM Ventas WHERE fecha_venta >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND fecha_venta <= CURDATE();

-- 3.	¿Cuál es el total de productos disponibles en la categoría "Ropa"?
SELECT COUNT(*) AS total_productos_ropa FROM Producto WHERE categoria = 'Ropa';

-- 4.	¿Cuál es la fecha de entrega más próxima entre todas las ventas realizadas?
SELECT MIN(fecha_entrega) AS fecha_entrega_proxima FROM Ventas WHERE fecha_entrega >= CURDATE();

-- 5.	¿Cuántos usuarios tienen activada la autenticación de dos factores?
SELECT COUNT(*) AS autentificacionDosFactores_usuario FROM Usuarios WHERE autentificacionDosFactores_usuario = 'true';



-- CINC CONSULTES DE JORDI RESPON NURIA:
-- 1.	¿Cuantas personas han efectuado compras?
SELECT count(distinct uv.id_usuario) AS cantidad_personas_compradoras FROM Usuario_Ventas uv;

-- 2.	¿Cuantos productos se han vendido de la categoria Ropa?
-- 3.	¿Cual es el total de ingresos por ventas? 
SELECT sum(precio) AS total_ingresos FROM Producto JOIN Ventas_Producto_Promociones ON Producto.id_producto = Ventas_Producto_Promociones.id_producto
JOIN Ventas ON Ventas_Producto_Promociones.id_ventas = Ventas.id_ventas;

-- 4.	¿Cual es el promedio de ingresos por venta?
-- 5.	¿Cual es la promoción más vendida?
