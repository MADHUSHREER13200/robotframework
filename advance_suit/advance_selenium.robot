*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
     Open Browser    browser=edge      executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait      30s
     Go To  url=http://google.com
     ${linkcount}    Get Element Count  tag=a
     Log To Console  ${linkcount}

     @{elements}     Get Webelements     tag=0
     Click Element  ${elements}[0]

     FOR     ${i}    IN RANGE    0   ${linkcount}    1
     ${text}     Get Text  ${elements}[${i}]
     Log To Console  ${text}

     Run Keyword If  '${text}'=='Images'     Click Element   ${elements}[${i}]
     Exit For Loop If  '${text}'=='Images'
     END

