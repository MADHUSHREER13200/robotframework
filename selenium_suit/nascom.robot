*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
     Open Browser  url=https://nasscom.in/about-us/career   browser=edge  executable_path=${EXECDIR}\\drivers\\msedgedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait   30s
     Click Element   xpath=//*[@id="member-form"]/div/div/a
     Input Text  id=edit-field-fname-reg admin
     Input Text  id=edit-field-lname pass
     Input Text  id=edit-mail    admin@gmail.com
     Input Text  id=edit-field-company-name-registration     Google
     Click Element   xpath=//select[@id='edit-field-business-focus-reg']/option[@value='51']
     #Input Text     id=edit-captcha-response
     Click Element   id=edit-submit--2
