// server.js
const express = require('express');
const bodyParser = require('body-parser');
const { login } = require('./auth');

const app = express();
app.use(bodyParser.json());

// Endpoint de login
app.post('/login', (req, res) => {
  const { email, password } = req.body;
  const user = login(email, password);

  if (!user) {
    return res.status(401).json({ ok: false, msg: 'Credenciales inválidas' });
  }

  // En un sistema real aquí iría un token JWT o sesión.
  res.json({
    ok: true,
    msg: 'Login correcto',
    usuario: {
      id: user.id,
      nombre: user.nombre,
      rol: user.rol
    }
  });
});

// Endpoint dashboard según rol
app.post('/dashboard', (req, res) => {
  const { rol } = req.body; // Para demo, el front manda el rol

  if (rol === 'CLIENTE') {
    return res.json({
      rol,
      vista: 'Mis Entradas',
      data: [
        { evento: 'Concierto Rock Nacional', fecha: '2025-11-10', estadoPago: 'APROBADO' }
      ]
    });
  }

  if (rol === 'ORGANIZADOR') {
    return res.json({
      rol,
      vista: 'Mis Eventos y Ventas',
      data: [
        { evento: 'Concierto Rock Nacional', ticketsVendidos: 120, totalQ: 30000 },
        { evento: 'Tech Summit Guatemala', ticketsVendidos: 45, totalQ: 22500 }
      ]
    });
  }

  if (rol === 'ADMIN') {
    return res.json({
      rol,
      vista: 'Panel de Aprobaciones',
      data: [
        { evento: 'Tech Summit Guatemala', estado: 'pendiente' },
        { evento: 'Concierto Rock Nacional', estado: 'aprobado' }
      ],
      gestionUsuarios: ['Ana López (CLIENTE)', 'Eventos XYZ (ORGANIZADOR)']
    });
  }

  res.status(400).json({ ok: false, msg: 'Rol no reconocido' });
});

app.listen(3000, () => {
  console.log('EventLink backend demo corriendo en http://localhost:3000');
});
