// auth.js
// Usuarios simulados en memoria para la demo

const users = [
  { id: 1, nombre: "Ana López", email: "ana@correo.com", password: "1234", rol: "CLIENTE" },
  { id: 2, nombre: "Eventos XYZ", email: "xyz@eventos.com", password: "1234", rol: "ORGANIZADOR" },
  { id: 3, nombre: "Admin Central", email: "admin@eventlink.com", password: "admin", rol: "ADMIN" }
];

function login(email, password) {
  return users.find(u => u.email === email && u.password === password) || null;
}

module.exports = { login };
