*** Settings ***
Resource    ../../robotfile.txt
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${REGISTER_URL}        https://beta.pintarinaja.co.id

*** Test Cases ***
User Registration Test
    Open Browser    ${REGISTER_URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    id=username    prasetiowicaksanacaesar@gmail.com
    Input Text    id=password    P4ssw0rD
    Input Text    id=confirm_password    P4ssw0rD
    Click Button    xpath=//*[@id="__next"]/div/div[1]/main/div/div/div/div[3]/p/a
    Wait Until Page Contains Element    xpath=//*[@id="__next"]/div/div[1]/main/div/div/div/h1
    Close Browser
