*** Settings ***
Documentation    Be Geek test suite

Resource    ${EXECDIR}/Resources/Base.robot

Test Setup       Start Session
Test Teardown    Finish Session


*** Test Cases ***
Be a Geek

    ${user}     Factory User    be_geek
    Do Login    ${user}

    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form

    Geek Form Should Be Success 

Short Description

    ${user}     Factory User    short_desc
    Do Login    ${user}

    Go To Geek Form
    Fill Geek Form          ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    A descrição deve ter no minimo 80 caracteres

Long Description

    ${user}     Factory User    long_desc
    Do Login    ${user}

    Go To Geek Form
    Fill Geek Form          ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    A descrição deve ter no máximo 255 caracteres


# DESAFIO FINAL PRO (os 5 primeiros dia 15 às 20h) ===========================
# 01 - Whatsapp em branco
WhatsApp Should Be Blank
    [Tags]    blank_whats

    ${user}    Factory User    login

    ${user_list}    Create Dictionary
    ...             whats=${EMPTY}
    ...             desc=Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema
    ...             printer_repair=Sim
    ...             work=Remoto
    ...             cost=150

    Do Login                ${user}
    Go To Geek Form
    Fill Geek Form          ${user_list}
    Submit Geek Form
    Alert Span Should Be    O Whatsapp deve ter 11 digitos contando com o DDD

# 02 Whatsapp somente DDD
# 03 Whatsapp com 3 até 10 dígitos
WhatsApp With Short Number
    [Tags]    ten_dig

    [Setup]    New Start Session

    [Template]    WhatsApp With Short Number
    34
    349
    3499
    34999
    349999
    3499999
    34999999
    349999999
    3499999999

Print Repair Should Be Blank
    [Tags]    blank_print

    ${user}    Factory User    login

    ${user_list}    Create Dictionary
    ...             whats=34958462579
    ...             desc=Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema
    ...             printer_repair=${EMPTY}
    ...             work=Remoto
    ...             cost=150

    Do Login                ${user} 
    Go To Geek Form
    Fill Geek Form          ${user_list}
    Submit Geek Form
    Alert Span Should Be    Por favor, informe se você é um Geek Supremo

Work Should Be Blank
    [Tags]    blank_work

    ${user}    Factory User    login

    ${user_list}    Create Dictionary
    ...             whats=34958462579
    ...             desc=Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema
    ...             printer_repair=Sim
    ...             work=${EMPTY}
    ...             cost=150

    Do Login                ${user}
    Go To Geek Form
    Fill Geek Form          ${user_list}
    Submit Geek Form
    Alert Span Should Be    Por favor, selecione o modelo de trabalho

# 04 - Descrição em branco
Description Should Be Blank
    [Tags]    blank_desc

    ${user}    Factory User    login

    ${user_list}    Create Dictionary
    ...             whats=34998765421
    ...             desc=${EMPTY}
    ...             printer_repair=Sim
    ...             work=Remoto
    ...             cost=150

    Do Login                ${user}
    Go To Geek Form
    Fill Geek Form          ${user_list}
    Submit Geek Form
    Alert Span Should Be    Informe a descrição do seu trabalho

# 05 Valor hora em branco
Hour Should Be Blank
    [Tags]    blank_hour

    ${user}    Factory User    login

    ${user_list}    Create Dictionary
    ...             whats=34958462579
    ...             desc=Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema
    ...             printer_repair=Sim
    ...             work=Remoto
    ...             cost=${EMPTY}

    Do Login                ${user}
    Go To Geek Form
    Fill Geek Form          ${user_list}
    Submit Geek Form
    Alert Span Should Be    Valor hora deve ser numérico

# 06 - Valor hora com alfanuméricos
# 07 - Valor hora com letras
# 08 - Valor hora com caracteres especiais
Incorrect Hour Format
    [Tags]    i_hour

    [Setup]    New Start Session

    [Template]    Hour With Wrong Value
    34S8f6q8O5f
    AoYjlWsOPnF
    !@#$%&*()+_
