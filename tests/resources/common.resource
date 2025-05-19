*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login As User
    [Arguments]    ${email}    ${password}
    Input Text    css=[name=login-username]    ${email}
    Input Password    css=[name=login-password]    ${password}
    Click Button    css=[name=login_submit]

*** Variables ***
${BASE_URL}    http://selenium1py.pythonanywhere.com/ru/