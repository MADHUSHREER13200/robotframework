*** Variables ***
${MY_NAME}   madhushree
@{COLORS}    red     blue    green
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
     FOR    ${i}    IN RANGE     0   3    1
     Log To Console  ${COLORS}[${i}]
     END
