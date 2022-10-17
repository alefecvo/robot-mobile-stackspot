*** Settings ***

Library        AppiumLibrary
Resource       ../../pages/login/allPagesLogin.resource 

***Keywords***
# Dado que acesso a tela home
#     Get Started
    
# Quando acessar a tela login vindo da opção Forms da home
#     Click Menu Option Forms
#     Check Screen Forms
#     Click Button Login   
# Então será exibido a tela Login
#     Check Screen Login

Dado que acesso a tela login
    Go To Home
    Go To Forms Menu

Quando informar as credencias de email e senha
    Click Button Login
    Check Screen Login
    Input Text Email
    Input Text Senha
    Click Button Entrar
    
Então será exibido usuário logado
    Check Screen Text