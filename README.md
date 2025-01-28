# Automação de Testes - Cadastro de Clientes 🤖

Este projeto foi desenvolvido para automatizar o processo de cadastro de clientes utilizando **Robot Framework** com a biblioteca **SeleniumLibrary**. A abordagem segue o conceito **POM (Page Object Model)** e utiliza cenários descritos no formato **BDD (Behavior-Driven Development)** com **Gherkin**.

---

## 📋 Funcionalidades Testadas

Os **12 casos de teste** automatizados cobrem os seguintes aspectos do cadastro de clientes:
  
   * **CT001** — Teste de exclusão bem-sucedida
   * **CT002** — Teste de cliente não encontrado
   * **CT003** — Realizar Login com sucesso
   * **CT004** — Validar Login com senha inválida
   * **CT005** — Realizar Cadastro de Clientes com sucesso na aba Perfil
   * **CT006** — Validar Pesquisa de Cliente recém cadastrado e exibição dos dados em tela
   * **CT007** — Editar Cliente através do botão na listagem de clientes
   * **CT008** — Validar Cadastro de Clientes com Email inválido na aba Perfil
   * **CT009** — Validar preenchimento de campos obrigatórios na aba Perfil
   * **CT010** — Realizar Logout com sucesso ao clicar em “Finalizar”
   * **CT011** — Recuperar senha de acesso
   * **CT012** — Validar preenchimento “Informações do Candidato” ao clicar em “Finalizar e Enviar”

---

## 🛠️ Tecnologias Utilizadas

- **[Robot Framework](https://robotframework.org/):** Framework para automação de testes.  
- **[SeleniumLibrary](https://robotframework.org/SeleniumLibrary/):** Manipulação de elementos web.  
- **POM (Page Object Model):** Organização para facilitar a manutenção do código.  
- **Gherkin:** Linguagem de escrita de cenários BDD.
- **Faker:** Biblioteca Python para geração de dados fictícios.
- **Postman:** Testes de API integrados ao projeto.

---

## 📖 Estrutura Detalhada

### **resources/**
- **Data/**
  - **fakeData.py:** Scripts Python utilizando a biblioteca Faker para gerar dados fictícios como nomes, e-mails, endereços, etc.
  - **imagem-de-perfil-teste.jpg:** Imagem utilizada para testes de upload de foto de perfil.
  - **testData.resource:** Contém variáveis em string para dados de massa, como credenciais de login e informações de clientes.

- **Locators/**
  - **loginLocator.resource, homeLocator.resource, etc.:** Arquivos que definem os locators (elementos da página) para cada página da aplicação.

- **Page/**
  - **loginPage.resource, homePage.resource, etc.:** Contêm as keywords (palavras-chave) que representam as ações que podem ser realizadas em cada página.

- **Utils/**
  - **openBrowser.resource:** Contém a keyword para abrir o navegador.
  - **utils.resource:** Contém keywords utilitárias, como captura de tela.

### **tests/**
- **Test.api_Postman/:** Testes de API realizados com o Postman.
- **Suites de Teste/**
  - **Login_PO_Test.robot, Home_PO_Test.robot, etc.:** Arquivos que contêm os casos de teste para cada funcionalidade da aplicação.
- **_init_robot:** Configura o ambiente de teste, incluindo ações de setup e teardown.

### **results/screenshots/**
- **Evidências de Teste:** Capturas de tela geradas durante a execução dos testes, organizadas por caso de teste.

---

## 🚀 Como Executar o Projeto

### Pré-requisitos

1. Instale o Python.  
2. Instale as dependências do projeto:  
   ```bash
   pip install -r requirements.txt

### Execução dos Testes

1. Configure o navegador e a URL no arquivo base.resource.

2. Execute os testes a partir da pasta raiz:
   ```bash
   robot -d results testes/

3. Acesse os relatórios em results/report.html para visualizar os resultados.


## 📄 Relatórios e Evidências

Após a execução dos testes, os relatórios gerados podem ser encontrados na pasta results/. Além disso, as capturas de tela das execuções estão disponíveis em results/screenshots/, fornecendo evidências visuais dos testes realizados.


## 📝 Considerações Finais

Este projeto foi estruturado para ser modular e de fácil manutenção, seguindo boas práticas de automação de testes. A utilização de dados fictícios gerados pela biblioteca Faker e a inclusão de testes de API com Postman garantem uma cobertura abrangente dos cenários de teste.