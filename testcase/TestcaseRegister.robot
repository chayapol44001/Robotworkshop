*** Settings ***     
Library        SeleniumLibrary

Resource        ../keyword/OTPPageKeyword.robot
Resource        ../keyword/RegisterPageKeyword.robot

Variables        ../resources/config/config.yaml
Variables        ../resources/testdata/testdata.yaml

Suite Setup     Open Browser    ${baseUrl}  chrome
Suite Teardown     Close Browser

*** Test Cases ***
As a user, I want to register success with wait OTP
    When user register to future skill platform with ${email}, ${name}, ${surname}, ${phonenum} and ${password}
    Then future skill Should display OPT page and display message as "รหัส OTP ที่ได้รับ (โปรดระบุภายในเวลา 1 นาที)"
