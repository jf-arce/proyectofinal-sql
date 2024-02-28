INSERT INTO Clientes (nombre, direccion, telefono, correo)
VALUES 
	('Juan González', 'Av. Rivadavia 123, Buenos Aires', '2345678901', 'juangonzalez@gmail.com'),
    ('María Rodríguez', 'Calle 9 de Julio 456, Córdoba', '3456789012', 'mariarodriguez@hotmail.com'),
    ('Pedro López', 'Av. Libertador 789, Rosario', '4567890123', 'pedrolopez@yahoo.com'),
    ('Laura Martínez', 'Calle San Martín 101, Mendoza', '5678901234', 'lauramartinez@gmail.com'),
    ('Diego Sánchez', 'Av. Belgrano 543, Salta', '6789012345', 'diegosanchez@hotmail.com'),
    ('Lucía García', 'Calle Mitre 678, Tucumán', '7890123456', 'luciagarcia@yahoo.com'),
    ('Carlos Fernández', 'Av. San Juan 987, Mar del Plata', '8901234567', 'carlosfernandez@gmail.com'),
    ('Ana López', 'Calle Maipú 765, Neuquén', '9012345678', 'analopez@hotmail.com'),
    ('Martín Pérez', 'Av. Pueyrredón 432, San Juan', '0123456789', 'martinperez@yahoo.com'),
    ('Andrea Rodríguez', 'Calle Alsina 876, Bahía Blanca', '1122334455', 'andrearodriguez@gmail.com'),
    ('Sergio Gómez', 'Av. 25 de Mayo 321, La Plata', '2233445566', 'sergiogomez@hotmail.com'),
    ('Carolina Díaz', 'Calle Lavalle 654, Buenos Aires', '3344556677', 'carolinadiaz@yahoo.com'),
    ('Jorge Martínez', 'Av. San Martín 876, Córdoba', '4455667788', 'jorgemartinez@gmail.com'),
    ('Marcela González', 'Calle Belgrano 432, Rosario', '5566778899', 'marcelagonzalez@hotmail.com'),
    ('Gabriel Fernández', 'Av. Libertador 987, Mendoza', '6677889900', 'gabrielfernandez@yahoo.com'),
    ('Victoria López', 'Calle San Juan 123, Salta', '7788990011', 'victorialopez@gmail.com'),
    ('Lucas Sánchez', 'Av. Mitre 654, Tucumán', '8899001122', 'lucassanchez@hotmail.com'),
    ('Valentina García', 'Calle Maipú 321, Mar del Plata', '9900112233', 'valentinagarcia@yahoo.com'),
    ('Gonzalo Rodríguez', 'Av. Pueyrredón 876, Neuquén', '0011223344', 'gonzalorodriguez@gmail.com'),
    ('María José Pérez', 'Calle Alsina 543, San Juan', '1122334455', 'mariajoseperez@hotmail.com');

INSERT INTO ClientesRegistrados (usuario, contrasenia, fechaRegistro, idCliente)
VALUES 
    ('juangonzalez', 'contraseña1', '2024-02-22', 1),
    ('mariarodriguez', 'contraseña2', '2024-02-22', 2),
    ('pedrolopez', 'contraseña3', '2024-02-22', 3),
    ('lauramartinez', 'contraseña4', '2024-02-22', 4),
    ('diegosanchez', 'contraseña5', '2024-02-22', 5),
    ('luciagarcia', 'contraseña6', '2024-02-22', 6),
    ('carlosfernandez', 'contraseña7', '2024-02-22', 7),
    ('analopez', 'contraseña8', '2024-02-22', 8),
    ('martinperez', 'contraseña9', '2024-02-22', 9),
    ('andrearodriguez', 'contraseña10', '2024-02-22', 10);
    
