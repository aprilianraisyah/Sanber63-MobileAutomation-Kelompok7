*** Settings ***
Library    AppiumLibrary

*** Variables ***
${LOCATORS}    ${EXECDIR}pageobject/signout_locators.yaml

*** Keywords ***
Load Locators
    ${data}    ${LOCATORS}
    Set Suite Variable    ${MENU_BUTTON}    ${data["locators"]["MENU_BUTTON"]}
    Set Suite Variable    ${LOGOUT_BUTTON}    ${data["locators"]["LOGOUT_BUTTON"]}
    Set Suite Variable    ${LOGIN_PAGE}    ${data["locators"]["LOGIN_PAGE"]}

Open Menu
    Load Locators
    Wait Until Element Is Visible    ${MENU_BUTTON}    timeout=5s
    Click Element                    ${MENU_BUTTON}
    Wait Until Element Is Visible    ${LOGOUT_BUTTON}    timeout=5s

Click Logout
    Click Element    ${LOGOUT_BUTTON}

Verify Logout Success
    Wait Until Element Is Visible    ${LOGIN_PAGE}    timeout=5s
    Element Should Be Visible        ${LOGIN_PAGE}
