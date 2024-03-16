-- Creación de la base de datos
DROP DATABASE IF EXISTS urbandripstore;

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

-- Tabla Usuarios
CREATE TABLE IF NOT EXISTS Usuarios(
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nomUsuario VARCHAR(50),
    contrasenia VARCHAR(20),
    fechaRegistro DATE,
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);

-- Tabla Categorias
CREATE TABLE IF NOT EXISTS Categorias (
    idCategoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    descripcion VARCHAR(200)
);

-- Tabla Promociones
CREATE TABLE IF NOT EXISTS Promociones (
    idPromocion INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(200), 
    descuento DECIMAL(5, 2),
    fechaInicio DATE,
    fechaFin DATE,
    estado VARCHAR(20)
);

-- Tabla Productos
CREATE TABLE IF NOT EXISTS Productos (
    idProducto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    descripcion VARCHAR(400), 
    marca VARCHAR(40),
    precio DECIMAL(10, 2),
    idCategoria INT,
    idPromocion INT,
    FOREIGN KEY (idCategoria) REFERENCES Categorias(idCategoria),
    FOREIGN KEY (idPromocion) REFERENCES Promociones(idPromocion)
);

-- Tabla Inventario
CREATE TABLE IF NOT EXISTS Inventario (
    idInventario INT PRIMARY KEY AUTO_INCREMENT,
    stock INT,
    idProducto INT,
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);

-- Tabla talles
CREATE TABLE IF NOT EXISTS Talles (
	idTalle INT PRIMARY KEY AUTO_INCREMENT,
	talla VARCHAR(5) 
);

-- Tabla Productos y talles 
CREATE TABLE IF NOT EXISTS ProductosTalles(
	idTalle INT REFERENCES Talles(idTalle),
    idProducto INT REFERENCES Productos(idProducto),
    PRIMARY KEY(idTalle,idProducto)
);

-- Tabla devoluciones
CREATE TABLE IF NOT EXISTS Devoluciones(
	idDevolucion INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    motivo TEXT,
    idProducto INT,
    idCliente INT,
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto),
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);

-- Tabla ProductosFavoritos
CREATE TABLE IF NOT EXISTS ProductosFavoritos (
    idFavorito INT PRIMARY KEY AUTO_INCREMENT,
    fechaAgregado DATE,
    idProducto INT,
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);

-- Tabla UsuariosProductosFavoritos
CREATE TABLE IF NOT EXISTS UsuariosProductosFavoritos (
    idUsuario INT REFERENCES Usuarios(idUsuario),
    idFavorito INT REFERENCES ProductosFavoritos(idFavorito),
    PRIMARY KEY (idUsuario, idFavorito)
);

-- Tabla Pedidos
CREATE TABLE IF NOT EXISTS Pedidos (
    idPedido INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);

-- Tabla DetallesPedidos
CREATE TABLE IF NOT EXISTS DetallesPedidos (
    idDetalle INT PRIMARY KEY AUTO_INCREMENT,
    cantidad INT,
    idPedido INT,
    idProducto INT,
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto),
    FOREIGN KEY (idPedido) REFERENCES Pedidos(idPedido)
);

-- Tabla facturas
CREATE TABLE IF NOT EXISTS Facturas (
	idFactura INT PRIMARY KEY AUTO_INCREMENT,
    fechaEmision DATE,
    idPedido INT,
    idCliente INT,
    FOREIGN KEY (idPedido) REFERENCES Pedidos(idPedido),
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);

-- Tabla Envíos
CREATE TABLE IF NOT EXISTS Envios (
    idEnvio INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(200),
    estado VARCHAR(20) DEFAULT 'Pendiente',
    fechaEnvio DATE DEFAULT NULL,
    fechaEntrega DATE DEFAULT NULL,
    idPedido INT,
    FOREIGN KEY (idPedido) REFERENCES Pedidos(idPedido)
);

-- Tabla Transacciones
CREATE TABLE IF NOT EXISTS Transacciones (
    idTransaccion INT PRIMARY KEY AUTO_INCREMENT,
    metodoDePago VARCHAR(50) DEFAULT NULL,
    fecha DATE,
    estado VARCHAR(30) DEFAULT 'Pendiente',
	idPedido INT UNIQUE, 
    idCliente INT,
    FOREIGN KEY (idPedido) REFERENCES Pedidos(idPedido), 
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);