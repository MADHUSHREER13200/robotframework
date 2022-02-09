*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
TC1 Valid Login
     Open Browser  url=https://www.medibuddy.in/     browser=edge  executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait   30s
     Click Element   link=For Employer
     Switch Window   MediBuddy LaunchPad
     Click Element   Link=Sign Up
     Input Text  id=name     Madhu
     Input Text  id=email    madhu@gmail.com
     Input Text  id=companyName  Google
     Input Text  id=mobileNumber     7760537040
     Click Element   xpath=//input[@value='Next']
     Close Window




