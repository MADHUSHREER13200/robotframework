*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
     Open Browser    browser=edge      executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait      5s
     Go To  url=https://netbanking.hdfcbank.com/netbanking/
     Comment  switching to frame
     Select Frame  xpath=//frame[@name="login_page"]

     Input Text  name=fldLoginUserId     test123
     Comment  click on continue
     Click Element  link=CONTINUE

     Comment  switch to main html
     Unselect Frame