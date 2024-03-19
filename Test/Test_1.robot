*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/Variables.robot
Resource    ../Keywords/Keywords.robot
*** Test Cases ***
login test
    Login    

Test Gestion
    Login
    Gestion

Lots page
    Login
    Gestion
    Lots
    Test Breadcrumb    ${Lots breadcrump location}    ${Lots breadcrump valeur}
    Test Breadcrumb    ${gestion breadcrump location}    ${gestion breadcrump valeur}
    

Baux page
    Login
    Gestion
    Baux
session de quittancement page
    Login
    Gestion
    Session de quittancement




tester le nombre de Lots
    Login
    Wait Until Location Is    ${home location}
    Lots
    ${le vrai nombre de lots}=    Browse lots list    ${LOTS LINES}    ${nombre de lots breadcrump location} 
    ${nombre de lots expected}=    nombre de Lots expected
    Should Be Equal As Integers    ${le vrai nombre de lots}    ${nombre de lots expected}
    
tester la fonctionalité des filtre rapide du page baux
    Login
    Wait Until Location Is    ${home location}
    Gestion
    Baux
    Test Breadcrumb    ${filtre rapide date de fin location}    ${filtre rapide date de fin valeur}   
    Test Breadcrumb    ${filtre rapide Prochain break location}    ${filtre rapide Prochain break valeur}
    Test Breadcrumb    ${filtre rapide Résilité location}    ${filtre rapide Résilité valeur}
    
    Wait Until Location Is    ${url page Baux}

    tester filtre rapide    ${filtre rapide date de fin location}    
    tester filtre rapide    ${filtre rapide Prochain break location}    
    tester filtre rapide    ${filtre rapide Résilité location}    
