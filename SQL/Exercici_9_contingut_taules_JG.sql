USE Ejercicio9;

INSERT INTO Usuarios (nombre_usuario, apellidos_usuario, correo_usuario, telefono_usuario, direccion_usuario, contrasena_usuario, fecha_nacimiento_usuario, rol_usuario, autentificacionDosFactores_usuario, fechaCreacion_usuario)
VALUES 
('John', 'Doe', 'john.doe@example.com', 123456789, '123 Calle Principal', 'password123', '1990-01-01 00:00:00', 'usuario', FALSE, NOW()),
('Jane', 'Doe', 'jane.doe@example.com', 987654321, '456 Calle Secundaria', 'password456', '1992-05-15 00:00:00', 'usuario', FALSE, NOW()),
('Alice', 'Smith', 'alice.smith@example.com', 555123456, '789 Calle Terciaria', 'password789', '1985-09-30 00:00:00', 'usuario', TRUE, NOW()),
('Bob', 'Johnson', 'bob.johnson@example.com', 444567890, '101 Calle Cuaternaria', 'passwordabc', '1988-07-20 00:00:00', 'administrador', TRUE, NOW()),
('Eva', 'Martinez', 'eva.martinez@example.com', 333456789, '202 Calle Quintenaria', 'passwordxyz', '1995-03-10 00:00:00', 'usuario', FALSE, NOW()),
('David', 'Garcia', 'david.garcia@example.com', 222345678, '303 Calle Sextenaria', 'passworddef', '1978-11-25 00:00:00', 'usuario', TRUE, NOW()),
('Sophia', 'Rodriguez', 'sophia.rodriguez@example.com', 111678945, '404 Calle Septenaria', 'password123', '1983-12-05 00:00:00', 'usuario', FALSE, NOW()),
('Michael', 'Lopez', 'michael.lopez@example.com', 999234567, '505 Calle Octonaria', 'password456', '1970-06-18 00:00:00', 'usuario', TRUE, NOW()),
('Emma', 'Perez', 'emma.perez@example.com', 888789012, '606 Calle Novenaria', 'password789', '1999-08-22 00:00:00', 'usuario', FALSE, NOW()),
('William', 'Gonzalez', 'william.gonzalez@example.com', 777567890, '707 Calle Decenaria', 'passwordabc', '1982-04-12 00:00:00', 'administrador', TRUE, NOW());

commit;

Select * from Usuarios;

INSERT INTO Producto (id_producto, nombre_producto, categoria, descripcion, precio, cantidad, fecha_creacion, fecha_caducidad)
VALUES 
(1, 'Camisa Blanca', 'Ropa', 'Camisa de algodón blanca, perfecta para vestir casual.', 29.99, 100, NOW(), NULL),
(2, 'Zapatos deportivos', 'Calzado', 'Zapatos deportivos ligeros y transpirables, ideales para correr.', 49.99, 75, NOW(), NULL),
(3, 'Monitor LED 24 pulgadas', 'Electrónik', 'Monitor LED de 24 pulgadas con resolución Full HD.', 159.99, 50, NOW(), NULL),
(4, 'Pantalones vaqueros', 'Ropa', 'Pantalones vaqueros ajustados, ideales para un look casual.', 39.99, 120, NOW(), NULL),
(5, 'Teclado inalámbrico', 'Electrónik', 'Teclado inalámbrico con conexión Bluetooth, compacto y ergonómico.', 34.99, 80, NOW(), NULL),
(6, 'Bolso de piel', 'Accesorios', 'Bolso de piel negro, elegante y espacioso.', 79.99, 60, NOW(), NULL),
(7, 'Cafetera automática', 'Electrodom', 'Cafetera automática con sistema de cápsulas, perfecta para un café rápido.', 129.99, 40, NOW(), NULL),
(8, 'Vestido de noche', 'Ropa', 'Vestido de noche elegante con detalles de pedrería, ideal para ocasiones especiales.', 89.99, 30, NOW(), NULL),
(9, 'Auriculares Bluetooth', 'Electrónik', 'Auriculares Bluetooth con cancelación de ruido, perfectos para escuchar música sin cables.', 59.99, 70, NOW(), NULL),
(10, 'Juego de mesa', 'Ocio', 'Juego de mesa clásico de estrategia, ideal para diversión en familia.', 24.99, 90, NOW(), NULL);

