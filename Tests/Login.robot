*** Settings ***
Documentation    Authorization test suite

Resource    ${EXECDIR}/Resources/Base.robot

Test Setup       Start Session
Test Teardown    Finish Session


*** Test Cases ***
User Login
    [Tags]    happy

    ${user}    Factory User Login

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    User Should Be Logged In    ${user}

Incorrect Pass
    [Tags]    inv_pass

    ${user}    Create Dictionary    email=antonio@gmail.com    password=errada123

    Go To Login Page
    Fill Credentials           ${user}
    Submit Credentials
    Modal Content Should Be    Usuário e/ou senha inválidos.

User Not Found
    [Tags]    user_404

    ${user}    Create Dictionary    email=antonio@404.com    password=123456

    Go To Login Page
    Fill Credentials           ${user}
    Submit Credentials
    Modal Content Should Be    Usuário e/ou senha inválidos.

Incorrect Email
    [Tags]    inv_email

    ${user}    Create Dictionary    email=antonio&gmail.com    password=123456

    Go To Login Page
    Fill Credentials              ${user}
    Submit Credentials
    Field Should Be Type Email

###    DESAFIO 1 (MÓDULO PRO)    =============================================
Required Email
    [Tags]    email_empty

    ${user}    Create Dictionary    email=${EMPTY}    password=123456

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Alert Text Should Be    E-mail obrigatório

Required Password
    [Tags]    pass_empty

    ${user}    Create Dictionary    email=antonio@gmail.com    password=${EMPTY}

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Alert Text Should Be    Senha obrigatória

Required Fields
    [Tags]    fields_empty

    @{expected_alerts}    Set Variable
    ...                   E-mail obrigatório
    ...                   Senha obrigatória

    @{got_alerts}    Create List

    Go To Login Page
    Submit Credentials

    FOR    ${index}        IN RANGE     1    3
        ${span}            Get Required Alerts    ${index}
        Append To List     ${got_alerts}          ${span}
    END
    
    Log     ${expected_alerts}
    Log     ${got_alerts}
    
    Lists Should Be Equal     ${expected_alerts}    ${got_alerts}
   