*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Multitabs login

        Open Browser      browser=edge      executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://phptravels.net/
    Click Element    id=currency
    Select From List By Label    id=currency    INR
    Set Selenium Implicit Wait    5s
    Click Element    link=flights
    Select From List By Label    id=flight_type     Business

