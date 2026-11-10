
-- ==========================================
-- PROJETO 3: SQL DATABASE TESTING
-- Preparação do banco de dados
-- Banco: SQLite
-- ==========================================

-- 1. Criação das tabelas

CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    email TEXT,
    ativo BOOLEAN
);

CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    preco REAL,
    disponivel BOOLEAN
);

CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    usuario_id INTEGER,
    produto_id INTEGER,
    valor REAL,
    status TEXT
);

-- 2. Inserção de dados fictícios

INSERT INTO usuarios (id, nome, email, ativo) VALUES
(1, 'Ana', 'ana@qa.com', TRUE),
(2, 'Bruno', 'bruno@qa.com', TRUE),
(3, 'Carla', NULL, FALSE),
(4, 'Bruno', 'bruno2@qa.com', TRUE),
(5, 'Diego', 'diego@gmail.com', TRUE);

INSERT INTO produtos (id, nome, preco, disponivel) VALUES
(1, 'Notebook', 2500.00, TRUE),
(2, 'Monitor', 900.00, TRUE),
(3, 'Teclado', 150.00, TRUE),
(4, 'Mouse', 80.00, FALSE);

INSERT INTO pedidos (id, usuario_id, produto_id, valor, status) VALUES
(101, 1, 1, 2500.00, 'Concluido'),
(102, 2, 2, 900.00, 'Concluido'),
(103, 1, 3, 150.00, 'Pendente'),
(104, 99, 4, 80.00, 'Pendente');
