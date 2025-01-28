*** Settings ***
Documentation    Desafio Robot Framework Prime Control- Ações e elementos da homepage 

#Libraries
Library    SeleniumLibrary

# Test Data
Resource    resources/data/testData.resource
Variables   resources/data/fakeData.py

# Pages
Resource    resources/page/loginPage.resource
Resource    resources/page/finalizarPage.resource
Resource    resources/page/homePage.resource
Resource    resources/page/gerenciarClientePage.resource

# Locators
Resource    resources/Locators/finalizarLocator.resource
Resource    resources/locators/gerenciarLocator.resource
Resource    resources/locators/homeLocator.resource
Resource    resources/locators/loginLocator.resource

# Utils
Resource    resources/utils/openBrowser.resource
Resource    resources/utils/utils.resource

*** Variables ***
${BROWSER}              Chrome
${URL}                  https://challenge.primecontrol.com.br/
${file_path}            ./screenshots/