INSERT INTO Categorias (nombre, descripcion)
VALUES 
	('Hoodies','¡Cálido y a la moda! Encuentra los hoodies más cómodos y con estilo para mantenerte abrigado con un toque urbano.'),
    ('Remeras', '¡Básicos imprescindibles! Descubre nuestra colección de remeras versátiles y frescas, perfectas para cualquier ocasión.'),
    ('Pantalones', '¡Estilo y comodidad en cada paso! Explora nuestra selección de pantalones que te ofrecen el equilibrio perfecto entre moda y funcionalidad.'),
    ('Gorras', '¡Completa tu look con estilo! Encuentra gorras de tendencia que añadirán un toque de personalidad a tu outfit.'),
    ('Camperas', '¡Haz frente al frío con estilo! Descubre nuestras camperas elegantes y funcionales que te mantendrán abrigado sin sacrificar el estilo.'),
    ('Accesorios', '¡Detalles que marcan la diferencia! Explora nuestra gama de accesorios para complementar tu look con un toque único y original.');

INSERT INTO Promociones (nombre, descripcion, descuento, fechaInicio, fechaFin, estado)
VALUES 
    ('Verano20', 'Descuento del 20% en toda la colección de verano', 20.00, '2024-03-01', '2024-03-31', 'Activa'),
    ('2x1Jeans', '¡Oferta especial! 2x1 en pantalones vaqueros', 50.00, '2024-03-05', '2024-03-15', 'Activa'),
    ('Accesorios30', 'Descuento del 30% en accesorios seleccionados', 30.00, '2024-03-10', '2024-03-20', 'Activa'),
    ('CamperaGorro', 'Compra una campera y llévate un gorro de regalo', 100.00, '2024-03-15', '2024-03-31', 'Activa'),
    ('Remeras40', 'Oferta relámpago: descuento del 40% en remeras básicas', 40.00, '2024-03-20', '2024-03-21', 'Activa'),
    ('Hoodies25', '¡Últimos días! Descuento del 25% en hoodies', 25.00, '2024-03-25', '2024-03-31', 'Activa'),
    ('Primavera15', 'Promoción de primavera: descuento del 15% en toda la tienda', 15.00, '2024-04-01', '2024-04-15', 'Pendiente'),
    ('NuevoCliente20', '¡Ahorra con nosotros! Descuento del 20% en tu primera compra', 20.00, '2024-04-05', '2024-04-30', 'Pendiente'),
    ('Descuento30', 'Descuento del 30% en compras superiores a $100', 30.00, '2024-04-10', '2024-04-20', 'Pendiente'),
    ('Locos50', 'Semana de descuentos locos: hasta un 50% de descuento en todo', 50.00, '2024-04-15', '2024-04-22', 'Pendiente'),
	('EnvioGratis', '¡Envío gratis en todas tus compras!', 100.00, '2024-03-01', '2024-03-15', 'Activa'),
    ('ComboVerano', 'Compra un conjunto de verano y obtén un 30% de descuento adicional', 30.00, '2024-03-05', '2024-03-20', 'Activa'),
    ('OfertaRelampago', 'Oferta relámpago: descuento del 50% en todos los productos por 24 horas', 50.00, '2024-03-10', '2024-03-11', 'Activa'),
    ('Cumpleaños', '¡Celebra tu cumpleaños con nosotros y obtén un 20% de descuento en toda la tienda!', 20.00, '2024-03-15', '2024-03-22', 'Activa'),
    ('RebajasFinales', '¡Últimas rebajas! Descuentos de hasta un 70% en toda la colección', 70.00, '2024-03-20', '2024-03-31', 'Activa'),
    ('ClientesFrecuentes', 'Descuento exclusivo del 15% para nuestros clientes frecuentes', 15.00, '2024-04-01', '2024-04-15', 'Pendiente'),
    ('FinDeTemporada', 'Gran liquidación de fin de temporada: hasta un 60% de descuento en todo', 60.00, '2024-04-05', '2024-04-30', 'Pendiente'),
    ('ComprasSuperiores100', '¡Ahorra más! Descuento del 25% en compras superiores a $100', 25.00, '2024-04-10', '2024-04-20', 'Pendiente'),
    ('RebajasPrimaverales', '¡Bienvenido a la primavera! Descuentos de hasta un 40% en toda la tienda', 40.00, '2024-04-15', '2024-04-22', 'Pendiente'),
    ('OfertaLimitada', 'Oferta limitada: obtén un regalo sorpresa con tu compra hoy', 100.00, '2024-04-20', '2024-04-20', 'Pendiente');

