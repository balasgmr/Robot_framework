*** Settings ***
Library    SeleniumLibrary
Resource   ../GIT/Resource/keywords.robot
#Library    DataDriver    file=../GIT/Excel/logindata.xlsx

*** Variables ***
${site_url}    https://www.dummyticket.com/dummy-ticket-for-visa-application/
${browser}    chrome
${first_name_text}    test
${last_name_text}    last
${city_name_n}    Chennai
${staging_url}    https://www.saucedemo.com/


*** Test Cases ***
smoke
    [Tags]    smoke
    opening_browser    ${site_url}    ${browser}
    inputting_first_name    $first_name_text
    inputting_last_name    $last_name_text
    closing_browser
Regression
    [Tags]    regression
    opening_browser    ${site_url}    ${browser}
    Input Text    ${city}    ${city_name_n}

