CREATE DATABASE Ejercicio9;
USE Ejercicio9;



Create table users(
id INT auto_increment PRIMARY KEY,
username VARCHAR(50) UNIQUE NOT NULL,
password VARCHAR(50) UNIQUE NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL
);

select * from users;

insert into users(username, password, email) VALUES('user1', 'pasword1', 'user1@email.com');
insert into users(username, password, email) VALUES('user2', 'pasword2', 'user2@email.com');
insert into users(username, password, email) VALUES('user3', 'pasword3', 'user3@email.com');

commit;

CREATE TABLE Usuarios (
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
	nombre_usuario VARCHAR(45) NOT NULL,
	apellidos_usuario VARCHAR(45) NOT NULL,
	correo_usuario VARCHAR(45) NOT NULL,
	telefono_usuario INT NOT NULL, 
    direccion_usuario VARCHAR(45) NOT NULL,
	contrasena_usuario VARCHAR(45) NOT NULL,
    fecha_nacimiento_usuario DATETIME,
	rol_usuario VARCHAR(50) NOT NULL,
	autentificacionDosFactores_usuario BOOLEAN,
	fechaCreacion_usuario DATETIME,
    id_creador INT,
    felchaEliminacion_usuario DATETIME,
    id_eliminador INT,
    id_producto INT,
    id_notificacionEnvio INT,
	FOREIGN KEY (id_producto) REFERENCES Producto (id_producto),
    FOREIGN KEY (id_notificacionEnvio) REFERENCES NotificacionEnvio (id_notificacionEnvio)
)ENGINE=InnoDB;

CREATE TABLE Producto (
	id_producto int PRIMARY KEY,
    nombre_producto VARCHAR(45) NOT NULL,
    categoria VARCHAR(10) NOT NULL,
    descripcion MEDIUMTEXT,
    precio FLOAT,
    cantidad int,
    fecha_creacion datetime,
    fecha_caducidad datetime
);


CREATE TABLE NotificacionEnvio (
	id_notificacionEnvio int PRIMARY KEY,
    fecha_notificacion_envio datetime,
    texto_notificacion varchar(255)
);

CREATE TABLE Ventas (
	id_ventas INT AUTO_INCREMENT PRIMARY KEY,
    fecha_venta DATETIME,
    pago TINYINT,
    descripcion_pago MEDIUMTEXT,
    id_notificacionEnvio INT,
    fecha_entrega DATETIME, 
    estado_pedido_procesado DATETIME,
	estado_pedido_enviado DATETIME,
    estado_pedido_cancelado DATETIME,
    FOREIGN KEY (id_notificacionEnvio) REFERENCES NotificacionEnvio (id_notificacionEnvio)
);

CREATE TABLE Promociones (
	id_promociones INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(45),
    fecha_inicio DATETIME,
    fecha_fin DATETIME,
    descripcion VARCHAR(255)
);

CREATE TABLE Reportes (
	id_reporte INT AUTO_INCREMENT PRIMARY KEY,
    fecha_reporte DATETIME,
    nombre VARCHAR(255),
    id_producto INT,
    nombre_producto VARCHAR(45),
    cantidad INT,
    tipo_reporte VARCHAR(45),
    texto VARCHAR(255),
	FOREIGN KEY (id_producto) REFERENCES Producto (id_producto)
);

Commit;
