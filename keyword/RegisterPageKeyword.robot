*** Settings ***     
Library        SeleniumLibrary
Resource        CommonKeyword.robot

*** Keywords ***
user register to future skill platform with ${email}, ${name}, ${surname}, ${phonenum} and ${password}
    CommonKeyword.Wait until element is ready then click element    xpath=//button[text()="สมัครสมาชิก"]
    CommonKeyword.Wait until element is ready then input text    name=email    ${email}
    CommonKeyword.Wait until element is ready then input text    name=firstName    ${name}
    CommonKeyword.Wait until element is ready then input text    name=lastName    ${surname}
    CommonKeyword.Wait until element is ready then input text    name=phoneNumber    ${phonenum}
    CommonKeyword.Wait until element is ready then input text    name=newPassword    ${password}
    CommonKeyword.Wait until element is ready then input text    name=confirmPassword    ${password}
    CommonKeyword.Wait until element is ready then click element    name=consent
    CommonKeyword.Wait until element is ready then click element    xpath=//button[@type="submit" and text()="สมัครสมาชิก"]