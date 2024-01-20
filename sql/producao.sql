CREATE DATABASE ProducaoDB;

CREATE TABLE Fila (
  id SERIAL PRIMARY KEY,
  pedidoId INT UNIQUE,
  usuarioId INT,
  status VARCHAR(255),
  data TIMESTAMP DEFAULT NOW(),
  createdAt TIMESTAMP DEFAULT NOW(),
  updatedAt TIMESTAMP DEFAULT NOW()
);

INSERT INTO Fila (pedidoId, usuarioId, status) VALUES
  (1, 1, 'Em andamento'),
  (2, 2, 'Pendente');