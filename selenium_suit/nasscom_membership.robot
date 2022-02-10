*** Settings ***
Library    SeleniumLibrary
Library     Collections

#*** Comments ***
#1. Navigate https://nasscom.in/nasscom-membership
#2. Click radio button Institutional Members
#3. Check Education and Training
#4. Check Telecom Services
#5. click Calculate Membership Fee
#6. get the alert text and print in the console
#7. handle the alert box
#closes browser within seconds is given close browser with pass results

*** Test Cases ***
TC1

       Open Browser       browser=edge      executable_path=${EXECDIR}\\drivers\\msegdedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   10s
    Go To    url=https://nasscom.in/nasscom-membership
    Click Element    id=edit-field-membership-type-und-1203
    Click Element    id=edit-field-business-focus-inst-und-966
    Click Element    id=edit-field-business-focus-inst-und-970
    Click Element    link=Calculate Membership Fee
    ${alert_text}  Handle Alert  action=Accept  timeout=20s
    Log To Console  ${alert_text}
    Close Browser

