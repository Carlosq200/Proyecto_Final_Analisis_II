# Wireframes Web - EventLink

## Pantalla: Login Web
+--------------------------------------+
| EventLink                            |
|  Email: [___________]                |
|  Password: [___________]             |
|  [ Iniciar sesión ]                  |
+--------------------------------------+
Notas:
- Después de login, el back devuelve el rol.
- El front redirige según CLIENTE / ORGANIZADOR / ADMIN.

## Pantalla: Dashboard Admin
+--------------------------------------+
| Admin - Panel de Aprobaciones        |
| Eventos pendientes:                  |
|  - Tech Summit Guatemala [Aprobar]   |
|  - Concierto Rock Nacional [Rechazar]|
| Usuarios:                            |
|  - Ana López (CLIENTE)               |
|  - Eventos XYZ (ORGANIZADOR)         |
+--------------------------------------+
Notas:
- Solo ADMIN ve esta vista.

## Pantalla: Catálogo de Eventos (Cliente)
+------------------------------------------------+
| [Concierto Rock Nacional]  Q250   [Comprar]    |
| Fecha: 10/11/2025 20:00                        |
| Lugar: Teatro Central                          |
|------------------------------------------------|
| [Tech Summit Guatemala]    Q500   [Comprar]    |
| Fecha: 05/12/2025 09:00                        |
| Lugar: Centro de Convenciones                  |
+------------------------------------------------+
Notas:
- Aquí el Cliente elige qué evento comprar.

## Pantalla: Checkout / Pago Online
+----------------------------------------------+
| Compra de Entradas                           |
| Evento: Concierto Rock Nacional              |
| Cantidad: [ 2 ]   Total: Q500.00             |
| Método de Pago:                              |
|   ( ) Tarjeta Crédito                        |
|   ( ) Débito                                 |
|   ( ) Transferencia                          |
| Nº Tarjeta: [____ ____ ____ ____]            |
| Vencimiento: [MM/YY]  CVV: [___]             |
| [ Confirmar pago ]                           |
+----------------------------------------------+
Notas:
- Esto cubre el requisito de "pagos online".
