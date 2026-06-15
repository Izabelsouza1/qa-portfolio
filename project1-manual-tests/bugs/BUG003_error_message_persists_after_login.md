# BUG003 - A mensagem de erro persiste mesmo após o login bem-sucedido

---

**Modulo:** Login  
**Severity:** Baixa 
**Priority:** Medium  
**Ambiente:** Chrome – Windows 11  
**Versão do sistema:** 1.0  
**Reportado por:** Izabel Souza  
**Data:** 21/10/2025 

---

## Descrição
Após uma tentativa de login inválida, a mensagem de erro permanece visível mesmo após um login bem-sucedido subsequente.

---

## Passos para execução
1. Acesse https://www.saucedemo.com
2. Digite um nome de usuário ou senha inválidos
3. Clique em *Login*
4. Observe a mensagem de erro
5. Sem atualizar a página, insira credenciais válidas
6. Clique em *Login*

---

## Resultado esperado
Após um login bem-sucedido, quaisquer mensagens de erro anteriores devem ser apagadas e não mais visíveis.

---

## Resultado obtido
O usuário fez login com sucesso, mas a mensagem de erro anterior permanece visível na tela.

---

## Impacto
Este problema pode confundir os usuários, fazendo-os acreditar que o processo de login falhou mesmo quando o acesso foi concedido.

---

# Evidencias
![BUG003_error_persists](../evidence/BUG003_login_error_persists.png)


