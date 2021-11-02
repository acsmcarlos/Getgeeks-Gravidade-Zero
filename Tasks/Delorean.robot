*** Settings ***
Documentation    Delorean

Resource    ${EXECDIR}/Resources/Database.robot

*** Tasks ***
Back To The Past
    
    Connect To Postgres
    Reset Env
    Users Seed
    Disconnect From Database