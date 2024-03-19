*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../variables/variables.robot
*** Keywords ***
Login 
    Open Browser    ${URL}    chrome    
    Maximize Browser Window
    on check element visibility    ${INPUT_MAIL} 
    Input Text    ${INPUT_MAIL}    ${MAIL}
    Input Text    ${INPUT_MOT_DE_PASSE}   ${MOT_DE_PASSE}
    Click Button    ${BOUTON_CONNEXION}    
Gestion    
    on check element visibility    ${GESTION}
    Mouse Over    ${GESTION}
    

Baux
    Gestion
    on check element visibility    ${Baux}
    Click Element    xpath:${Baux}
Lots    
    Gestion
    on check element visibility    ${LOTS}
    Click Element    xpath:${LOTS}
Session de quittancement
    Gestion
    Click Element    xpath:${Lots}

on check element visibility
    [Arguments]    ${location}

    Wait Until Element Is Visible    ${location}    1200   
    
    Element Should Be Visible    ${location}    1200

on check element not visibility
    [Arguments]    ${location}

    Wait Until Element Is Not Visible    ${location}    1200   
    
    Element Should Not Be Visible    ${location}    1200

Test Breadcrumb 
    [Arguments]    ${location}    ${VALEUR}
    on check element visibility    ${location}
    Element Should Contain    ${location}    ${VALEUR}




Browse lots list
    [Arguments]    ${lines}    ${localisation du chaine qui contient le nombre de lignes}
    On Check Element Visibility    ${localisation du chaine qui contient le nombre de lignes}
    ${PAGE_LINES}    Get Text    ${localisation du chaine qui contient le nombre de lignes}
    ${NUMBER}    Get Regexp Matches    ${PAGE_LINES}    \\d+
    ${NUMBER}    Convert To Integer    ${NUMBER[0]}
    Log    ${NUMBER}
    ${NUMBER_THRESHOLD}    Set Variable    50
    IF    ${NUMBER} > ${NUMBER_THRESHOLD}
        FOR    ${ITER}    IN RANGE    5    ${NUMBER}+1    5
            On Check Element Visibility    (${lines})[${ITER}]   
            Scroll Element Into View    (${lines})[${ITER}]
        END
    END
    Sleep    1
    ${count} =    Get Element Count    ${lines}
    Log To Console    ${count}
    [Return]    ${count}


compter le nombre de lots warning
    On Check Element Visibility    ${nombre de lots breadcrump location}
    ${PAGE_LINES}    Get Text    ${nombre de lots breadcrump location}
    ${NUMBER}    Get Regexp Matches    ${PAGE_LINES}    \\d+
    ${NUMBER}    Convert To Integer    ${NUMBER[0]}
    Log    ${NUMBER}
    ${NUMBER_THRESHOLD}    Set Variable    50
    IF    ${NUMBER} > ${NUMBER_THRESHOLD}
        FOR    ${ITER}    IN RANGE    5    ${NUMBER}+1    5
        On Check Element Visibility    (${LOTS LINES})[${ITER}]
        Scroll Element Into View    (${LOTS LINES})[${ITER}]
        END
    END
    ${count} =    Get Element Count    ${LOTS LINES Warnig}
    Sleep    1
    Log To Console    ${count}
    [Return]    ${count}
nombre de Lots expected
    
    On Check Element Visibility    ${nombre de lots breadcrump location}
    ${PAGE_LINES}    Get Text    ${nombre de lots breadcrump location}
    ${NUMBER}    Split String    ${PAGE_LINES}
    ${NUMBER}    Convert To Integer    ${NUMBER[0]}
    [Return]    ${NUMBER}

tester filtre rapide 
    [Arguments]    ${localisation du filtre}    
    Sleep    1
    Click Button    ${localisation du filtre}
    ${nombre de filtre}=    Get Text    ${notification filtre rapide location}
    Test Breadcrumb    ${notification filtre rapide location}    ${nombre de filtre}
    ${le vrai nombre de lots}=    Browse lots list    ${BAUX LINES}    ${nombre de lots breadcrump location}  
    ${nombre de lots expected}=    nombre de Lots expected
    Should Be Equal As Integers    ${le vrai nombre de lots}    ${nombre de lots expected}
    