INSERT INTO Productos (nombre, descripcion, marca, talle, precio, estado, idCategoria, idPromocion)
VALUES 
	('Fear of God Essentials Hoodie Wood', '¡Mantente cálido y con estilo con nuestro Fear of God Essentials Hoodie Wood! Este clásico hoodie de algodón es perfecto para cualquier ocasión, con un diseño moderno y una calidad incomparable.', 'Fear of God', 'S,M,L,XL', 50000, 'Disponible', 1, 1),
    ('Fear of God Essentials Kids Hoodie Iron', '¡Los más pequeños también merecen lo mejor! Con nuestro Fear of God Essentials Kids Hoodie Iron, tus hijos estarán a la moda y abrigados en cualquier momento.', 'Fear of God', 'S,L', 50000, 'Disponible', 1, 1),
    ('BUZO VANS TRIED AND TRUE RUSTICO CRUDO', '¡Descubre la comodidad y el estilo con nuestro BUZO VANS TRIED AND TRUE RUSTICO CRUDO! Este buzo de Vans te brindará una sensación única de confort y frescura.', 'Vans', 'S,XL', 40000, 'Disponible', 1, 2),
    ('BUZO VANS CUSTOM TALL PO LADRILLO', '¡Dale un toque de color a tu look con nuestro BUZO VANS CUSTOM TALL PO LADRILLO! Este buzo de Vans te brindará un estilo único y audaz.', 'Vans', 'M,L', 35000, 'Disponible', 1, 3),
    ('Buzo Canguro Karma', '¡Eleva tu estilo urbano con nuestro Buzo Canguro Karma! Este buzo de Nike te ofrece un diseño moderno y versátil para que te destaques en cualquier ocasión.', 'Nike', 'S,M,L,XL', 30000, 'Disponible', 1, 4),
    ('Jean Cargo Loose', '¡Marca tendencia con nuestro Jean Cargo Loose! Este pantalón de Vans combina estilo y funcionalidad para que te sientas cómodo y con estilo en todo momento.', 'Vans', 'S,L', 25800, 'Disponible', 3, 5),
    ('Jean Rich', '¡Atrévete a destacar con nuestro Jean Rich! Este pantalón de Vans te brindará un look moderno y sofisticado para que te destaques en cualquier ocasión.', 'Vans', 'L,XL', 21020, 'Disponible', 3, 6),
    ('Fear of God Essentials Kids Hoodie Olive', '¡Los más pequeños también merecen lo mejor! Con nuestro Fear of God Essentials Kids Hoodie Olive, tus hijos estarán abrigados y con estilo en cualquier momento.', 'Fear of God', 'S,L', 190, 'Disponible', 1, 7),
    ('Fear of God Essentials Kids Hoodie Maroon', '¡Los más pequeños también merecen lo mejor! Con nuestro Fear of God Essentials Kids Hoodie Maroon, tus hijos estarán abrigados y con estilo en cualquier momento.', 'Fear of God', 'S,M,L', 240, 'Disponible', 1, 8),
    ('Fear of God Essentials Hoodie White', '¡Mantente cálido y con estilo con nuestro Fear of God Essentials Hoodie White! Este clásico hoodie de algodón es perfecto para cualquier ocasión, con un diseño moderno y una calidad incomparable.', 'Fear of God', 'M,XL', 110, 'Disponible', 1, 9),
	('Nike Sportswear Club Fleece Hoodie', '¡Mantente abrigado y con estilo con el Nike Sportswear Club Fleece Hoodie! Este clásico hoodie de Nike es perfecto para cualquier ocasión, con un diseño moderno y una calidad incomparable.', 'Nike', 'XS,S,M,L', 55000, 'Disponible', 1, 1),
    ('Adidas Originals Trefoil Hoodie', '¡Haz una declaración de estilo con el Adidas Originals Trefoil Hoodie! Este icónico hoodie de Adidas ofrece comodidad y un toque de elegancia urbana.', 'Adidas', 'M,L,XL', 60000, 'Disponible', 1, 2),
    ('Champion Reverse Weave Pullover Hoodie', '¡Experimenta la comodidad suprema con el Champion Reverse Weave Pullover Hoodie! Este clásico hoodie de Champion combina estilo y calidad para un look impecable.', 'Champion', 'S,M,XL', 65000, 'Disponible', 1, 3),
    ('Drew Classic Logo Hoodie', '¡Luce con estilo el Drew Classic Logo Hoodie! Este hoodie de Drew presenta un diseño minimalista y moderno que se adapta a cualquier ocasión.', 'Drew', 'S,L,XL', 70000, 'Disponible', 1, 4),
    ('Vans Full Patched Hoodie', '¡Completa tu look urbano con el Vans Full Patched Hoodie! Este hoodie de Vans presenta un diseño clásico y detalles distintivos que lo hacen destacar.', 'Vans', 'XS,M,L,XL', 75000, 'Disponible', 1, 5),
    ('DC Shoes Rebel Star Hoodie', '¡Demuestra tu estilo rebelde con el DC Shoes Rebel Star Hoodie! Este hoodie de DC Shoes combina comodidad y actitud para un look distintivo.', 'DC', 'XS,S,XL', 80000, 'Disponible', 1, 6),
    ('Nike Sportswear Essential T-Shirt', '¡Añade un toque de frescura a tu look con la Nike Sportswear Essential T-Shirt! Esta remera de Nike ofrece comodidad y estilo en cada uso.', 'Nike', 'S,M,XL', 30000, 'Disponible', 2, 7),
    ('Adidas Originals California T-Shirt', '¡Destaca con la Adidas Originals California T-Shirt! Esta remera de Adidas presenta un diseño clásico y un ajuste cómodo para tu día a día.', 'Adidas', 'XS,M,L,XL', 35000, 'Disponible', 2, 8),
    ('Champion Heritage Script T-Shirt', '¡Marca tendencia con la Champion Heritage Script T-Shirt! Esta remera de Champion combina estilo y calidad para un look urbano impecable.', 'Champion', 'S,XL', 40000, 'Disponible', 2, 9),
    ('Drew Essential Logo T-Shirt', '¡Resalta tu estilo con la Drew Essential Logo T-Shirt! Esta remera de Drew presenta un diseño minimalista y moderno para un look versátil.', 'Drew', 'XS,M,L', 45000, 'Disponible', 2, 10),
    ('Vans Classic Logo T-Shirt', '¡Completa tu outfit con la Vans Classic Logo T-Shirt! Esta remera de Vans ofrece comodidad y estilo con un diseño clásico y un ajuste perfecto.', 'Vans', 'XS,L,XL', 50000, 'Disponible', 2, 11),
    ('DC Shoes Star T-Shirt', '¡Haz una declaración de estilo con la DC Shoes Star T-Shirt! Esta remera de DC Shoes presenta un diseño distintivo y un ajuste cómodo para tu día a día.', 'DC', 'S,M', 55000, 'Disponible', 2, 12),
    ('Nike Sportswear Club Fleece Pants', '¡Experimenta la comodidad sin igual con los Nike Sportswear Club Fleece Pants! Estos pantalones de Nike ofrecen un ajuste cómodo y un estilo moderno para tu día a día.', 'Nike', 'XS,S,XL', 70000, 'Disponible', 3, 13),
    ('Adidas Originals SST Track Pants', '¡Marca tendencia con los Adidas Originals SST Track Pants! Estos pantalones de Adidas combinan estilo y funcionalidad para un look impecable.', 'Adidas', 'S,M,L', 75000, 'Disponible', 3, 14),
    ('Champion Reverse Weave Jogger Pants', '¡Completa tu outfit con los Champion Reverse Weave Jogger Pants! Estos pantalones de Champion ofrecen comodidad y estilo en cada paso.', 'Champion', 'XS,M,L', 80000, 'Disponible', 3, 15),
    ('Drew Classic Logo Sweatpants', '¡Mantente cómodo y con estilo con los Drew Classic Logo Sweatpants! Estos pantalones de Drew presentan un diseño moderno y un ajuste perfecto para tu día a día.', 'Drew', 'S,L', 85000, 'Disponible', 3, 16),
    ('Vans Authentic Chino Pants', '¡Experimenta la comodidad suprema con los Vans Authentic Chino Pants! Estos pantalones de Vans ofrecen un estilo versátil y un ajuste perfecto para cualquier ocasión.', 'Vans', 'XS,M,XL', 90000, 'Disponible', 3, 17),
    ('DC Shoes Worker Straight Fit Jeans', '¡Destaca con los DC Shoes Worker Straight Fit Jeans! Estos pantalones vaqueros de DC Shoes combinan estilo y durabilidad para un look distintivo.', 'DC', 'XS,L,XL', 95000, 'Disponible', 3, 18),
    ('Nike Futura True Snapback Hat', '¡Completa tu look con la Nike Futura True Snapback Hat! Esta gorra de Nike presenta un diseño clásico y detalles distintivos que la hacen destacar.', 'Nike', 'S,M', 40000, 'Disponible', 4, 19),
    ('Adidas Originals Relaxed Strapback Hat', '¡Añade un toque de estilo urbano con la Adidas Originals Relaxed Strapback Hat! Esta gorra de Adidas ofrece comodidad y un ajuste perfecto para cualquier ocasión.', 'Adidas', 'S,L,XL', 45000, 'Disponible', 4, 20);

