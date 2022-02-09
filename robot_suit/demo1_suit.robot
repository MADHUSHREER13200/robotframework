*** Settings ***
Library  DateTime

*** Test Cases ***
Tc1 print Name
     Log To Console     ${EXECDIR}\\drivers\\edgedriver
     Log To Console     Madhuri

Tc2 print Date
     ${date}        Get Current Date
     Log To Console  ${date}


Tc3 Store Data
      Set Local Variable    ${name}         Madhuri
      Log To Console    ${name}
      Log   hello,${name}
      ${titel}  Set Variable        robotframework
      Log To Console    ${titel}

Tc4 Add Number
      Set Local Variable  ${num1}   5
      Set Local Variable    ${num2}  3
      ${res}        Evaluate   ${num1}+${num2}

      Log To Console        ${res}
Tc5 AreabOf Circle
      Set Local Variable       ${radius}   10
      ${res}     Evaluate   3.14*${radius}*${radius}
      Log To Console    ${res}

Tc6 If cond
      Set Local Variable       ${browser}  chrome

      IF   '${browser}'=='chrome'
          Log To Console    yes! its chrome
      ELSE
           Log To Console     no! its not chrome
      END

Tc7 For loop
        FOR  ${i}   IN RANGE    1      11      1
            Log To Console  ${i}
        END

