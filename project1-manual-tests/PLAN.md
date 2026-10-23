# Projeto 1 — Plano de Teste: SauceDemo #

**Objetivo:** Esse plano tem como objetivo testar o fluxo básico de compra do site *SauceDemo*, desde o login até a finalização do pedido. O foco é aplicar, na prática, o conceito de testes manuais, documentação e rastreabilidade, simulando o trabalho de um QA(Quality Assurance) iniciante em um cenário real.

**URL:** https://www.saucedemo.com/  
**Navegador:** Chrome ( Versão 141.0.7390.65 ), Windows 11


## Âmbito:    
Os testes contemplam os seguintes módulos do site *SauceDemo*:

- **Login:** Autenticação de usuários válidos e bloqueados, validação de campos obrigatórios e mensagens de erro.
- **Carrinho de compras:** Adição e remoção de produtos.
- **Checkout:** Preenchimento de dados de envio, validação de campos obrigatórios e finalização de compras.
- **Mensagens de validação:** Conferência das mensagens exibidas em casos de sucesso ou erro.

## Fora do Escopo
Neste primeiro ciclo de testes não serão abordadas verificações relacionadas a desempenho, compatibilidade entre navegadores ou testes em dispositivos móveis.  
O foco permanece na validação funcional do fluxo principal do sistema.  

Também estão fora do escopo:
- Testes de performance e carga do site;
- Testes em outros navegadores além do Chrome;
- Testes em dispositivos móveis (Android/iOS);
- Testes envolvendo integrações externas ou pagamentos reais.
- Testes automatizados ( escopo limitado a execução manual).


**Critérios de entrada:** Site disponível e acessível; 
credenciais válidas: `standard_user` / `secret_sauce`.  
**Critérios de saída:** Os 10 casos de teste foram executados e os respetivos resultados estão documentados nos ficheiros individuais, com o estado PASS ou FAIL. Os defeitos identificados, quando aplicável, estão registados na pasta `bugs/`.

---
## Casos de Testes Executados ##
| Código | Descrição Resumida | Prioridade |
|:-------|:-------------------|:-----------|
| CT001 | Login com credênciais válidas | Alta |
| CT002 | Login com senha incorreta | Alta |
| CT003 | Login com campos vazios | Média |
| CT004 | Login com usuário bloqueado | Média |
| CT005 | Login sem senha | Média |
| CT006 | Login com usuário inexistente | Alta |
| CT007 | Adicionar Produto ao carrinho | Alta |
| CT008 | Remover produto do carrinho | Média |
| CT009 | Finalizar compra com dados completos | Alta |
| CT010 | Validação de campos obrigatorios no checkout | Média |


Cada caso de teste está documentado individualmente na pasta `testcases/`.

---

## Critérios de Severidade de Bugs ##

| Severidade | Descrição |
|:------------|:---------------|
| Alta | Impede o fluxo principal de compra (ex: erro no checkout). |
| Média | Funcionalidade alternativa disponivel, mas impacto na experiência. |
| Baixa | Problema visual ou textual, sem impacto funcional. |

---

## Riscos / Dependências
- Site demo pode ficar offline.  
- Alterações de layout ou seletores podem impactar os testes manuais. 

---

## Entregáveis

1. Ficheiros dos casos de teste em `testcases/` (Markdown).
2. Defeitos documentados em `bugs/` (Markdown), quando aplicável.
3. Evidências (capturas de ecrã) em `evidence/`.
4. README com a apresentação do projeto.
5. Este plano de teste (`PLAN.md`).

---

## Observações para execução
- Os testes serão executados manualmente, registando o **resultado obtido**  e o **status (PASS/FAIL)** diretamente nos arquivos de cada caso de teste.
<!--O objetivo é desenvolver prática em documnetação e execução de testes manuais, criando uma base sólida para oportunidades de estágio ou vaga junior na área de QA. 
- Usa nomes de ficheiros claros para screenshots: ` ex: CT001_login_valid.png`, `BUG-001.png`.-->
