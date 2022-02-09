*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
Tc1 Valid Login
    Append To Environment Variable    path   ${EXECDIR}\\drivers
    Open Browser  url=https://opensource-demo.orangehrmlive.com/      browser=edge
    Input Text    id=txtUsername  Admin
    Input password   id=txtPassword   admin123
    Click Element    name=Submit
    Click Element    link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text   id=emgcontacts_name     XYZ
    Input Text   id=emgcontacts_relationship     Mother
    Input Text   name=emgcontacts[homePhone]     081736682
    Input Text   name=emgcontacts[mobilePhone]   7349106090
    Click Element    id=btnSaveContact