INSERT INTO ProductosFavoritos (fechaAgregado, idProducto)
VALUES 
    ('2024-03-31', 22),
    ('2024-04-01', 27),
    ('2024-04-02', 3),
    ('2024-04-03', 8),
    ('2024-04-04', 13),
    ('2024-04-05', 18),
    ('2024-04-06', 23),
    ('2024-04-07', 28),
    ('2024-04-08', 4),
    ('2024-04-09', 9),
    ('2024-04-10', 14),
    ('2024-04-11', 19),
    ('2024-04-12', 24),
    ('2024-04-13', 29),
    ('2024-04-14', 5),
    ('2024-04-15', 10),
    ('2024-04-16', 15),
    ('2024-04-17', 20),
    ('2024-04-18', 25),
    ('2024-04-19', 30),
    ('2024-04-20', 1),
    ('2024-04-21', 6),
    ('2024-04-22', 11),
    ('2024-04-23', 16),
    ('2024-04-24', 21),
    ('2024-04-25', 26),
    ('2024-04-26', 2),
    ('2024-04-27', 7),
    ('2024-04-28', 12),
    ('2024-04-29', 17),
    ('2024-04-30', 22),
    ('2024-05-01', 27),
    ('2024-05-02', 3),
    ('2024-05-03', 8),
    ('2024-05-04', 13),
    ('2024-05-05', 18),
    ('2024-05-06', 23),
    ('2024-05-07', 28),
    ('2024-05-08', 4),
    ('2024-05-09', 9);

