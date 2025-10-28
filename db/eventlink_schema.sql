CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    rol ENUM('ADMIN','CLIENTE','ORGANIZADOR') NOT NULL
);

CREATE TABLE Evento (
    id_evento INT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    descripcion TEXT,
    fecha_hora DATETIME NOT NULL,
    lugar VARCHAR(150) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    estado ENUM('pendiente','aprobado','rechazado') DEFAULT 'pendiente',
    id_organizador INT NOT NULL,
    CONSTRAINT fk_evento_organizador
        FOREIGN KEY (id_organizador) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Compra (
    id_compra INT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_evento INT NOT NULL,
    cantidad INT NOT NULL,
    total_pagado DECIMAL(10,2) NOT NULL,
    fecha_compra DATETIME NOT NULL,
    CONSTRAINT fk_compra_usuario
        FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    CONSTRAINT fk_compra_evento
        FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);

CREATE TABLE Pago (
    id_pago INT PRIMARY KEY,
    id_compra INT NOT NULL,
    metodo VARCHAR(50) NOT NULL,
    estado VARCHAR(30) NOT NULL,
    referencia_transaccion VARCHAR(100),
    CONSTRAINT fk_pago_compra
        FOREIGN KEY (id_compra) REFERENCES Compra(id_compra)
);
