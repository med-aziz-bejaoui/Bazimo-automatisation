*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot
*** Keywords ***
Login    
    Input Text    ${mail}    admin@bazimo.fr
    Input Text    ${mot de passe}   admin@bazimo.fr
    Click Button    ${bouton connexion}    