INSERT INTO ClientesProductosFavoritos (idClienteRegistrado, idFavorito)
VALUES
	(9,7),
    (5,18),
    (2,10),
    (6, 16),
    (3, 23),
    (7, 17),
    (2, 22),
    (8, 28),
    (4, 24),
    (10, 10),
    (1, 1),
    (9, 19),
    (5, 5),
    (1, 11),
    (3, 3),
    (6, 26),
    (8, 18),
    (5, 25),
    (9, 29),
    (2, 12),
    (7, 27),
    (4, 14),
    (10, 20),
    (1, 21),
    (2, 2),
    (5, 15),
    (6, 6),
    (9, 9),
    (8, 8),
    (3, 13),
    (10, 30),
    (4, 4),
    (7, 7);

INSERT INTO DetallesPedidos (cantidad, precioUnitario, idProducto)
VALUES 
    (2, 70000.00, 24),
    (1, 95000.00, 29),
    (2, 55000.00, 23),
    (1, 50000.00, 22),
    (2, 80000.00, 26),
    (1, 21020.00, 7),
    (3, 80000.00, 16),
    (3, 40000.00, 30),
    (2, 25800.00, 6),
    (3, 40000.00, 3),
    (1, 65000.00, 13),
    (1, 90000.00, 18),
    (1, 85000.00, 27),
    (2, 95000.00, 19),
    (1, 30000.00, 5),
    (1, 190.00, 8),
    (1, 40000.00, 20),
    (1, 240.00, 9),
    (3, 110.00, 10),
    (2, 50000.00, 1),
    (2, 75000.00, 25),
    (1, 75000.00, 15),
    (2, 90000.00, 28),
    (3, 60000.00, 12),
    (1, 80000.00, 14),
    (2, 55000.00, 11),
    (3, 75000.00, 25),
    (2, 95000.00, 23),
    (1, 21020.00, 7);

