/*FUNCION PARA CALCULAR MONTO TOTAL DE CADA PEDIDO*/
DELIMITER $$
CREATE FUNCTION calcularMontoTotal(id_Pedido INT)
RETURNS DECIMAL(10, 2) DETERMINISTIC
BEGIN
    DECLARE monto_total DECIMAL(10, 2);
    
    SELECT 
		SUM(dp.cantidad * prod.precio) INTO monto_total 
    FROM Pedidos p 
    JOIN DetallesPedidos dp ON (p.idPedido = dp.idPedido)
    JOIN Productos prod ON (dp.idProducto = prod.idProducto) 
    WHERE p.idPedido = id_Pedido;

    RETURN monto_total;
END
$$ DELIMITER ;

/*FUNCION REGISTRAR CLIENTES*/
DELIMITER $$
CREATE FUNCTION registrarCliente (
    p_nombre VARCHAR(50),
    p_direccion VARCHAR(50),
    p_telefono VARCHAR(15),
    p_correo VARCHAR(30),
    p_nomUsuario VARCHAR(50),
    p_contrasenia VARCHAR(20),
    p_fechaRegistro DATE
)
RETURNS INT DETERMINISTIC
BEGIN
    DECLARE cliente_id INT;

    INSERT INTO Clientes (nombre, direccion, telefono, correo) 
    VALUES (p_nombre, p_direccion, p_telefono, p_correo);

    -- Se obtiene el ID del cliente recién insertado
    SET cliente_id = LAST_INSERT_ID();

    INSERT INTO Usuarios (nomUsuario, contrasenia, fechaRegistro, idCliente) 
    VALUES (p_nomUsuario, p_contrasenia, p_fechaRegistro, cliente_id);

    RETURN cliente_id;
END;
$$ DELIMITER ;

/* FUNCION PARA OBTENER EL NOMBRE DEL PRODUCTO MÁS VENDIDO */
DELIMITER $$
CREATE FUNCTION obtenerProductoMasVendido()
RETURNS VARCHAR(50) READS SQL DATA DETERMINISTIC
BEGIN
    DECLARE nombre_producto VARCHAR(50);
    
    SELECT prod.nombre INTO nombre_producto
    FROM (
        SELECT 
            idProducto, SUM(cantidad) AS total_vendido
        FROM DetallesPedidos
        GROUP BY idProducto
        ORDER BY total_vendido DESC
        LIMIT 1
    ) AS mas_vendido
    JOIN Productos prod ON mas_vendido.idProducto = prod.idProducto;

    RETURN nombre_producto;
END
$$ DELIMITER ;
