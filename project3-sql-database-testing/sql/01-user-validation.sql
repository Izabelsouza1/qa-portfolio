-- ==========================================
-- PROJETO 3: SQL DATABASE TESTING
-- Validação de dados de usuários
-- ==========================================


-- TC_SQL_001
-- Objetivo: validar a listagem de usuários ativos.
-- Resultado esperado: retornar apenas usuários com ativo = TRUE.

SELECT *
FROM usuarios
WHERE ativo = TRUE;


-- TC_SQL_002
-- Objetivo: verificar se existem usuários ativos sem e-mail.
-- Resultado esperado: nenhuma ocorrência.

SELECT *
FROM usuarios
WHERE email IS NULL
AND ativo = TRUE;


-- TC_SQL_003
-- Objetivo: identificar usuários com nomes duplicados.
-- Resultado esperado: identificar nomes que aparecem mais de uma vez.

SELECT nome, COUNT(*)
FROM usuarios
GROUP BY nome
HAVING COUNT(*) > 1;


-- TC_SQL_004
-- Objetivo: identificar e-mails duplicados.
-- Resultado esperado: nenhuma ocorrência.

SELECT email, COUNT(*)
FROM usuarios
WHERE email IS NOT NULL
GROUP BY email
HAVING COUNT(*) > 1;


-- TC_SQL_005
-- Objetivo: listar os registros que possuem nomes duplicados.
-- Resultado esperado: retornar os IDs dos usuários envolvidos na duplicidade.

SELECT id, nome
FROM usuarios
WHERE nome IN (
    SELECT nome
    FROM usuarios
    GROUP BY nome
    HAVING COUNT(*) > 1
);