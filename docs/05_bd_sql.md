# Base de Datos

Se requiere:
1. Script SQL para crear tablas.
2. Llaves primarias y foráneas.
3. Datos de prueba para validación.

Tablas:
- USUARIO
- EVENTO
- COMPRA
- PAGO

Llaves foráneas:
- EVENTO.id_organizador → USUARIO.id_usuario
- COMPRA.id_usuario → USUARIO.id_usuario
- COMPRA.id_evento → EVENTO.id_evento
- PAGO.id_compra → COMPRA.id_compra
