*** Settings ***
Library        AppiumLibrary
Resource         ../resources/main.resource
Resource         ../steps/login/loginSteps.resource

Test Setup        Open Session
Test Teardown     Close Session

*** Test Cases ***
Deve fazer login com sucesso tela login com sucesso
    [Tags]      login
    Dado que acesso a tela login
    Quando informar as credencias de email e senha
    Então será exibido usuário logado