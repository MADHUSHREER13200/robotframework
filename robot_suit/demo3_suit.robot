*** Settings ***
Library    Collections

*** Test Cases ***
TC1
    Set Local Variable    ${firstname}   Madhu
    ${lastname}     Set Variable    mathi
    Log To Console    ${firstname} ${lastname}

    @{fruits}   Create List    apple    banana     pineapple
    Log To Console    ${fruits}
    Log To Console    ${fruits}[0]

    FOR    ${color}    IN    @{fruits}
        Log To Console    ${color}
    END

    Log List   ${fruits}

    Set Global Variable    ${otp}   80000

TC2
    Log To Console    ${otp}
#    Log List   ${fruits}
    &{dic}   Create Dictionary   firstname=Madhu    lastname=mathi   mobile=9886
    Log To Console    ${dic}[lastname]