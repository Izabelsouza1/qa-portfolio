# Projeto 1 — Plano de Teste: SauceDemo #

**Objetivo:** Esse plano tem como objetivo testar o fluxo básico de compra do site *SauceDemo*, desde o login até a finalização do pedido. O foco é aplicar, na prática, o conceito de testes manuais, documentação e rastreabilidade, simulando o trabalho de um QA(Quality Assurance) iniciante em um cenário real.

**URL:** https://www.saucedemo.com/  
**Browser:** Chrome ( Versão 141.0.7390.65 ), Windows 11


## Âmbito:    
Os testes contemplam os seguintes módulos do site *Saucedemo*:

- **Login:** Autenticação de usuários válidos e bloqueados, validação de campos obrigatórios e mensagens de erro.
- **Carrinho de compras:** Adição e remoção de produtos.
- **Checkoot:** Preenchimento de dados de envio, validação de campos obrigatórios e finalização de compras.
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
**Critérios de saída:** Todos os casos de teste críticos executados e documentados; bugs reportados.

---
## Casos de Testes Planejados ##
| Código | Descrição Resumida | Prioridade |
|:-------|:-------------------|:-----------|
| CT-001 | Login com credênciais válidas | Alta |
| CT-002 | Login com senha incorreta | Alta |
| CT-003 | Login com campos vazios | Média |
| CT-004 | Login com usuário bloqueado | Média |
| CT-005 | Login sem senha | Média |
| CT-006 | Login com usuário inexistente | Alta |
| CT-007 | Adicionar Produto ao carrinho | Alta |
| CT-008 | Remover produto do carrinho | Média |
| CT-009 | Finalizar compra com dados completos | Alta |
| CT-010 | Validação de campos obrigatorios no checkout | Média |


Cada caso de teste será documentado individualmente na pasta:
`/project1/testcases/`

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
1. Ficheiros de casos em `project1/testcases/` (MDs).  
2. Bugs documentados em `project1/bugs/` (MDs).  
3. Evidências (screenshots) em `project1/evidence/`.  
4. README com instruções para recriar o ambiente.
5. Este plano de teste (`PLAN.md`).

---

## Observações para execução
- Os testes serão executados manualmente, registrando o **resultado obtido**  e o **status (PASS/FAIL)** diretamente nos arquivos de cada caso de teste.
<!--O objetivo é desenvolver prática em documnetação e execução de testes manuais, criando uma base sólida para oportunidades de estágio ou vaga junior na área de QA. 
- Usa nomes de ficheiros claros para screenshots: ` ex: CT001_login_valid.png`, `BUG-001.png`.-->
