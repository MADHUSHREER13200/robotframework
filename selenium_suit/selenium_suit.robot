*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
     Open Browser    browser=edge      executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait      30s
     Set Selenium Speed  1s
     Go To  url=https://demo.openemr.io/b/openemr/index.php

     Input Text  id=authUser     admin

     Reload Page

     Input Password  id=clearPass    Pass
     Select From List By Label  name=languageChoice  English (Indian)

     ${appdesc}  Get Text  xpath=//p[contains(text(),'most')]
     Log To Console  ${appdesc}

     ${selecteddropdownlabel}    Get Selected List Label     name=languageChoice
     Log To Console  ${selecteddropdownlabel}
