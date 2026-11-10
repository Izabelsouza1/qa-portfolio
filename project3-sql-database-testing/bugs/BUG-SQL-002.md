# BUG-SQL-002 — Pedido associado a usuário inexistente

**Status:** Aberto  
**Severidade:** Alta  
**Prioridade:** Alta  
**Tipo:** Integridade de dados

## 1. Descrição

O banco de dados permite registrar pedidos associados a usuários que não existem na tabela `usuarios`, gerando inconsistências de integridade.

Considerando a regra de negócio definida para este cenário, todo pedido deve estar associado a um usuário previamente cadastrado.

## 2. Pré-condições

- Banco de dados criado e populado com os dados iniciais.
- Existência do pedido de ID 104 na tabela `pedidos`.
- O pedido está associado ao usuário de ID 99.
- Não existe usuário com ID 99 na tabela `usuarios`.

## 3. Passos para Reprodução

1. Consultar os registros da tabela `pedidos`.
2. Identificar o pedido de ID 104.
3. Verificar que o campo `usuario_id` possui o valor 99.
4. Consultar a tabela `usuarios` e verificar que não existe registro com ID 99.
5. Executar a consulta de validação de relacionamentos.

## 4. Consulta SQL Utilizada

**Verificação de pedidos associados a usuários inexistentes:**

```sql
SELECT pedidos.id, pedidos.usuario_id
FROM pedidos
LEFT JOIN usuarios
ON pedidos.usuario_id = usuarios.id
WHERE usuarios.id IS NULL;
```

## 5. Resultado Esperado

Todos os pedidos devem estar associados a usuários existentes na tabela `usuarios`.

A consulta de validação não deve retornar registros.

## 6. Resultado Obtido

A consulta retornou o pedido de ID 104, associado ao usuário de ID 99, inexistente na tabela `usuarios`.

O banco de dados permitiu a existência desse relacionamento inválido.

## 7. Evidência

A consulta SQL identificou o seguinte registro:

- **ID do pedido:** 104
- **ID do usuário associado:** 99
- **Situação:** Usuário inexistente na tabela `usuarios`.

A inconsistência foi reproduzida por meio da consulta SQL apresentada na seção 4.


## 8. Conclusão

Defeito identificado na integridade referencial dos dados.

O problema foi documentado para análise e correção pela equipe responsável.