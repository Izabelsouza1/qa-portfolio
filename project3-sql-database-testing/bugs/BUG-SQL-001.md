# BUG-SQL-001 — Permite cadastro de usuários com e-mail duplicado

**Status:** Aberto  
**Severidade:** Média  
**Prioridade:** Alta  
**Tipo:** Integridade de dados

## 1. Descrição

O banco de dados permite inserir usuários com um endereço de e-mail que já está cadastrado, gerando registros duplicados.

Considerando a regra de negócio definida para este cenário, cada usuário deve possuir um e-mail único.

## 2. Pré-condições

- Banco de dados criado e populado com os dados iniciais.
- Existência de um usuário cadastrado com o e-mail `ana@qa.com`.
- O ID 7 ainda não deve estar cadastrado, pois será usado na inserção.

## 3. Passos para Reprodução

1. Consultar os usuários cadastrados.
2. Verificar que o e-mail `ana@qa.com` já pertence à usuária Ana.
3. Tentar cadastrar outro usuário utilizando o mesmo e-mail.
4. Consultar os registros que possuem esse endereço.

## 4. Consulta SQL Utilizada

**Inserção do registro duplicado:**

```sql
INSERT INTO usuarios (id, nome, email, ativo)
VALUES (7, 'Mariana', 'ana@qa.com', TRUE);
```

**Verificação da duplicidade:**

```sql
SELECT email, COUNT(*)
FROM usuarios
WHERE email = 'ana@qa.com'
GROUP BY email;
```

## 5. Resultado Esperado

O banco de dados deve impedir a inserção de um usuário com um e-mail que já esteja cadastrado.

## 6. Resultado Obtido

O registro foi inserido com sucesso, permitindo que dois usuários utilizassem o mesmo endereço de e-mail.

A consulta de verificação retornou duas ocorrências para o mesmo endereço.

## 7. Evidência

A consulta de verificação identificou dois registros associados ao e-mail `ana@qa.com`.

## 8. Conclusão

Defeito identificado na validação de unicidade do e-mail. O problema foi documentado para análise e correção pela equipe responsável.