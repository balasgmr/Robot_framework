*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators.py

*** Keywords ***
opening_browser
    [Arguments]     ${site_url}    ${browser}
    Open Browser    ${site_url}    ${browser}    options=add_argument(--headless)
    Maximize Browser Window
closing_browser
    Close All Browsers
inputting_first_name
    [Arguments]    ${first_name_text}
    Input Text    ${first_name_l}    ${first_name_text}
inputting_last_name
    [Arguments]    ${last_name_text}
    Input Text    ${last_name}    ${last_name_text}
reg city
    [Arguments]    ${city}   ${city_name_n}
    Input Text     ${city}    ${city_name_n}

