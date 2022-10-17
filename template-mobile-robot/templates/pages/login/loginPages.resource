*** Settings ***

Library           AppiumLibrary

*** Variables ***
${AND_FORMS_TEXT}       FORMS

${AND_LOGIN_TEXT}       LOGIN
${AND_TITULO_LOGIN_TEXT}        Fala QA, vamos testar o login?

${AND_EMAIL_INPUT}      id=io.qaninja.android.twp:id/etEmail
${AND_SENHA_INPUT}      id=io.qaninja.android.twp:id/etPassword

${AND_ENTRAR_BUTTON}        id=io.qaninja.android.twp:id/btnSubmit

${AND_MESSAGE_TEXT}     Show! Suas credenciais são validas. 

${AND_TOOLBAR_TILE}     id=io.qaninja.android.twp:id/toolbarTitle


${AND_START_BUTTON}     COMEÇAR
${AND_MENU_BUTTON}      xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${AND_NAV_VIEWER}       id=io.qaninja.android.twp:id/navView


*** Keywords ***
Go To Home
    Wait Until Page Contains            ${${PLATAFORMA}_START_BUTTON}
    Click Text                          ${${PLATAFORMA}_START_BUTTON}

    Wait Until Element Is Visible       ${${PLATAFORMA}_MENU_BUTTON}
    Click Element                       ${${PLATAFORMA}_MENU_BUTTON}
    Wait Until Element Is Visible       ${${PLATAFORMA}_NAV_VIEWER}

Go To Forms Menu
    Click Text                          ${${PLATAFORMA}_FORMS_TEXT}
    Wait Until Element Is Visible       ${${PLATAFORMA}_TOOLBAR_TILE} 
    Element Text Should Be              ${${PLATAFORMA}_TOOLBAR_TILE}       ${${PLATAFORMA}_FORMS_TEXT}


Click Button Login
    Wait Until Page Contains    ${${PLATAFORMA}_FORMS_TEXT}
    Wait Until Page Contains    ${${PLATAFORMA}_LOGIN_TEXT}  
    Click Text                  ${${PLATAFORMA}_LOGIN_TEXT}           

Check Screen Login
   Wait Until Page Contains         ${${PLATAFORMA}_TITULO_LOGIN_TEXT}
   
Input Text Email
    Input Text                      ${${PLATAFORMA}_EMAIL_INPUT}    eu@papito.io  

Input Text Senha
    Input Text                      ${${PLATAFORMA}_SENHA_INPUT}    qaninja            

Click Button Entrar
    Click Element                   ${${PLATAFORMA}_ENTRAR_BUTTON}



Check Screen Text
    Wait Until Page Contains        ${${PLATAFORMA}_MESSAGE_TEXT}


