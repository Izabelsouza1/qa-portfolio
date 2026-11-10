
-- Validação de transações
-- ==========================================


-- TC_SQL_011
-- Objetivo: validar o comportamento do ROLLBACK.
-- Resultado esperado: a alteração deve ser desfeita.

BEGIN TRANSACTION;

UPDATE usuarios
SET email = 'teste@qa.com'
WHERE id = 1;

SELECT *
FROM usuarios
WHERE id = 1;

ROLLBACK;

SELECT *
FROM usuarios
WHERE id = 1;


-- TC_SQL_012
-- Objetivo: validar o comportamento do COMMIT.
-- Resultado esperado: a alteração deve ser confirmada.

BEGIN TRANSACTION;

UPDATE usuarios
SET email = 'ana.atualizado@qa.com'
WHERE id = 1;

COMMIT;

SELECT *
FROM usuarios
WHERE id = 1;