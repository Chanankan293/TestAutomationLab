*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///${EXECDIR}/StarterFiles/Registration.html

*** Test Cases ***
Register Empty Phone
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    2s

    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com

    Click Button    id=registerButton
    Sleep    2s

    Title Should Be    Registration
    Page Should Contain    Please enter your phone number!!

    Close Browser
