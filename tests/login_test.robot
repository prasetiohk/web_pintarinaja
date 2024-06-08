*** Settings ***
Resource    ../../robotfile.txt
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}   ${BASE_URL}

*** Test Cases ***
User Can Login Successfully
    [Documentation]    Test to verify user registration functionality
    Open Browser    ${LOGIN_URL}    ${BASE_URL}
    Input Text    id=first_name    Prasetio
    Input Text    id=email         prasetiowicaksanacaesar@gmail.com
    Input Text    id=password      P4ssw0rD
    Input Text    id=confirm_password      P4ssw0rD
    Click Button    id=register_button
    Wait Until Page Contains Element    id=registration_success_message
    Close Browser
