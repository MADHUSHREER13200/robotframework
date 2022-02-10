*** Variables ***
${MY_NAME}   madhushree
@{COLORS}    red     blue    green   black   yellow
&{EMPLOYEE1}     empfn=Madhu     empln=R     empid=101   empname=Madhu   empage=21

*** Test Cases ***
TC1
     Log To Console  ${EXEC_DIR}
     Log To Console  ${CURDIR}
     Log To Console  ${OUTPUT_DIR}
     Log To Console  ${EXEC_DIR}{/}drivers${/}msedgedriver.exe
     Log To Console  ${SUITE_NAME}
     Log To Console  ${TEST_NAME}
     Log To Console  ${TEMP_DIR}
     Log To Console  ${MY_NAME}

     Log To Console  ${COLORS}
     Log To Console  ${COLORS}[0]

TC2
     FOR    ${i}    IN RANGE     0   2    1
     Log To Console  ${COLORS}[${i}]
     END

TC3
     FOR  ${color}   IN  @{COLORS}
     Log To Console  ${color}
     END

TC4
     Log To Console  ${EMPLOYEE1}
     Log To Console  The employee age is ${EMPLOYEE1}[empage]
     Log To Console  The first name of employee is ${EMPLOYEE1}[empfn]
     Log To Console  The last name of employee is ${EMPLOYEE1}[empln]

