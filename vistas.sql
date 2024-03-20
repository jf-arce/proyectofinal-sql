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
    c.idCliente,
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

/*vista de todos los productos con talles, categoria y stock*/
CREATE OR REPLACE VIEW vistaTodosLosProductos AS
SELECT 
	prod.idProducto,
    prod.nombre,
    prod.precio,
    prod.marca,
    prod.descripcion,
    cat.nombre AS categoria,
    inv.stock,
    GROUP_CONCAT(t.talla SEPARATOR ', ') AS Talles
FROM Productos prod
JOIN Categorias cat ON (cat.idCategoria = prod.idCategoria)
JOIN Inventario inv ON (inv.idProducto = prod.idProducto)
JOIN ProductosTalles pt ON (pt.idProducto = prod.idProducto)
JOIN Talles t ON (t.idTalle = pt.idTalle)
GROUP BY prod.idProducto,inv.stock;

/*Vista para cada devolucion mostrando cliente y producto asociado*/
CREATE OR REPLACE VIEW vistaDetallesDevoluciones AS
SELECT 
	dev.idDevolucion,
    dev.fecha,
    dev.motivo,
    c.nombre AS nombre_cliente,
    p.nombre AS producto_a_devolver
FROM Devoluciones dev
JOIN Clientes c ON (c.idCliente = dev.idCliente)
JOIN Productos p ON (p.idProducto = dev.idProducto);

/*Vista Factura Detallada*/
CREATE OR REPLACE VIEW vistaFacturasDetalladas AS
SELECT 
	f.idFactura,
    f.fechaEmision,
    c.nombre AS nombre_cliente,
    p.idPedido,
    prod.nombre AS nombre_producto,
    calcularMontoTotal(p.idPedido) AS monto_total,
    t.metodoDePago
FROM Facturas f
JOIN Clientes c ON (c.idCliente = f.idCliente)
JOIN Pedidos p ON (p.idPedido = f.idPedido)
JOIN DetallesPedidos dp ON (dp.idPedido = p.idPedido)
JOIN Productos prod ON (prod.idProducto = dp.idProducto)
JOIN Transacciones t ON (t.idPedido = p.idPedido)
ORDER BY idFactura;

/*Vista historial de compra de clientes*/
CREATE OR REPLACE VIEW vistaHistorialComprasClientes AS
SELECT 
		t.idCliente,
		c.nombre AS nombre_cliente,
		t.fecha AS fecha_de_pago,
		t.idTransaccion,
		t.metodoDePago,
		t.idPedido,
		calcularMontoTotal(t.idPedido) AS monto_total
FROM Transacciones t 
JOIN Clientes c ON (c.idCliente = t.idCliente)
WHERE t.estado = "Completado"
ORDER BY c.idCliente;