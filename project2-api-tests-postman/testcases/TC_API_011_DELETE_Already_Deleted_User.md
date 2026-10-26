# TC_API_011 - DELETE - Already Deleted User 

---

**Module:** Users
**Method:** DELETE
**Endpoint:** /usuarios
**Priority:** Medium
**Environment:** Serverest API(https://serverest.dev)
**Date:** 17/01/2026 
**Responsible:** Izabel Souza

---

## Pré condições
Usuário existente previamente criado e depois excluído.

---

## Objetivo
Verificar o comportamento da API ao tentar excluir um usuário que já foi excluído do sistema.

---

## Passos para execução
1. Configurar uma requisição DELETE para o endpoint `/usuarios/{{userId}}`.
2. Enviar a requisição e confirmar mensagem de sucesso.
3. Enviar novamente a mesma requisição DELETE para o mesmo UserId.
4. Verificar mensagem retornada pela API.

---

## Resultado esperado
A API deve informar mensagem de que "nenhum registro foi excluído".

---

## Resultado obtido
A API retornou o status code 200 OK e apresentou a mensagem de confirmação: Nenhum registo excluído.

---

## Status
🟢 PASS

---

## Evidências
Execução da requisição DELETE no Postman, incluindo testes automatizados por scripts.
![CT_011_DELETE_Already_Deleted_User](../evidence/CT011_DELETE_Already_Deleted_User_Response.png)
![CT_011_DELETE_Already_Deleted_User](../evidence/CT011_DELETE_Already_Deleted_User_Tests.png)
