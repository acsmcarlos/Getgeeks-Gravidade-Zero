*** Settings ***
Documentation    Attempt Be Geek test suite

Resource    ${EXECDIR}/Resources/Base.robot

Suite Setup      Start Session For Attempt Be Geek
Test Template    Attempt Be A Geek

*** Variables ***
${long_desc}    Instalo Distros Ubuntu, Debian, ElementaryOS, PopOs, Linux Mint, Kurumin, Mandrake, Connectiva, Fedora, 
...             RedHat, CentOS, Slackware, Gentoo, Archlinux, Kubuntu, Xubuntu, Suze, Mandriva, Edubuntu, KateOS, Sabayon
...             Linux, Manjaro Linux, BigLinux, ZorinOS, Unity.

*** Test Cases ***
Short Desc            desc              Formato o seu pc    A descrição deve ter no minimo 80 caracteres
Long Desc             desc              ${long_desc}        A descrição deve ter no máximo 255 caracteres
Empty Desc            desc              ${EMPTY}            Informe a descrição do seu trabalho
Whats Only DDD        whats             11                  O Whatsapp deve ter 11 digitos contando com o DDD
Whats Only Number     whats             999999999           O Whatsapp deve ter 11 digitos contando com o DDD
Empty Whats           whats             ${EMPTY}            O Whatsapp deve ter 11 digitos contando com o DDD
Cost Letter           cost              aaaa                Valor hora deve ser numérico
Cost Alpha            cost              aa12                Valor hora deve ser numérico
Cost Special Chars    cost              %$#@&*              Valor hora deve ser numérico
Empty Cost            cost              ${EMPTY}            Valor hora deve ser numérico
Empty Work            work              ${EMPTY}            Por favor, selecione o modelo de trabalho
Empty Print Repair    printer_repair    ${EMPTY}            Por favor, informe se você é um Geek Supremo

*** Keywords ***
Attempt Be A Geek
    [Arguments]    ${key}    ${input_field}    ${output_message}

    ${user}    Factory User    attempt_be_geek

    Set To Dictionary    ${user}[geek_profile]    ${key}    ${input_field}

    Fill Geek Form          ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    ${output_message}
    
    After Test

Start Session For Attempt Be Geek
    ${user}    Factory User    attempt_be_geek

    Start Session
    Do Login           ${user}
    Go To Geek Form