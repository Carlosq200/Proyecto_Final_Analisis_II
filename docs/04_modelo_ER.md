# Modelo ER - EventLink

## Entidades principales

USUARIO
- id_usuario (PK)
- nombre
- email
- password_hash
- rol  (ADMIN | CLIENTE | ORGANIZADOR)

EVENTO
- id_evento (PK)
- titulo
- descripcion
- fecha_hora
- lugar
- precio
- estado  (pendiente | aprobado | rechazado)
- id_organizador (FK → USUARIO.id_usuario)

COMPRA
- id_compra (PK)
- id_usuario (FK → USUARIO.id_usuario)
- id_evento (FK → EVENTO.id_evento)
- cantidad
- total_pagado
- fecha_compra

PAGO
- id_pago (PK)
- id_compra (FK → COMPRA.id_compra)
- metodo
- estado
- referencia_transaccion

## Relaciones

- Un USUARIO con rol ORGANIZADOR publica muchos EVENTOS.
- Un USUARIO con rol CLIENTE realiza muchas COMPRAS.
- Cada COMPRA está asociada a exactamente un EVENTO.
- Cada COMPRA tiene exactamente un PAGO.
