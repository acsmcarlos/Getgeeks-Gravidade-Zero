*** Settings ***
Documentation    Geek Actions


*** Keywords ***
Go To Geek Form
    Click    css=a[href='/be-geek'] >> text=Seja um Geek

    Wait For Elements State    css=.be-geek-form    visible    5

Fill Geek Form
    [Arguments]    ${geek_profile}

    Fill Text    id=whatsapp     ${geek_profile}[whats]
    Fill Text    id=desc         ${geek_profile}[desc]

    ${ele_printer}    Set Variable    id=printer_repair
    Select Options By    ${ele_printer}    text    ${geek_profile}[printer_repair]

    ${ele_work}    Set Variable    id=work
    Select Options By    ${ele_work}       text     ${geek_profile}[work]

    Fill Text     id=cost    ${geek_profile}[cost]

Submit Geek Form
    Click     css=button >> text=Quero ser um Geek

Geek Form Should Be Success
    ${expected_message}    Set Variable    Seu cadastro está na nossa lista de geeks. Agora é só ficar de olho no seu WhatsApp.

    Wait For Elements State    css=p >> text=${expected_message}    visible    5

WhatsApp With Short Number
    [Arguments]    ${short_number}

    ${user}    Factory User    login

    ${users}    Create Dictionary
    ...         whats=${short_number}
    ...         desc=Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema
    ...         printer_repair=Sim
    ...         work=Remoto
    ...         cost=150

    Fill Geek Form          ${users}
    Submit Geek Form
    Alert Span Should Be    O Whatsapp deve ter 11 digitos contando com o DDD

Hour With Wrong Value
    [Arguments]    ${value_wrong}

    ${user}    Factory User    login

    ${users}    Create Dictionary
    ...         whats=34988882222
    ...         desc=Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema
    ...         printer_repair=Sim
    ...         work=Remoto
    ...         cost=${value_wrong}

    Fill Geek Form          ${users}
    Submit Geek Form
    Alert Span Should Be    Valor hora deve ser numérico