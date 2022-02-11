*** Settings ***

Library      ../python_code/calculator.py

*** Test Cases ***
TC1
     ${res}  Add  50     30
     Log To Console  ${res}

     ${res}  Sub  50     30
     Log To Console  ${res}
