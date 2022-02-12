*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
     Open Browser    browser=edge    alias=b1    executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
     Go To   url=https://google.com/
     Open Browser    browser=edge    alias=b2   executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
     Go To   url=https://facebook.com/
     Switch Browser  b1
     ${title}    Get Title
     Log To Console  ${title}
     Switch Browser  b2
     Close All Browsers