*** Settings ***
Library  OperatingSystem

*** Test Cases ***
TC1
     File Should Exist  ${EXEC_DIR}${/}demo.txt
     File Should Exist  ${EXEC_DIR}${/}demo.txt

     ${output}   Get Binary File  ${EXEC_DIR}${/}demo.txt
     Log To Console  ${output}
     Log  ${output}

     Copy File  ${EXEC_DIR}${/}demo.txt    ${EXEC_DIR}${/}demo_new.txt

     Remove File  ${EXEC_DIR}${/}demo_new.txt