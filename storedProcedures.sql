/*SP PARA VALIDAR USUARIOS*/
DELIMITER //
CREATE PROCEDURE validarUsuario (
    IN u_nomUsuario VARCHAR(50),
    IN u_contrasenia VARCHAR(20)
)
BEGIN
    DECLARE usu_existente VARCHAR(50);
    DECLARE pass_existente VARCHAR(20);
    
    -- Verificar si el nombre de usuario existe
    SELECT nomUsuario INTO usu_existente
    FROM Usuarios
    WHERE nomUsuario = u_nomUsuario;
    
    IF usu_existente IS NULL THEN
        SELECT "Nombre de usuario inválido";
    ELSE
        -- Verificar si la contraseña coincide
        SELECT contrasenia INTO pass_existente
        FROM Usuarios
        WHERE nomUsuario = u_nomUsuario;
        
        IF pass_existente != u_contrasenia THEN
            SELECT "Contraseña incorrecta";
        ELSE
            SELECT "Datos correctos";
		END IF;
    END IF;
END //
DELIMITER ;

/*SP PARA ACTUALIZAR EL STOCK DE UN PRODUCTO*/
DELIMITER //
CREATE PROCEDURE actualizarStockProducto(
	IN productID INT, 
	IN quantity INT
)
BEGIN
    UPDATE Inventario
    SET stock = stock - quantity
    WHERE idProducto = productID;
END //
DELIMITER ;

/*Agregar producto a favorito*/
DELIMITER //

CREATE PROCEDURE AgregarProductoAFavoritos(
    IN p_idUsuario INT,
    IN p_idProducto INT
)
BEGIN
    DECLARE v_favorito_existente INT;

    SELECT COUNT(*) INTO v_favorito_existente
    FROM ProductosFavoritos
    WHERE idProducto = p_idProducto;

    IF v_favorito_existente = 0 THEN
        INSERT INTO ProductosFavoritos (fechaAgregado, idProducto)
        VALUES (CURDATE(), p_idProducto);

        SELECT LAST_INSERT_ID() AS idFavorito;

        INSERT INTO UsuariosProductosFavoritos (idUsuario, idFavorito)
        VALUES (p_idUsuario, LAST_INSERT_ID());

        SELECT 'Producto agregado a favoritos exitosamente.' AS mensaje;
    ELSE
        SELECT 'El producto ya está en la lista de favoritos.' AS mensaje;
    END IF;
END//

DELIMITER ;