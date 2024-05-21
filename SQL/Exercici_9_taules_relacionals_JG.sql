USE Ejercicio9;
-- Aqui van les taules de relacions has

CREATE TABLE Usuario_Reporte (
id_usuario INT, 
id_notificacionEnvio INT,
PRIMARY KEY (id_usuario, id_notificacionEnvio),
FOREIGN KEY (id_usuario) REFERENCES Usuarios (id_usuario),
FOREIGN KEY (id_notificacionEnvio) REFERENCES NotificacionEnvio (id_notificacionEnvio)
)ENGINE=InnoDB;

CREATE TABLE Producto_Reporte (
id_producto INT, 
id_reporte INT,
PRIMARY KEY (id_producto, id_reporte),
FOREIGN KEY (id_producto) REFERENCES Producto (id_producto),
FOREIGN KEY (id_reporte) REFERENCES Reportes (id_reporte)
)ENGINE=InnoDB;

CREATE TABLE Producto_Promociones (
id_producto INT, 
id_promociones INT,
PRIMARY KEY (id_producto, id_promociones),
FOREIGN KEY (id_producto) REFERENCES Producto (id_producto),
FOREIGN KEY (id_promociones) REFERENCES Promociones (id_promociones)
)ENGINE=InnoDB;

CREATE TABLE Usuario_Promociones (
id_usuario INT, 
id_promociones INT,
id_notificacionEnvio int ,
PRIMARY KEY (id_usuario, id_promociones, id_notificacionEnvio),
FOREIGN KEY (id_usuario) REFERENCES Usuarios (id_usuario),
FOREIGN KEY (id_promociones) REFERENCES Promociones (id_promociones),
FOREIGN KEY (id_notificacionEnvio) REFERENCES NotificacionEnvio (id_notificacionEnvio)
)ENGINE=InnoDB;

CREATE TABLE Usuario_Ventas (
id_usuario INT, 
id_ventas INT,
id_notificacionEnvio int,
PRIMARY KEY (id_usuario, id_ventas,id_notificacionEnvio),
FOREIGN KEY (id_usuario) REFERENCES Usuarios (id_usuario),
FOREIGN KEY (id_ventas) REFERENCES Ventas (id_ventas),
FOREIGN KEY (id_notificacionEnvio) REFERENCES NotificacionEnvio (id_notificacionEnvio)
)ENGINE=InnoDB;

CREATE TABLE Ventas_Producto_Promociones (
id_producto INT, 
id_ventas INT,
id_promociones int,
PRIMARY KEY (id_producto,id_ventas,id_promociones),
FOREIGN KEY (id_producto) REFERENCES Producto (id_producto),
FOREIGN KEY (id_ventas) REFERENCES Ventas (id_ventas),
FOREIGN KEY (id_promociones) REFERENCES Promociones (id_promociones)
)ENGINE=InnoDB;

CREATE TABLE Reporte_Ventas (
id_reporte INT, 
id_ventas INT,
id_producto int,
PRIMARY KEY (id_reporte, id_ventas,id_producto),
FOREIGN KEY (id_reporte) REFERENCES Reportes (id_reporte),
FOREIGN KEY (id_ventas) REFERENCES Ventas (id_ventas),
FOREIGN KEY (id_producto) REFERENCES Producto (id_producto)
)ENGINE=InnoDB;

Commit;

