# TC_API_007 - GET- User by ID

---

**Module:** Users
**Method:** GET
**Endpoint:** /usuarios
**Priority:** high
**Environment:** Serverest API(https://serverest.dev)
**Date:** 14/01/2026 
**Responsible:** Izabel Souza

---

## Objetivo
Verificar se a API busca um usuário quando informado o ID.

---

## Passos para execução

1. Configurar uma requisição GET para o endpoint `/usuarios` informando o ID.
2. Enviar a requisição.
3. Verificar resposta da API e mensagem apresentada.
4. Verificar status code retornado.
---

## Resultado esperado
A API deve retornar o status code **200 OK** e uma resposta em formato Json com informaçoes do usuário correpondente ao ID .

---

## Resultado obtido
A API retornou o status **200 OK**, conforme esperado.

---

## Status
🟢 PASS

---

## Evidências
Execução da requisição no Postman, incluindo validação do status da resposta e teste automatizado via scrits.
![CT007_GET_User_By_Id](../evidence/CT007_Get_User_By_Id.png).