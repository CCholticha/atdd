*** Settings ***
Library  Collections
Resource  variable.robot
Library  SeleniumLibrary

*** Keywords ***
Plus Number
    [Arguments]  ${num1}  ${num2}
    ${result}=  Evaluate  ${num1}+${num2}
    [Return]  ${result}

*** Test Cases ***
Frist Test Cases
    ${r}=  Plus Number  1  2
    # Log To Console  ${r}
    # ${expected_result}=  Set Variable  3
    Should Be Equal As Strings  ${r}  ${expected_result}

    # ${index0}=  Get From List  ${list}  2
    # Log To Console  ${index0}

    # ${key_name}=  Get From Dictionary  ${dict}  Position
    # Log To Console  ${key_name}

Second Test Cases
    Open Browser  http:://www.google.co.th  Chrome


# *** Variables ***
# # ${expected_result}  ${3}
# ${scala}  1
# @{list}  Parn  Pop
# &{dict}  Name=Parn  Position=QA