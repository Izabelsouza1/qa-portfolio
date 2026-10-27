# API Testing Project - ServeRest

Este projeto contém testes manuais e scripts automatizados de validação realizados na API pública **ServeRest** ([https://serverest.dev](https://serverest.dev)), com o objetivo de praticar conceitos de Quality Assurance (QA), testes de API, documentação, evidências e reporte de bugs.

---

## Objetivo do Projeto

Validar as principais operações da API de usuários e produtos, incluindo:

1. Criação de usuários (POST).
2. Consulta de usuários (GET).
3. Atualização de usuários (PUT).
4. Exclusão de usuários (DELETE).
5. Autenticação e geração de token.
6. Criação de produtos com e sem token.
7. Validação de erros e cenários negativos.

O projeto simula atividades de QA em um ambiente de testes, com documentação e evidências dos resultados obtidos.

## Ferramentas utilizadas

- **Postman:** execução de requisições e scripts de validação.
- **VS Code:** edição e organização da documentação.
- **Markdown:** documentação dos casos de teste.
- **ServeRest API:** API utilizada nos testes ([https://serverest.dev](https://serverest.dev)).

## Estrutura do projeto

- `bugs/` — documentação dos bugs encontrados.
- `evidence/` — capturas de tela dos testes executados.
- `testcases/` — casos de teste documentados em Markdown.
- `Project 2 - API Testing - ServeRest.postman_collection.json` — coleção de requisições e scripts do Postman.

## O que foi testado

Foram documentados e executados testes para:

- Listagem de usuários.
- Criação de usuários.
- Tentativa de cadastro com e-mail duplicado.
- Login e geração de token.
- Busca de usuário por ID.
- Atualização de usuário.
- Exclusão de usuário.
- Consulta de usuário excluído.
- Tentativa de excluir novamente um usuário já removido.
- Criação de produto com token.
- Tentativa de criação de produto sem token.

Cada caso de teste possui documentação com objetivo, passos de execução, resultados esperados e obtidos, status e evidências.

## Como executar os testes

### 1. Importar a coleção no Postman

1. Baixe o arquivo `Project 2 - API Testing - ServeRest.postman_collection.json` deste repositório.
2. Abra o Postman e clique em **Import**.
3. Selecione o arquivo JSON baixado.
4. Confirme a importação da coleção.

### 2. Executar os testes

1. Abra a coleção importada.
2. Confira se as requisições utilizam a URL `https://serverest.dev`.
3. Selecione a coleção e abra o **Runner**.
4. Execute as requisições na ordem configurada na coleção.
5. Confira os status HTTP, as respostas da API e os resultados dos testes automatizados.

**Observação:** a coleção utiliza variáveis de ambiente para armazenar dados de teste, como e-mail, senha, token e IDs. Configure as variáveis necessárias antes da execução, caso não estejam definidas pelos scripts da própria coleção.

## Como os testes foram validados

Os testes foram validados por meio de:

- Códigos de status HTTP.
- Conteúdo do corpo das respostas (*response body*).
- Scripts de validação na aba **Scripts / Tests** do Postman.
- Verificação dos resultados no Runner.
- Evidências capturadas durante a execução.

## Bugs encontrados

Os bugs identificados durante os testes estão documentados na pasta `bugs/`.

## Evidências

As capturas de tela dos testes executados estão armazenadas na pasta `evidence/`, organizadas para facilitar a rastreabilidade dos casos de teste.

## Autora

**Izabel Souza**

Projeto desenvolvido para fins de estudo e portfólio em Quality Assurance (QA), com foco em testes manuais de API, automação de validações com Postman e documentação de testes.