Select * from Producto;

INSERT INTO NotificacionEnvio (id_notificacionEnvio, fecha_notificacion_envio, texto_notificacion)
VALUES 
(1, '2024-05-13 08:00:00', 'Su pedido ha sido enviado y está en camino.'),
(2, '2024-05-12 09:30:00', 'Estimado cliente, estamos procesando su pedido.'),
(3, '2024-05-11 10:15:00', 'Su pedido ha sido empacado y está listo para ser enviado.'),
(4, '2024-05-10 11:45:00', 'Hemos recibido su pedido correctamente.'),
(5, '2024-05-09 12:20:00', 'Su pedido está siendo preparado para el envío.'),
(6, '2024-05-08 13:10:00', 'El envío de su pedido está programado para hoy.'),
(7, '2024-05-07 14:00:00', 'Su pedido está en proceso de embalaje.'),
(8, '2024-05-06 15:30:00', 'Gracias por realizar su pedido con nosotros.'),
(9, '2024-05-05 16:45:00', 'Se ha confirmado su pedido correctamente.'),
(10, '2024-05-04 17:20:00', 'Su pedido está siendo procesado y será enviado pronto.');

Select * from NotificacionEnvio;

INSERT INTO Ventas (fecha_venta, pago, descripcion_pago, id_notificacionEnvio, fecha_entrega, estado_pedido_procesado, estado_pedido_enviado, estado_pedido_cancelado)
VALUES 
('2024-05-13 08:00:00', 1, 'Pago realizado con tarjeta de crédito', 1, '2024-05-20 08:00:00', '2024-05-13 08:30:00', '2024-05-14 09:00:00', NULL),
('2024-05-12 09:30:00', 1, 'Pago realizado con PayPal', 2, '2024-05-19 09:30:00', '2024-05-12 10:00:00', '2024-05-15 10:30:00', NULL),
('2024-05-11 10:15:00', 0, 'Pago pendiente', 3, NULL, '2024-05-11 10:45:00', NULL, NULL),
('2024-05-10 11:45:00', 1, 'Pago realizado con tarjeta de débito', 4, '2024-05-18 11:45:00', '2024-05-10 12:15:00', '2024-05-13 12:45:00', NULL),
('2024-05-09 12:20:00', 1, 'Pago realizado con transferencia bancaria', 5, '2024-05-17 12:20:00', '2024-05-09 12:50:00', '2024-05-12 13:20:00', NULL),
('2024-05-08 13:10:00', 0, 'Pago pendiente', 6, NULL, '2024-05-08 13:40:00', NULL, NULL),
('2024-05-07 14:00:00', 1, 'Pago realizado con tarjeta de crédito', 7, '2024-05-15 14:00:00', '2024-05-07 14:30:00', '2024-05-10 15:00:00', NULL),
('2024-05-06 15:30:00', 1, 'Pago realizado con PayPal', 8, '2024-05-14 15:30:00', '2024-05-06 16:00:00', '2024-05-09 16:30:00', NULL),
('2024-05-05 16:45:00', 0, 'Pago pendiente', 9, NULL, '2024-05-05 17:15:00', NULL, NULL),
('2024-05-04 17:20:00', 1, 'Pago realizado con tarjeta de débito', 10, '2024-05-13 17:20:00', '2024-05-04 17:50:00', '2024-05-07 18:20:00', NULL);

Select * from Ventas;

