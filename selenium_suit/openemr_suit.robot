*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
     Open Browser  url=https://demo.openemr.io/b/openemr/index.php   browser=edge  executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait   30s
     Input Text   id=authUser123  Admin
     Input Password   id=clearPass    pass
     Select From List By Label   name=languageChoice     English (Indian)
     Click Element   xpath//button[@type='submit']
     ${title}    Get Title
     Log To Console  ${title}
     Title Should Be     OpenEMR
     Close Browser
