INSERT INTO Usuario (id_usuario, nombre, email, password_hash, rol)
VALUES
(1, 'Ana López', 'ana@correo.com', 'hash123', 'CLIENTE'),
(2, 'Eventos XYZ', 'xyz@eventos.com', 'hash456', 'ORGANIZADOR'),
(3, 'Admin Central', 'admin@eventlink.com', 'hash789', 'ADMIN');

INSERT INTO Evento (id_evento, titulo, descripcion, fecha_hora, lugar, precio, estado, id_organizador)
VALUES
(10, 'Concierto Rock Nacional', 'Banda local en vivo', '2025-11-10 20:00:00', 'Teatro Central', 250.00, 'aprobado', 2),
(11, 'Tech Summit Guatemala', 'Charlas de innovación', '2025-12-05 09:00:00', 'Centro de Convenciones', 500.00, 'pendiente', 2);

INSERT INTO Compra (id_compra, id_usuario, id_evento, cantidad, total_pagado, fecha_compra)
VALUES
(100, 1, 10, 2, 500.00, '2025-10-27 14:32:00');

INSERT INTO Pago (id_pago, id_compra, metodo, estado, referencia_transaccion)
VALUES
(1000, 100, 'Tarjeta', 'APROBADO', 'REF-ABC-999');
