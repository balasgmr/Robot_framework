*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators.py

*** Keywords ***
opening_browser
    [Arguments]     ${site_url}    ${browser}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu
    # Set binary_location like this using Python expression
    Evaluate    setattr(${options}, "binary_location", "/snap/bin/chromium")
    Open Browser    ${site_url}    ${browser}    options=${options}
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