INSERT INTO Pedidos (fecha, estado, idCliente, idDetalle)
VALUES 
    ('2024-03-05', 'Pendiente', 7, 7),
    ('2024-02-23', 'Entregado', 3, 3),
    ('2024-03-01', 'En proceso', 9, 9),
    ('2024-02-28', 'Pendiente', 10, 10),
    ('2024-02-22', 'Entregado', 5, 5),
    ('2024-02-25', 'Pendiente', 8, 8),
    ('2024-03-03', 'En proceso', 1, 1),
    ('2024-02-27', 'Pendiente', 4, 4),
    ('2024-03-04', 'Entregado', 6, 6),
    ('2024-02-29', 'Pendiente', 2, 2),
    ('2024-03-02', 'Entregado', 10, 15),
    ('2024-03-06', 'En proceso', 8, 12),
    ('2024-03-07', 'Pendiente', 7, 14),
    ('2024-02-24', 'Entregado', 3, 13),
    ('2024-03-10', 'Pendiente', 1, 11),
    ('2024-03-09', 'En proceso', 6, 9),
    ('2024-03-12', 'Entregado', 5, 20),
    ('2024-03-08', 'Pendiente', 2, 17),
    ('2024-03-11', 'Pendiente', 9, 16),
    ('2024-03-13', 'En proceso', 4, 19),
    ('2024-03-15', 'En proceso', 3, 21),
    ('2024-03-16', 'Pendiente', 5, 22),
    ('2024-03-17', 'Pendiente', 2, 23),
    ('2024-03-18', 'Entregado', 7, 24),
    ('2024-03-19', 'Pendiente', 1, 25),
    ('2024-03-20', 'En proceso', 4, 26),
    ('2024-03-21', 'Pendiente', 6, 27),
    ('2024-03-22', 'Entregado', 8, 28),
    ('2024-03-23', 'Pendiente', 10, 29),
    ('2024-03-24', 'Entregado', 9, 1),
    ('2024-03-25', 'Pendiente', 3, 2),
    ('2024-03-26', 'Pendiente', 5, 3),
    ('2024-03-27', 'Entregado', 2, 4),
    ('2024-03-28', 'Pendiente', 7, 5),
    ('2024-03-29', 'En proceso', 1, 6),
    ('2024-03-30', 'Pendiente', 4, 7),
    ('2024-03-31', 'Entregado', 6, 8),
    ('2024-04-01', 'Pendiente', 8, 9),
    ('2024-04-02', 'En proceso', 10, 10);
    
