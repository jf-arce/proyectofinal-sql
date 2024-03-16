/*TRIGGER para cuando se registra un nuevo detallePedido se actualiza el stock*/
DELIMITER //
CREATE TRIGGER actualizarStockDespuesDelPedido AFTER INSERT ON DetallesPedidos
FOR EACH ROW
BEGIN
    CALL actualizarStockProducto(NEW.idProducto, NEW.cantidad);
END; //
DELIMITER ;

/*Se crea un envio nuevo asociado al pedido creado*/
DELIMITER //
CREATE TRIGGER generarNuevoEnvio AFTER INSERT ON Pedidos
FOR EACH ROW
BEGIN
    INSERT INTO Envios (descripcion, idPedido)
    VALUES ('Nuevo envío', NEW.idPedido);
END; //
DELIMITER ;

/*Elimina el envío asociado al pedido que se ha eliminado*/
DELIMITER //
CREATE TRIGGER eliminarEnvioDespuesDePedido AFTER DELETE ON Pedidos
FOR EACH ROW
BEGIN
    DELETE FROM Envios
    WHERE idPedido = OLD.idPedido;
END; //
DELIMITER ;

-- Trigger para actualizar la fecha de envío y entrega para los distintos estados
DELIMITER //
CREATE TRIGGER actualizarFechasEnvioEntrega BEFORE UPDATE ON Envios
FOR EACH ROW
BEGIN
    IF NEW.estado != OLD.estado THEN
        IF NEW.estado = 'En camino' AND OLD.fechaEnvio IS NULL THEN
            SET NEW.fechaEnvio = CURDATE();
        END IF;

        IF NEW.estado = 'Entregado' AND OLD.fechaEntrega IS NULL THEN
            SET NEW.fechaEntrega = CURDATE();
        END IF;
    END IF;
END; //
DELIMITER ;