tester recherche page Baux par actif
    Login
    Wait Until Location Is    ${home location}
    Gestion
    Baux
    Wait Until Location Is    ${url page Baux}
    ${nombre de lots expected}=    nombre de Lots expected
    
    FOR    ${i}    IN RANGE    1    ${nombre de lots expected}    
        on check element visibility    ${recherche boutton localisation}
        Click Element    ${recherche boutton localisation}
        on check element visibility    ${recherche input localisation}
    
        Sleep    1.5
        IF    ${i}>50
            ${le vrai nombre de lots}=    Browse lots list    ${BAUX LINES}    ${nombre de lots breadcrump location}
        END
        Sleep    0.5
        ${actif}    Get Text    ${nom de l'actif}[${i}]
        ${actif}    Split String    ${actif}    -
        Input Text    ${recherche input localisation}    ${actif}[1][1:]
        Sleep    1
        ${le vrai nombre de lots}=    Browse lots list    ${BAUX LINES}    ${nombre de lots breadcrump location}  
        ${nombre de lots expected}=    nombre de Lots expected
        Should Be Equal As Integers    ${le vrai nombre de lots}    ${nombre de lots expected}
        Click Button    ${fermer bouton recherche}
        Sleep    1
    END

tester recherche page Baux par N°bail
    Login
    Wait Until Location Is    ${home location}
    Gestion
    Baux
    Wait Until Location Is    ${url page Baux}
    ${nombre de lots expected}=    nombre de Lots expected
    
    FOR    ${i}    IN RANGE    1    ${nombre de lots expected}+1 
        on check element visibility    ${recherche boutton localisation}
        Click Element    ${recherche boutton localisation}
        on check element visibility    ${recherche input localisation}
    
        Sleep    1.5
        IF    ${i}>50
            ${le vrai nombre de lots}=    Browse lots list    ${BAUX LINES}    ${nombre de lots breadcrump location}
        END
        
        Sleep    1
        ${actif}    Get Text    (${N°bail})[${i}]
        Log To Console    ${actif}
        Input Text    ${recherche input localisation}    ${actif}
        Sleep    1
        ${le vrai nombre de lots}=    Browse lots list    ${BAUX LINES}    ${nombre de lots breadcrump location}  
        ${nombre de lots expected1}=    nombre de Lots expected
        Should Be Equal As Integers    ${le vrai nombre de lots}    ${nombre de lots expected1}
        Click Button    ${fermer bouton recherche}
        Sleep    1.5
    END

    

tester recherche page Baux par Locataire
    Login
    Wait Until Location Is    ${home location}
    Gestion
    Baux
    Wait Until Location Is    ${url page Baux}
    ${nombre de lots expected}=    nombre de Lots expected
    
    FOR    ${i}    IN RANGE    1    ${nombre de lots expected}+1 
        on check element visibility    ${recherche boutton localisation}
        Click Element    ${recherche boutton localisation}
        on check element visibility    ${recherche input localisation}
    
        Sleep    1.5
        IF    ${i}>50
            ${le vrai nombre de lots}=    Browse lots list    ${BAUX LINES}    ${nombre de lots breadcrump location}
        END
        Sleep    0.5
        ${actif}    Get Text    (${Locataire})[${i}]
        Log To Console    ${actif}
        Input Text    ${recherche input localisation}    ${actif}
        Sleep    1
        ${le vrai nombre de lots}=    Browse lots list    ${BAUX LINES}    ${nombre de lots breadcrump location}  
        ${nombre de lots expected1}=    nombre de Lots expected
        Should Be Equal As Integers    ${le vrai nombre de lots}    ${nombre de lots expected1}
        Click Button    ${fermer bouton recherche}
        Sleep    1.5

    END

tester filtre expiration page Baux    
    Login
    Wait Until Location Is    ${home location}    1200
    Gestion
    Baux
    Wait Until Location Is    ${url page Baux}
    FOR    ${i}    IN RANGE    1    5    
        on check element visibility    ${bouton filtre sans notification}
        Click Element    ${bouton filtre sans notification}
        on check element visibility    (${element filtre})[1]
        Click Element    (${element filtre})[1]
        on check element visibility    (${expiration choix})[${i}]
        click button    (${expiration choix})[${i}]
        on check element visibility    ${bouton appliquer}
        Click Button    ${bouton appliquer}
        on check element visibility    ${bouton filtre avec notification}
        Sleep    0.5
        IF    ${i}==1
            on check element visibility    ${bouton résilié cliqué}
            Sleep    0.5
            ${count}=    nombre de Lots expected
           
            ${count1}=    Get Element Count    ${element bleu}
            Log To Console    ${count}
            Log To Console    ${count1}
            
            Should Be Equal As Integers    ${count}    ${count1}
       

        ELSE IF    ${i}==2
            Wait Until Element Is Not Visible    ${bouton résilié cliqué}
            Sleep    0.5
            ${count}=    nombre de Lots expected
            ${count1}=    Browse lots list    ${BAUX LINES}    ${nombre de lots breadcrump location}
            Sleep    0.5
            ${count1}=    Get Element Count    ${element transparant}

            Log To Console    ${count}
            Log To Console    ${count1}
            
            Should Be Equal As Integers    ${count}    ${count1}
        

        ELSE IF    ${i}==3

            on check element visibility    ${bouton Prochain break cliqué}
            ${count}=    nombre de Lots expected
           
            ${count1}=    Get Element Count    ${element orangé}
            Log To Console    ${count}
            Log To Console    ${count1}
            Sleep    0.5
            Should Be Equal As Integers    ${count}    ${count1}
        ELSE
            on check element visibility    ${bouton Date fin cliqué}
            ${count}=    nombre de Lots expected
           
            ${count1}=    Get Element Count    ${element rouge}
            Log To Console    ${count}
            Log To Console    ${count1}
            Sleep    0.5
            Should Be Equal As Integers    ${count}    ${count1}

        END

       
        


        Click Element    ${bouton filtre avec notification}
        on check element visibility    ${bouton selectionné}
        Click Element    ${bouton selectionné}
        on check element visibility    ${bouton appliquer}
        Click Button    ${bouton appliquer}
    END


tester filtre état page Baux    
    Login
    Wait Until Location Is    ${home location}    1200
    Gestion
    Baux
    Wait Until Location Is    ${url page Baux}    1200
    FOR    ${i}    IN RANGE    1    5    
        on check element visibility    ${bouton filtre sans notification}
        Click Element    ${bouton filtre sans notification}
        on check element visibility    (${element filtre})[2]
        Click Element    (${element filtre})[2]
        on check element visibility    (${état choix})[${i}]
        click button    (${état choix})[${i}]
        on check element visibility    ${bouton appliquer}
        Click Button    ${bouton appliquer}
        on check element visibility    ${bouton filtre avec notification}
        Sleep    0.5
        IF    ${i}==1
            Sleep    0.5
            ${count}=    nombre de Lots expected
            
            ${count1}=    Get Element Count    ${état terminé}
            Log To Console    ${count}
            Log To Console    ${count1}
            
            Should Be Equal As Integers    ${count}    ${count1}
       

        ELSE IF    ${i}==2
            Sleep    0.5
            ${count}=    nombre de Lots expected
            ${count1}=    Browse lots list    ${BAUX LINES}    ${nombre de lots breadcrump location}
            Sleep    0.5
            ${count1}=    Get Element Count    ${état en cours}

            Log To Console    ${count}
            Log To Console    ${count1}
            
            Should Be Equal As Integers    ${count}    ${count1}
        

        ELSE IF    ${i}==3

            ${count}=    nombre de Lots expected
           
            ${count1}=    Get Element Count    ${état non terminé}
            Log To Console    ${count}
            Log To Console    ${count1}
            Sleep    0.5
            Should Be Equal As Integers    ${count}    ${count1}
        ELSE
            ${count}=    nombre de Lots expected
           
            ${count1}=    Get Element Count    ${état préparation}
            Log To Console    ${count}
            Log To Console    ${count1}
            Sleep    0.5
            Should Be Equal As Integers    ${count}    ${count1}

        END

       
        


        Click Element    ${bouton filtre avec notification}
        on check element visibility    ${bouton selectionné}
        Click Element    ${bouton selectionné}
        on check element visibility    ${bouton appliquer}
        Click Button    ${bouton appliquer}
    END

    