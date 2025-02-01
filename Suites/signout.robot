*** Settings ***
Library    AppiumLibrary

Resource    PageObjects/SignoutPageObjects/signoutPage.robot

*** Test Cases ***
User Can Sign Out Successfully
    Open Application
    Open Menu
    Click Logout
    Verify Logout Success
