CREATE DATABASE PagamentoDB;

CREATE TABLE Pagamento (
  id SERIAL PRIMARY KEY,
  pedidoId INT UNIQUE,
  usuarioId INT,
  valor FLOAT,
  status VARCHAR(255),
  data TIMESTAMP DEFAULT NOW(),
  createdAt TIMESTAMP DEFAULT NOW(),
  updatedAt TIMESTAMP DEFAULT NOW()
);

INSERT INTO Pagamento (pedidoId, usuarioId, valor, status) VALUES
  (1, 1, 39.98, 'Aprovado'),
  (2, 2, 19.99, 'Pendente');