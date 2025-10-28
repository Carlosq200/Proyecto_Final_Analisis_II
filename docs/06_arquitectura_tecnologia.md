# Arquitectura y Tecnología

## Arquitectura propuesta
Arquitectura web de 3 capas:
1. Frontend (Web y App Móvil).
2. Backend API REST.
3. Base de Datos relacional.

## Tecnologías propuestas
- Frontend Web: HTML/CSS/JS simple (se puede escalar a React).
- App Móvil: diseño tipo Flutter (mockups móviles).
- Backend: Node.js con Express para login por roles y endpoints.
- BD: MySQL / PostgreSQL.

## Justificación
- Node.js/Express es rápido de montar y fácil de explicar.
- BD relacional permite PK/FK y normaliza compras/pagos.
- Frontend separado permite dashboards distintos por rol
  (ADMIN / CLIENTE / ORGANIZADOR).

## Seguridad mínima esperada
- Hash de contraseñas en la BD (password_hash).
- Validación de rol antes de devolver datos sensibles.
