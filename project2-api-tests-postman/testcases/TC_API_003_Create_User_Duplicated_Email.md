# TC_API_003 - POST-Create User with duplicated email

---

**Module:** Users
**Method:** POST
**Endpoint:** /usuarios
**Priority:** Medium
**Environment:** Serverest API(https://serverest.dev)
**Date:** 14/01/2026 
**Responsible:** Izabel Souza

---

## Objetivo
Verificar se a API permite criar um novo usuário com email já cadastrado.

---

## Passos para execução
1. Configurar uma requisição POST para o endpoint `/usuarios`.
2. Informar no corpo da requisição um email já existente.
3. Enviar a requisição.
4. Verificar o código de status retornado.
4. Analizar a a mensagem de erro apresentada.

---

## Resultado esperado
A API deve retornar o status code **400 Bad Request** e informar que o email já está cadastrado.

---

## Resultado obtido
A API retornou o status **400 Bad Request** com mensagem informando que o email já está cadastrado.

---

## Status
🟢 PASS

---

## Evidências
Execução da requisição no Postman, incluindo validação do status da resposta.
![CT003_Create_User_Duplicate](../evidence/CT003_Create_User_Duplicate.png)