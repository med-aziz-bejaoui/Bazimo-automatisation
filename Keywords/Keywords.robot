*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot
*** Keywords ***
Login    
    Input Text    ${input mail}    ${mail}
    Input Text    ${input mot de passe}   ${mot de passe}
    Click Button    ${bouton connexion}    
