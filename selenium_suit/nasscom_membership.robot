*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
     Append To Environment Variable       path      ${EXECDIR}\\drivers
     Open Browser  url=https://nasscom.in/nasscom-membership   browser=edge
     Maximize Browser Window
     Set Selenium Implicit Wait    5s
     Click Element    id=edit-field-membership-type-und-1203
     Click Element    id=edit-field-business-focus-inst-und-966
     Click Element    id=edit-field-business-focus-inst-und-970
     Click Element    link=Calculate Membership Fee
     ${alert_text}   Handle Alert     action=ACCEPT
     Log To Console    ${alert_text}
     Alert Should Be Present     Please enter  amount in digit and greater than zero.     action=ACCEPT

     Choose File  id=edit-field-memorandum-article-of-asso-und-O-upload  file_path=C:\\Users\\Ramesh\\Desktop\\Internship certificate.pdf

     Sleep  25s
     Close Browser