
-- Validação de relacionamentos entre tabelas
-- ==========================================

-- TC_SQL_006
-- Objetivo: identificar pedidos associados a usuários inexistentes.
-- Resultado esperado: nenhuma ocorrência.

SELECT pedidos.id, pedidos.usuario_id
FROM pedidos
LEFT JOIN usuarios
ON pedidos.usuario_id = usuarios.id
WHERE usuarios.id IS NULL;


-- TC_SQL_007
-- Objetivo: identificar usuários que não possuem pedidos.
-- Resultado esperado: listar usuários sem pedidos,
-- caso essa situação seja permitida pela regra de negócio.

SELECT usuarios.id, usuarios.nome
FROM usuarios
LEFT JOIN pedidos
ON usuarios.id = pedidos.usuario_id
WHERE pedidos.usuario_id IS NULL;