*** Settings ***
Library    SeleniumLibrary

#robot selenium_suite/oranage_hrm_suite.robot
*** Test Cases ***
TC1 Valid Login
    Open Browser    url=https://www.medibuddy.in/     browser=edge      executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Click Element    link=Sign up
    Input Text    id=name    Madhu
    Input Text    name=email    madhu@gmail.com
    Input Text    id=companyName    LTTS
    Input Text    id=mobileNumber    7377496015
    Click Element    xpath=//input[@value='Next']
#    Close Window
    Close Browser