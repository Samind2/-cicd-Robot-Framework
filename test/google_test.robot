*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${REMOTE_URL}     http://localhost:4444/wd/hub
${BROWSER}        chrome
${TARGET_URL}     https://www.google.com

*** Test Cases ***
Open Google With Remote Selenium Grid
    Open Browser    ${TARGET_URL}    ${BROWSER}    remote_url=${REMOTE_URL}
    Title Should Be    Google
    Close Browser