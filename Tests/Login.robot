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

Should Be Type Email
    [Tags]    inv_email

    ${user}    Create Dictionary    email=antonio&gmail.com    password=123456

    Go To Login Page
    Fill Credentials              ${user}
    Submit Credentials
    Field Should Be Type Email

### TEST CASES DO DESAFIO DIA 8/NOV=============================================
Empty Email
    [Tags]    email_empty

    ${user}    Create Dictionary    email=${EMPTY}    password=123456

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Alert Text Should Be    E-mail obrigatório

Empty Password
    [Tags]    pass_empty

    ${user}    Create Dictionary    email=antonio@gmail.com    password=${EMPTY}

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Alert Text Should Be    Senha obrigatória

Required Fields
    [Tags]    fields_empty

    ${user}    Create Dictionary    email=${EMPTY}    password=${EMPTY}

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Alert Text Should Be    E-mail obrigatório
    Alert Text Should Be    Senha obrigatória