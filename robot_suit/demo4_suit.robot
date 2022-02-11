*** Settings ***

*** Test Cases ***
TC1
    Set Local Variable    ${val1}       $120,000,000
    ${val2}     Set Variable    $900,000

     ${val1}     Remove Strings  ${val1}
     Log To Console  ${val1}

     ${val2}     Remove Strings  ${val2}
     Log To Console  ${val2}

     ${num1}     Convert To Integer  ${val1}
     ${num2}     Convert To Number  ${val2}

     ${res}  Evaluate  ${num1}+${num2}
     Log To Console