INSERT INTO Envios (detalleDeEnvio, estado, idPedido) 
VALUES
	('Envío exprés aéreo', 'En camino', 10),
	('Envío estándar local', 'Pendiente', 23),
	('Envío económico marítimo', 'Pendiente', 3),
	('Envío rápido y seguro', 'Entregado', 17),
	('Envío exprés con seguimiento', 'En camino', 29),
	('Envío exprés con seguimiento', 'En camino', 6),
	('Envío internacional premium', 'Entregado', 21),
	('Envío estándar nacional', 'Pendiente', 8),
	('Envío estándar local', 'Pendiente', 14),
	('Envío económico marítimo', 'Pendiente', 26),
	('Envío exprés aéreo', 'En camino', 5),
	('Envío estándar local', 'Pendiente', 2),
	('Envío exprés aéreo', 'En camino', 19),
	('Envío rápido y seguro', 'Entregado', 25),
	('Envío económico marítimo', 'Pendiente', 1),
	('Envío estándar local', 'Pendiente', 18),
	('Envío internacional premium', 'Entregado', 9),
	('Envío urgente con seguro', 'Entregado', 12),
	('Envío estándar local', 'Pendiente', 28),
	('Envío exprés aéreo', 'En camino', 27),
	('Envío rápido y seguro', 'Entregado', 20),
	('Envío exprés aéreo', 'En camino', 16),
	('Envío internacional prioritario', 'Entregado', 11),
	('Envío rápido y seguro', 'Entregado', 4),
	('Envío exprés con seguimiento', 'En camino', 7),
	('Envío exprés aéreo', 'En camino', 15),
	('Envío económico marítimo', 'Pendiente', 24),
	('Envío estándar nacional', 'Pendiente', 13),
	('Envío internacional prioritario', 'Entregado', 22);

INSERT INTO Inventario (stock, idProducto) 
VALUES
	(30, 1),  -- Fear of God Essentials Hoodie Wood
	(40, 2),  -- Fear of God Essentials Kids Hoodie Iron
	(25, 3),  -- BUZO VANS TRIED AND TRUE RUSTICO CRUDO
	(35, 4),  -- BUZO VANS CUSTOM TALL PO LADRILLO
	(45, 5),  -- Buzo Canguro Karma
	(20, 6),  -- Jean Cargo Loose
	(15, 7),  -- Jean Rich
	(30, 8),  -- Fear of God Essentials Kids Hoodie Olive
	(30, 9),  -- Fear of God Essentials Kids Hoodie Maroon
	(35, 10), -- Fear of God Essentials Hoodie White
	(25, 11), -- Nike Sportswear Club Fleece Hoodie
	(20, 12), -- Adidas Originals Trefoil Hoodie
	(15, 13), -- Champion Reverse Weave Pullover Hoodie
	(10, 14), -- Drew Classic Logo Hoodie
	(35, 15), -- Vans Full Patched Hoodie
	(25, 16), -- DC Shoes Rebel Star Hoodie
	(45, 17), -- Nike Sportswear Essential T-Shirt
	(40, 18), -- Adidas Originals California T-Shirt
	(20, 19), -- Champion Heritage Script T-Shirt
	(30, 20), -- Drew Essential Logo T-Shirt
	(35, 21), -- Vans Classic Logo T-Shirt
	(20, 22), -- DC Shoes Star T-Shirt
	(25, 23), -- Nike Sportswear Club Fleece Pants
	(15, 24), -- Adidas Originals SST Track Pants
	(10, 25), -- Champion Reverse Weave Jogger Pants
	(20, 26), -- Drew Classic Logo Sweatpants
	(30, 27), -- Vans Authentic Chino Pants
	(15, 28), -- DC Shoes Worker Straight Fit Jeans
	(25, 29), -- Nike Futura True Snapback Hat
	(20, 30); -- Adidas Originals Relaxed Strapback Hat

