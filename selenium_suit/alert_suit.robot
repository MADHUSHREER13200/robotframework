*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
     Open Browser    browser=edge    executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait      30s
     Go To  url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
     Click Element   xpath=//img[@alt='Go']
     ${alert_text}   Handle Alert  action=ACCEPT     timeout=20s
     Log To Console  ${alert_text}
     Close Browser