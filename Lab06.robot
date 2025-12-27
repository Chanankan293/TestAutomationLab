*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///${EXECDIR}/StarterFiles/Registration.html

*** Test Cases ***
Register Empty Email
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    2s

    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=phone           091-001-1234

    Click Button    id=registerButton
    Sleep    2s

    Title Should Be    Registration
    Page Should Contain    Please enter your email!!

    Close Browser
