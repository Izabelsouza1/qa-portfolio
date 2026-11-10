# Projeto 3 — Testes de Banco de Dados com SQL

## 1. Sobre o Projeto

Este projeto apresenta a aplicação de SQL em atividades de Quality Assurance (QA), com foco na validação de dados e regras de negócio em um banco de dados SQLite.

O objetivo é realizar testes em diferentes cenários, verificar a integridade das informações, identificar inconsistências e documentar defeitos encontrados durante as validações.

## 2. Objetivos dos Testes

- Validar a consistência e a integridade dos dados.
- Identificar registros duplicados e informações ausentes.
- Verificar relacionamentos entre tabelas.
- Validar operações de inserção, atualização e exclusão de registros.
- Testar o comportamento de transações.
- Identificar e documentar defeitos encontrados.

## 3. Tecnologias e Ferramentas

- SQL
- SQLite
- Visual Studio Code
- Git e GitHub

## 4. Escopo dos Testes

Foram abordadas as seguintes operações e funcionalidades SQL:

- Consultas e filtros: SELECT, WHERE, ORDER BY e operadores.
- Tratamento de valores nulos: IS NULL e IS NOT NULL.
- Identificação de registros duplicados: COUNT, DISTINCT, GROUP BY e HAVING.
- Relacionamento entre tabelas: INNER JOIN e LEFT JOIN.
- Operações CRUD: INSERT, UPDATE e DELETE.
- Controle de transações: BEGIN TRANSACTION, COMMIT e ROLLBACK.

## 5. Abordagem de Testes

Os testes foram elaborados com base em cenários que simulam situações comuns de validação de bancos de dados.

Cada caso de teste apresenta:

- Identificação e objetivo do teste.
- Consulta SQL utilizada.
- Resultado esperado.
- Resultado obtido.
- Status da validação (PASS/FAIL).

## 6. Registro de Defeitos

Os defeitos identificados durante os testes são documentados com:

- Identificação do defeito.
- Descrição e pré-condições.
- Passos para reprodução.
- Resultado esperado.
- Resultado obtido.
- Evidências, quando disponíveis.

## 7. Banco de Dados

Foi desenvolvido um banco de dados fictício para fins de estudo e testes, composto por três tabelas:

- **usuarios:** informações dos usuários cadastrados.
- **produtos:** informações dos produtos disponíveis.
- **pedidos:** registros de pedidos associados a usuários e produtos.

Os dados são fictícios e utilizados exclusivamente para fins de treinamento.

## 8. Estrutura do Projeto

- `database/`: script de criação e preparação do banco de dados.
- `sql/`: consultas SQL utilizadas nas validações.
- `test-cases/`: documentação dos casos de teste.
- `bugs/`: documentação dos defeitos identificados.

## 9. Resultados

Durante as validações, foram identificadas inconsistências relacionadas à integridade dos dados, incluindo a ausência de validação de unicidade do e-mail e a existência de pedidos associados a usuários inexistentes.

Os dois defeitos foram documentados em relatórios específicos, contendo descrição, passos para reprodução, resultados obtidos e evidências das consultas SQL.