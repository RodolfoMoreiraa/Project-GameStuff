const express = require('express');
const mysql = require('mysql');

const app = express();
const port = 3000;

// Configuração da conexão com o banco de dados
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'seu_usuario',
  password: 'sua_senha',
  database: 'api_db',
});

// Rota para obter a lista de jogos
app.get('/jogos', (req, res) => {
  const query = 'SELECT * FROM jogos';

  connection.query(query, (error, results) => {
    if (error) {
      res.status(500).json({ error });
    } else {
      res.json(results);
    }
  });
});

// Rota para adicionar um jogo
app.post('/jogos', (req, res) => {
  const { name, image, price } = req.body;
  const query = 'INSERT INTO jogos (name, image, price) VALUES (?, ?, ?)';
  const values = [name, image, price];

  connection.query(query, values, (error, results) => {
    if (error) {
      res.status(500).json({ error });
    } else {
      res.json(results);
    }
  });
});

// Inicia o servidor
app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});
