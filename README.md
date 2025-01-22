# Automação de Testes - Cadastro de Clientes 🛠️

Este projeto foi desenvolvido para automatizar o processo de cadastro de clientes utilizando **Robot Framework** com a biblioteca **SeleniumLibrary**. A abordagem segue o conceito **POM (Page Object Model)** e utiliza cenários descritos no formato **BDD (Behavior-Driven Development)** com **Gherkin**.

---

## 📋 Funcionalidades Testadas

Os **12 casos de teste** automatizados cobrem os seguintes aspectos do cadastro de clientes:
  
   * CT001— Teste de exclusão bem-sucedida
   * CT002 — Teste de cliente não encontrado
   * CT003 — Realizar Login com sucesso
   * CT004 — Validar Login com senha inválida
   * CT005 — Realizar Cadastro de Clientes com sucesso na aba Perfil
   * CT006 — Validar Pesquisa de Cliente recém cadastrado e exibição dos dados em tela
   * CT007 — Editar Cliente através do botão na listagem de clientes
   * CT008 — Validar Cadastro de Clientes com Email inválido na aba Perfil
   * CT009— Validar preenchimento  de campos obrigatórios na aba Perfil
   * CT010 — Realizar Logout com sucesso ao clicar em “Finalizar”
   * CT011— Recuperar senha de acesso
   * CT012 — Validar preenchimento “Informações do Candidato” ao clicar em “Finalizar e Enviar”

## 🛠️ Tecnologias Utilizadas

- **[Robot Framework](https://robotframework.org/):** Framework para automação de testes.  
- **[SeleniumLibrary](https://robotframework.org/SeleniumLibrary/):** Manipulação de elementos web.  
- **POM (Page Object Model):** Organização para facilitar a manutenção do código.  
- **Gherkin:** Linguagem de escrita de cenários BDD.
- 
## 📖 Estrutura Detalhada

resources/Page/
Keywords Encapsuladas: Cada arquivo .resource contém as ações e os locators específicos para uma página ou funcionalidade.
Exemplo:
Login.resource contém as keywords para preencher o formulário de login, clicar no botão e validar erros.
testes/
Suites de Teste: Cada arquivo .robot é responsável por uma funcionalidade, contendo os cenários de teste no formato BDD.
Exemplo:
GerenciarCliente_PO_Test.robot testa ações como adicionar, editar e excluir clientes.
results/screenshots/
Evidências de Teste: São capturas de tela geradas durante a execução, organizadas por caso de teste.


## 🚀 Como Executar o Projeto

### Pré-requisitos

1. Instale o Python.  
2. Instale as dependências do projeto:  
   ```bash
   pip install -r requirements.txt

  # Execução dos Testes
  
1. Configure o navegador e a URL no arquivo base.resource.
2. Execute os testes a partir da pasta raiz:
   ```bash
        robot -d results testes/

3. Acesse os relatórios em results/report.html para visualizar os resultados.




