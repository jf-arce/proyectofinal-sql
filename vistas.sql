-- Vista: ClientesRegistrados
CREATE OR REPLACE VIEW vistaClientesRegistrados AS 
SELECT 
	u.idUsuario,
    u.nomUsuario AS nombre_usuario,
    c.nombre AS nombre_cliente,
    c.correo,
    c.telefono,
    c.direccion,
    GROUP_CONCAT(p.nombre SEPARATOR ', ') AS producto_favorito, 
    GROUP_CONCAT(pf.fechaAgregado SEPARATOR ', ') AS fechaAgregado_favorito
FROM Usuarios u
JOIN Clientes c ON (c.idCliente = u.idUsuario)
JOIN usuariosproductosfavoritos upf ON (upf.idUsuario = u.idUsuario) 
JOIN productosfavoritos pf ON (upf.idFavorito = pf.idFavorito)
JOIN productos p ON (pf.idProducto = p.idProducto)
GROUP BY u.idUsuario,nombre_usuario,nombre_cliente,c.correo,c.telefono, c.direccion;

-- Vista: ProductosConDescuentoActual
CREATE OR REPLACE VIEW vistaProductosConDescuentoActual AS
SELECT 
	prod.idProducto, 
	prod.nombre AS nombre_producto, 
	prom.descripcion AS promocion,
    prom.estado AS estado_promocion
FROM Productos prod 
JOIN Promociones prom ON (prod.idPromocion = prom.idPromocion)
WHERE prom.estado = 'Activa';

-- Vista: PedidosPorCliente
CREATE OR REPLACE VIEW vistaPedidosPorCliente AS
SELECT 
	p.idPedido,
	p.fecha AS fecha_pedido,
    prod.idProducto,
    prod.nombre AS producto_comprado,
	prod.precio,
    c.nombre AS nombre_cliente,
    c.correo,
    c.telefono
FROM Pedidos p
JOIN Clientes c ON (p.idCliente = c.idCliente)
JOIN DetallesPedidos dp ON ( dp.idPedido = p.idPedido)
JOIN Productos prod ON (dp.idProducto = prod.idProducto);

-- Vista: ProductosPorCategoria
CREATE OR REPLACE VIEW vistaProductosPorCategoria AS
SELECT 
    cat.nombre AS categoria,
    prod.idProducto,
	prod.nombre,
    prod.precio
FROM Productos prod
JOIN Categorias cat ON (prod.idCategoria = cat.idCategoria);

-- Vista: VistaEnviosDetallados
CREATE OR REPLACE VIEW vistaEnviosDetallados AS
SELECT 
	env.idEnvio,
	env.estado AS estado_envio,
    env.fechaEnvio,
    env.fechaEntrega,
    ped.idPedido,
    tran.metodoDePago,
    c.nombre AS nombre_cliente
FROM Envios env
JOIN Pedidos ped ON (env.idPedido = ped.idPedido)
JOIN Transacciones tran ON (tran.idPedido = ped.idPedido)
JOIN Clientes c ON (ped.idCliente = c.idCliente);

/*Vista montoTotalXPedido*/
CREATE OR REPLACE VIEW vistaMontoTotalXPedido AS
SELECT
	p.idPedido,
	calcularMontoTotal(p.idPedido) AS monto_total,
    c.nombre AS nombre_cliente,
    t.estado,
    t.metodoDePago,
	e.estado AS estado_del_envio
FROM Pedidos p 
JOIN Clientes c ON (p.idCliente = c.idCliente)
JOIN Envios e ON (e.idPedido = p.idPedido) 
JOIN Transacciones t ON (t.idPedido = p.idPedido)
GROUP BY p.idPedido, e.estado, c.nombre,t.metodoDePago;
