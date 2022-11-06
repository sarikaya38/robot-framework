*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://www.minuteinbox.com/
${copyLink}      //a[@class='blockLink copy cetc']
${sekmeUyeOl}        //a[@title='Hesap oluştur']
${uyeoluyeol}     //div[text()='Üye ol']


*** Keywords ***
 starting setup
    Switch Browser  ${url}
    Maximize Browser Window

 uyeOlButonu
    Click Element    ${copyLink}
    Click Element    ${sekmeUyeOl}
    Click Element    ${uyeoluyeol} 


tear down setup
    Sleep    4
    Close Browser