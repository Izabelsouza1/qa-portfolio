
-- Validação de operações CRUD
-- ==========================================


-- TC_SQL_008
-- Objetivo: validar a inserção de um novo usuário.
-- Resultado esperado: o novo registro deve ser criado corretamente.

INSERT INTO usuarios (id, nome, email, ativo)
VALUES (6, 'Sofia', 'sofia@qa.com', TRUE);

SELECT *
FROM usuarios
WHERE id = 6;


-- TC_SQL_009
-- Objetivo: validar a atualização dos dados de um usuário.
-- Resultado esperado: o e-mail deve ser atualizado corretamente.

UPDATE usuarios
SET email = 'sofia.novo@qa.com'
WHERE id = 6;

SELECT *
FROM usuarios
WHERE id = 6;


-- TC_SQL_010
-- Objetivo: validar a exclusão de um usuário.
-- Resultado esperado: o registro não deve mais existir.

DELETE FROM usuarios
WHERE id = 6;

SELECT *
FROM usuarios
WHERE id = 6;