INSERT INTO Promociones (tipo, fecha_inicio, fecha_fin, descripcion)
VALUES 
('Descuento 10%', '2024-05-15 00:00:00', '2024-05-20 23:59:59', '¡Aprovecha nuestro descuento del 10% en todos los productos!'),
('Envío gratis', '2024-05-18 00:00:00', '2024-05-25 23:59:59', '¡Compra ahora y recibe tu envío gratis en pedidos superiores a $50!'),
('Oferta del día', '2024-05-16 00:00:00', '2024-05-16 23:59:59', '¡Solo por hoy! Obtén un 20% de descuento en una selección de productos.'),
('Compra 2, lleva 3', '2024-05-19 00:00:00', '2024-05-21 23:59:59', '¡Compra 2 productos y llévate el tercero gratis!'),
('Descuento por membresía', '2024-05-14 00:00:00', '2024-05-31 23:59:59', '¡Exclusivo para miembros! Obtén un descuento adicional del 15% al realizar tu compra.');

Select * from Promociones;

INSERT INTO Reportes (fecha_reporte, nombre, id_producto, nombre_producto, cantidad, tipo_reporte, texto)
VALUES 
('2024-05-13 10:00:00', 'Juan Pérez', 1, 'Camisa Blanca', 2, 'Problema de calidad', 'Las costuras de la camisa están deshilachadas.'),
('2024-05-12 11:30:00', 'María García', 3, 'Monitor LED 24 pulgadas', 1, 'Defecto de fabricación', 'El monitor tiene píxeles muertos en la esquina superior derecha.'),
('2024-05-11 09:45:00', 'Carlos López', 5, 'Teclado inalámbrico', 3, 'Problema de funcionamiento', 'Las teclas "A" y "S" no responden correctamente.'),
('2024-05-10 08:20:00', 'Ana Martínez', 7, 'Cafetera automática', 1, 'Falta de piezas', 'La cafetera llegó incompleta, falta el contenedor de agua.'),
('2024-05-09 15:10:00', 'Pedro Rodríguez', 9, 'Auriculares Bluetooth', 2, 'Problema de sonido', 'Los auriculares producen un zumbido constante.'),
('2024-05-08 14:45:00', 'Laura Gómez', 2, 'Zapatos deportivos', 1, 'Talla incorrecta', 'Los zapatos recibidos son de una talla más grande de la solicitada.'),
('2024-05-07 12:30:00', 'Sofía Hernández', 4, 'Pantalones vaqueros', 2, 'Defecto estético', 'Los pantalones tienen una mancha difícil de quitar en el muslo izquierdo.'),
('2024-05-06 11:15:00', 'Pablo Díaz', 6, 'Bolso de piel', 1, 'Falta de descripción', 'El bolso no corresponde con la descripción del producto en el sitio web.'),
('2024-05-05 09:00:00', 'Elena Ruiz', 8, 'Vestido de noche', 1, 'Color incorrecto', 'El vestido recibido es de un tono más oscuro de lo esperado.'),
('2024-05-04 08:30:00', 'Javier Castro', 10, 'Juego de mesa', 1, 'Piezas faltantes', 'El juego de mesa está incompleto, falta una ficha.');

Select * from Reportes;
Commit;

-- Continguts de les taules relacionals

INSERT INTO Usuario_Reporte (id_usuario, id_notificacionEnvio)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10);

INSERT INTO Producto_Reporte (id_producto, id_reporte)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Producto_Promociones (id_producto, id_promociones)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5);

INSERT INTO Usuario_Promociones (id_usuario, id_promociones, id_notificacionEnvio)
VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(1, 1, 6),
(2, 2, 7),
(3, 3, 8),
(4, 4, 9),
(5, 5, 10);

INSERT INTO Usuario_Ventas (id_usuario, id_ventas, id_notificacionEnvio)
VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(1, 6, 6),
(2, 7, 7),
(3, 8, 8),
(4, 9, 9),
(5, 10, 10);

INSERT INTO Ventas_Producto_Promociones (id_producto, id_ventas, id_promociones)
VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 4),
(10, 10, 5);

INSERT INTO Reporte_Ventas (id_reporte, id_ventas, id_producto)
VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

