*** Settings ***
Documentation    User route test suite

Resource    ${EXECDIR}/Users/Resources/Base.robot


*** Test Cases ***
Add New User

    ${payload}    Factory New User 

    ${response}         POST User    ${payload}
    
    Status Should Be    201          ${response}
    
    # Log To Console    \nStatus Code: ${response}