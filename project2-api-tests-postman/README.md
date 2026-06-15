# API Testing Project - Serverest
Este projeto contém testes manuais e scripts automatizados de validação realizados na API pública  **ServeRest** (https://serverest.dev). Com o objetivo de praticar conceitos de Quality Assurance (QA) em testes de API, documentação, evidências e report de bugs.

---

## Objetivo do Projeto
Validar as principais operações da API de usuários incluindo:

1. Criacão de usuários (POST).
2. Consulta de usuários (GET).
3. Atualização de usuários (PUT).
4. Exclusão de usuários (DELETE).
4. Validação de erros e cenários negativos.

Este projeto simula o trabalho de um QA em um ambiente real, documentando :

1. Plano de testes.
2. Casos de testes.
3. Evidências.
4. Scripts de validação no Postman.
5. Bugs encontrados.

---

## Ferramentas utilizadas

- **Postman** - Execução das requisições e scripts de testes.
- **VS Code** - Documentação e organização do projeto.
- **Markdown (.md)** - Padronização dos documentos.
- **API** - https://serverest.dev .

---

## Estrutura do projeto

Project2-api-tests-postman/
├── bugs/
├── evidence/
├── testcases/
└── README.md


---

## O que foi testado
### Foram criados  e executados casos de testes para:

- Listar  usuários.
- Criar  usuários.
- Criar usuário duplicado.
- Logar usuário.
- Buscar usuário por ID.
- Atualizar usuário.
- Excluir usuário.
- Criar Produto.
- Criar produto sem token.
- Validar erros ao usar IDs inválidos.
- Testar exclusão de usuário previamente removido.

### Cada caso de teste possui um arquivo `.md` documentando:
- Objetivo.
- Passos para execução.
- Resultado esperado.
- Resultado obtido.
- Status.
- Evidências.

---

## Bugs encontrados 
 Os Bugs encontrados nesse projeto, estão documentados na pasta **bugs**
 
---

## Como executar os testes
1. Abrir o Postman.
2. Criar um workspace pessoal.
3. Executar as requisições conforme documentadas nos arquivos ``testcases``.
4. Configurar um **Environment** e salvar as váriaveis necessarias, ex: `useID`.
5. Executar as requisições na ordem definida nos casos de teste.

---

## Como os testes foram validados
Os testes foram validados por meio de:
- Status HTTP retornado pela API:
- Conteúdo do corpods resposta (response body).
- Scripts automatizados (aba Tests).

---
## Evidências
Todos os testes possuem `screenshots` armazenados na pasta /evidence/.

Os arquivos estão nomeados conforme o código do caso de teste para facilitar a rastreabilidade.

---

## 👩‍💻 Autora

**Izabel Souza**  
Projeto desenvolvido para fins de estudo e portfólio em Quality Assurance (QA), com foco em testes de API e documentação profissional.



