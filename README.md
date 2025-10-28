# EventLink - Proyecto Final Análisis de Sistemas II

## Descripción
EventLink es una plataforma web/móvil para:
- Mostrar eventos publicados por organizadores afiliados.
- Permitir al cliente comprar entradas y pagar en línea.
- Permitir que el administrador supervise la plataforma, usuarios y aprobación de eventos.

## Roles del sistema
- CLIENTE: compra entradas y ve su historial.
- ORGANIZADOR: publica eventos y ve ventas.
- ADMIN: aprueba eventos nuevos, gestiona usuarios y ve métricas.

## Estructura de carpetas
- /docs → documentación UML, ER, requisitos, arquitectura, accesibilidad, usabilidad, UX/UI.
- /db → scripts SQL de la base de datos (tablas e inserts).
- /src/backend → API demo en Node.js (login por roles + dashboard por rol).
- /src/frontend-web → descripción de pantallas web.
- /src/app-mobile → descripción de pantallas móviles.
- /assets/mockups_web → capturas reales de pruebas (login y dashboards por rol).

## Backend (Node.js + Express)
- POST /login  
  - Recibe email y password.
  - Devuelve { ok, usuario { id, nombre, rol } }.
- POST /dashboard  
  - Recibe { rol }.
  - Devuelve datos distintos según rol:
    - CLIENTE: sus compras.
    - ORGANIZADOR: ventas por evento.
    - ADMIN: aprobaciones pendientes y gestión de usuarios.

Estas respuestas fueron verificadas desde PowerShell usando Invoke-WebRequest.  
Las capturas están en /assets/mockups_web.

## Base de Datos
Existen scripts en /db:
- eventlink_schema.sql → Tablas Usuario, Evento, Compra, Pago con PK y FK.
- eventlink_inserts.sql → Datos de prueba (usuarios, eventos, compras y pagos).

## Arquitectura propuesta
Arquitectura en tres capas:
1. Frontend Web/App Móvil.
2. Backend API REST en Node.js.
3. Base de Datos relacional (MySQL / PostgreSQL).

Incluye lineamientos de accesibilidad, usabilidad y UX/UI para asegurar claridad visual, contraste y navegación simple en móvil.

---

## Conclusiones y Recomendaciones

### Conclusiones
El sistema EventLink cubre el ciclo completo solicitado en el curso:
- Análisis (requisitos funcionales y no funcionales).
- Diseño (UML, modelo ER).
- Implementación (backend funcional con autenticación y control de acceso por rol).
- Validación (capturas reales de ejecución).

Se demuestra que el Cliente, el Organizador Afiliado y el Administrador tienen permisos distintos y reciben dashboards distintos. Esto cumple el requisito de login con roles y presentación de vistas diferentes.

También se implementó el modelo físico de datos en SQL con llaves primarias, llaves foráneas e inserts de prueba, lo que permite validar la integridad de la relación Usuario → Evento → Compra → Pago.

### Recomendaciones
1. Conectar el backend a la base de datos real para que el login lea desde la tabla Usuario y las compras se guarden en Compra y Pago.
2. Implementar un frontend web real (por ejemplo en React) que consuma los endpoints y muestre:
   - Catálogo de eventos.
   - Pantalla de compra/pago.
   - Dashboard por rol.
3. Reemplazar contraseñas en texto plano por contraseñas con hash y usar JWT en lugar de mandar el rol manualmente.
4. Generar un código único (por ejemplo un QR) por ticket comprado para validación en puerta del evento.
5. Agregar reportes resumidos para el Administrador (ventas globales, estado de aprobación de eventos).

Con estos pasos, EventLink puede pasar de prototipo académico funcional a una aplicación lista para usarse en producción.