INSERT INTO Transacciones (metodoDePago, detalleDePago, montoPagado, fecha, idPedido, idCliente) 
VALUES
	('Transferencia bancaria', 'Pago del pedido pendiente de ropa', 120.00, '2024-03-05', 7, 1),
	('Tarjeta de crédito', 'Pago del pedido entregado de electrónicos para el hogar', 250.50, '2024-02-23', 3, 2),
	('Efectivo', 'Pago del pedido en proceso de equipamiento deportivo', 150.00, '2024-03-01', 9, 3),
	('Efectivo', 'Pago del pedido pendiente de libros de cocina', 75.00, '2024-02-28', 10, 4),
	('Tarjeta de crédito', 'Pago del pedido entregado de muebles para el jardín', 300.00, '2024-02-22', 5, 5),
	('Mercado Pago', 'Pago del pedido pendiente de productos de belleza', 90.99, '2024-02-25', 8, 6),
	('Cuenta DNI', 'Pago del pedido en proceso de artículos electrónicos', 400.00, '2024-03-03', 1, 7),
	('Efectivo', 'Pago del pedido pendiente de juguetes educativos', 50.00, '2024-02-27', 4, 8),
	('Tarjeta de crédito', 'Pago del pedido entregado de muebles para el hogar', 700.50, '2024-03-04', 6, 9),
	('Transferencia bancaria', 'Pago del pedido pendiente de electrónicos de última generación', 800.00, '2024-02-29', 2, 10),
	('Transferencia bancaria', 'Pago del pedido entregado de ropa de verano', 300.00, '2024-03-06', 8, 11),
	('Tarjeta de crédito', 'Pago del pedido en proceso de electrónicos para la cocina', 120.50, '2024-03-07', 7, 12),
	('Efectivo', 'Pago del pedido pendiente de libros de ciencia ficción', 250.00, '2024-02-24', 3, 13),
	('Mercado Pago', 'Pago del pedido entregado de accesorios deportivos', 180.00, '2024-03-10', 1, 14),
	('Cuenta DNI', 'Pago del pedido pendiente de artículos de jardinería', 400.00, '2024-03-09', 6, 15),
	('Efectivo', 'Pago del pedido en proceso de juguetes para niños', 500.00, '2024-03-12', 5, 16),
	('Tarjeta de crédito', 'Pago del pedido pendiente de ropa de invierno', 350.50, '2024-03-08', 2, 17),
	('Transferencia bancaria', 'Pago del pedido entregado de calzado deportivo', 200.00, '2024-03-11', 9, 18),
	('Efectivo', 'Pago del pedido en proceso de electrónicos para el hogar', 110.00, '2024-03-13', 4, 19),
	('Mercado Pago', 'Pago del pedido pendiente de artículos de belleza', 90.00, '2024-03-15', 3, 20),
	('Cuenta DNI', 'Pago del pedido entregado de productos de limpieza', 180.00, '2024-03-16', 5, 1),
	('Tarjeta de crédito', 'Pago del pedido pendiente de muebles para la oficina', 750.00, '2024-03-17', 2, 2),
	('Efectivo', 'Pago del pedido en proceso de productos de cocina', 400.00, '2024-03-18', 7, 3),
	('Transferencia bancaria', 'Pago del pedido entregado de artículos de baño', 210.00, '2024-03-19', 1, 4),
	('Tarjeta de crédito', 'Pago del pedido pendiente de artículos de escritorio', 320.50, '2024-03-20', 4, 5),
	('Mercado Pago', 'Pago del pedido en proceso de electrónicos para el entretenimiento', 500.00, '2024-03-21', 6, 6),
	('Cuenta DNI', 'Pago del pedido pendiente de artículos de decoración', 180.00, '2024-03-22', 8, 7),
	('Efectivo', 'Pago del pedido entregado de artículos de camping', 300.00, '2024-03-23', 10, 8),
	('Tarjeta de crédito', 'Pago del pedido pendiente de productos para bebés', 400.50, '2024-03-24', 9, 9),
	('Transferencia bancaria', 'Pago del pedido en proceso de juguetes educativos', 80.00, '2024-03-25', 3, 10),
	('Efectivo', 'Pago del pedido pendiente de artículos para el hogar', 150.00, '2024-03-26', 5, 11),
	('Mercado Pago', 'Pago del pedido entregado de productos de limpieza', 200.00, '2024-03-27', 2, 12),
	('Cuenta DNI', 'Pago del pedido pendiente de herramientas de jardinería', 180.00, '2024-03-28', 7, 13),
	('Efectivo', 'Pago del pedido en proceso de herramientas de jardinería', 180.00, '2024-04-01', 8, 14),
	('Transferencia bancaria', 'Pago del pedido entregado de artículos para la cocina', 220.00, '2024-04-02', 10, 15);
