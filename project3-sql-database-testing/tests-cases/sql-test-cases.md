# Casos de Teste — SQL Database Testing

## 1. Validação de Dados de Usuários

### TC_SQL_001 — Listagem de usuários ativos

- **Objetivo:** Validar a listagem de usuários ativos.
- **Pré-condição:** Banco de dados preparado com os dados iniciais.
- **Consulta SQL:**

```sql
SELECT *
FROM usuarios
WHERE ativo = TRUE;
```

- **Resultado esperado:** Retornar apenas usuários com `ativo = TRUE`.
- **Resultado obtido:** Foram retornados 4 usuários ativos (IDs 1, 2, 4 e 5).
- **Status:** PASS

### TC_SQL_002 — Usuários ativos sem e-mail

- **Objetivo:** Verificar se existem usuários ativos sem e-mail cadastrado.
- **Consulta SQL:**

```sql
SELECT *
FROM usuarios
WHERE email IS NULL
AND ativo = TRUE;
```

- **Resultado esperado:** Nenhum registro.
- **Resultado obtido:** Nenhum usuário ativo sem e-mail foi encontrado.
- **Status:** PASS

### TC_SQL_003 — Identificação de nomes duplicados

- **Objetivo:** Identificar nomes cadastrados mais de uma vez.
- **Consulta SQL:**

```sql
SELECT nome, COUNT(*)
FROM usuarios
GROUP BY nome
HAVING COUNT(*) > 1;
```

- **Resultado esperado:** Identificar os nomes com mais de uma ocorrência.
- **Resultado obtido:** O nome Bruno foi identificado com 2 ocorrências.
- **Status:** PASS

### TC_SQL_004 — Identificação de e-mails duplicados

- **Objetivo:** Verificar se existem e-mails cadastrados mais de uma vez.
- **Consulta SQL:**

```sql
SELECT email, COUNT(*)
FROM usuarios
WHERE email IS NOT NULL
GROUP BY email
HAVING COUNT(*) > 1;
```

- **Resultado esperado:** Nenhum e-mail duplicado.
- **Resultado obtido:** Nenhuma duplicidade foi encontrada nos dados iniciais.
- **Status:** PASS

### TC_SQL_005 — Listagem de registros com nomes duplicados

- **Objetivo:** Identificar os registros associados a nomes duplicados.
- **Consulta SQL:**

```sql
SELECT id, nome
FROM usuarios
WHERE nome IN (
    SELECT nome
    FROM usuarios
    GROUP BY nome
    HAVING COUNT(*) > 1
);
```

- **Resultado esperado:** Retornar os IDs dos usuários envolvidos na duplicidade.
- **Resultado obtido:** Foram identificados os usuários de IDs 2 e 4, ambos com o nome Bruno.
- **Status:** PASS

## 2. Validação de Relacionamentos

### TC_SQL_006 — Pedidos associados a usuários inexistentes

- **Objetivo:** Identificar pedidos sem usuário correspondente.
- **Consulta SQL:**

```sql
SELECT pedidos.id, pedidos.usuario_id
FROM pedidos
LEFT JOIN usuarios
ON pedidos.usuario_id = usuarios.id
WHERE usuarios.id IS NULL;
```

- **Resultado esperado:** Nenhum pedido associado a um usuário inexistente.
- **Resultado obtido:** Foi identificado o pedido 104, associado ao usuário de ID 99, inexistente na tabela usuarios.
- **Status:** FAIL
- **Observação:** Inconsistência de integridade referencial identificada.
- **Defeito relacionado:** BUG-SQL-002

### TC_SQL_007 — Usuários sem pedidos

- **Objetivo:** Identificar usuários que não possuem pedidos.
- **Consulta SQL:**

```sql
SELECT usuarios.id, usuarios.nome
FROM usuarios
LEFT JOIN pedidos
ON usuarios.id = pedidos.usuario_id
WHERE pedidos.usuario_id IS NULL;
```

- **Resultado esperado:** Listar os usuários sem pedidos.
- **Resultado obtido:** Foram identificados os usuários de IDs 3, 4 e 5.
- **Status:** PASS

## 3. Validação de Operações CRUD

### TC_SQL_008 — Inserção de usuário

- **Objetivo:** Validar a inserção de um novo usuário.
- **Consulta SQL:**

```sql
INSERT INTO usuarios (id, nome, email, ativo)
VALUES (6, 'Sofia', 'sofia@qa.com', TRUE);

SELECT *
FROM usuarios
WHERE id = 6;
```

- **Resultado esperado:** O usuário deve ser inserido corretamente.
- **Resultado obtido:** O registro de Sofia foi criado e localizado pelo ID 6.
- **Status:** PASS

### TC_SQL_009 — Atualização de usuário

- **Objetivo:** Validar a atualização do e-mail de um usuário.
- **Consulta SQL:**

```sql
UPDATE usuarios
SET email = 'sofia.novo@qa.com'
WHERE id = 6;

SELECT *
FROM usuarios
WHERE id = 6;
```

- **Resultado esperado:** O e-mail deve apresentar o novo valor.
- **Resultado obtido:** O e-mail foi atualizado corretamente para `sofia.novo@qa.com`.
- **Status:** PASS

### TC_SQL_010 — Exclusão de usuário

- **Objetivo:** Validar a exclusão de um usuário.
- **Consulta SQL:**

```sql
DELETE FROM usuarios
WHERE id = 6;

SELECT *
FROM usuarios
WHERE id = 6;
```

- **Resultado esperado:** O registro excluído não deve mais existir.
- **Resultado obtido:** A consulta não retornou registros para o ID 6.
- **Status:** PASS

## 4. Validação de Transações

### TC_SQL_011 — Comportamento do ROLLBACK

- **Objetivo:** Verificar se uma alteração pode ser desfeita.
- **Consulta SQL:**

```sql
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
```

- **Resultado esperado:** A alteração deve ser desfeita após o ROLLBACK.
- **Resultado obtido:** O e-mail original (`ana@qa.com`) foi restaurado.
- **Status:** PASS

### TC_SQL_012 — Comportamento do COMMIT

- **Objetivo:** Verificar se uma alteração é persistida após a confirmação da transação.
- **Consulta SQL:**

```sql
BEGIN TRANSACTION;

UPDATE usuarios
SET email = 'ana.atualizado@qa.com'
WHERE id = 1;

COMMIT;

SELECT *
FROM usuarios
WHERE id = 1;
```

- **Resultado esperado:** A alteração deve permanecer salva após o COMMIT.
- **Resultado obtido:** O novo e-mail (`ana.atualizado@qa.com`) foi mantido após a confirmação da transação.
- **Status:** PASS