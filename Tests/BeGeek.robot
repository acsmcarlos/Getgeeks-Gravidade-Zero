*** Settings ***
Documentation    Be Geek test suite

Resource    ${EXECDIR}/Resources/Base.robot

Test Setup       Start Session
Test Teardown    Finish Session


*** Test Cases ***
Be a Geek
    
    ${user}    Factory User Be Geek
    ${geek}    Factory Be Geek
    
    Do Login    ${user}
    
    Go To Geek Form
    Fill Geek Form      ${geek}
    Submit Geek Form
    Geek Form Should Be Success 

