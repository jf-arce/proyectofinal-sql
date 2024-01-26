-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS UrbanDripStore;

USE UrbanDripStore;

-- Tabla Clientes
CREATE TABLE IF NOT EXISTS Clientes (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    direccion VARCHAR(50),
    telefono VARCHAR(15),
    correo VARCHAR(30)
);

-- Tabla ClientesRegistrados
CREATE TABLE IF NOT EXISTS ClientesRegistrados (
    idClienteRegistrado INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50),
    contrasenia VARCHAR(20),
    fechaRegistro DATE,
    idCliente VARCHAR(10),
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);

-- Tabla Productos
CREATE TABLE IF NOT EXISTS Productos (
    idProducto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    descripcion VARCHAR(200),
    precio DECIMAL(10, 2),
    estado VARCHAR(20),
    idCategoria VARCHAR(10),
    idPromocion VARCHAR(10),
    FOREIGN KEY (idCategoria) REFERENCES Categorias(idCategoria),
    FOREIGN KEY (idPromocion) REFERENCES Promociones(idPromocion)
);

-- Tabla ProductosFavoritos
CREATE TABLE IF NOT EXISTS ProductosFavoritos (
    idFavorito INT PRIMARY KEY AUTO_INCREMENT,
    fechaAgregado DATE,
    idProducto VARCHAR(10),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);

-- Tabla ClientesProductosFavoritos
CREATE TABLE IF NOT EXISTS ClientesProductosFavoritos (
    idClienteRegistrado INT PRIMARY KEY AUTO_INCREMENT,
    idFavorito VARCHAR(10),
    PRIMARY KEY (idClienteRegistrado, idFavorito),
    FOREIGN KEY (idClienteRegistrado) REFERENCES ClientesRegistrados(idClienteRegistrado),
    FOREIGN KEY (idFavorito) REFERENCES ProductosFavoritos(idFavorito)
);

-- Tabla Pedidos
CREATE TABLE IF NOT EXISTS Pedidos (
    idPedido INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    estado VARCHAR(20),
    idCliente VARCHAR(10),
    idDetalle VARCHAR(10),
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
    FOREIGN KEY (idDetalle) REFERENCES DetallesPedidos(idDetalle)
);

-- Tabla DetallesPedidos
CREATE TABLE IF NOT EXISTS DetallesPedidos (
    idDetalle INT PRIMARY KEY AUTO_INCREMENT,
    cantidad INT,
    precioUnitario DECIMAL(10, 2),
    idProducto VARCHAR(10),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);

-- Tabla Envíos
CREATE TABLE IF NOT EXISTS Envios (
    idEnvio INT PRIMARY KEY AUTO_INCREMENT,
    detalleDeEnvio VARCHAR(200),
    estado VARCHAR(20),
    idPedido VARCHAR(10),
    FOREIGN KEY (idPedido) REFERENCES Pedidos(idPedido)
);

-- Tabla Categorias
CREATE TABLE IF NOT EXISTS Categorias (
    idCategoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    descripcion VARCHAR(MAX)
);

-- Tabla Promociones
CREATE TABLE IF NOT EXISTS Promociones (
    idPromocion INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(MAX),
    descuento DECIMAL(5, 2),
    fechaInicio DATE,
    fechaFin DATE,
    estado VARCHAR(20)
);

-- Tabla Inventario
CREATE TABLE IF NOT EXISTS Inventario (
    idInventario INT PRIMARY KEY AUTO_INCREMENT,
    stock INT,
    idProducto VARCHAR(10),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);

-- Tabla Transacciones
CREATE TABLE IF NOT EXISTS Transacciones (
    idTransaccion INT PRIMARY KEY AUTO_INCREMENT,
    metodoDePago VARCHAR(50),
    detalleDePago VARCHAR(100),
    montoPagado DECIMAL(10, 2),
    fecha DATE,
    idCliente VARCHAR(10),
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);
