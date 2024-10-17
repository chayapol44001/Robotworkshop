*** Settings ***     
Library        SeleniumLibrary
Resource        CommonKeyword.robot

*** Keywords ***
future skill Should display OPT page and display message as "${expected_message}"
    CommonKeyword.Wait until page contains element then verify text    ${expected_message}