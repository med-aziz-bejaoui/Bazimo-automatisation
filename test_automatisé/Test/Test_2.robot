*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../Variables/Variables.robot
Resource    ../Variables/Variables_2.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Keywords/Keywords_2.robot
*** Test Cases ***
Bloc Surface
    Login
    FOR    ${j}    IN RANGE    1    27    
        on check element visibility    ${BUILDING}
        Click Element    (${BUILDING})[${j}]
    
        on check element visibility    ${MENU_PAGE_BUILDING}
        Click Element    (${MENU_PAGE_BUILDING})[3]
        
        Sleep    1.5
        
        check_elements_visibility_bloc_surface

        on check element visibility    ${BUTTON_MODIFY}
        Click Button    (${BUTTON_MODIFY})[1]
        on check element visibility    ${INPUT_SURFACE}
        Input Text    (${INPUT_SURFACE})[1]    1000
        Input Text    (${INPUT_SURFACE})[2]    100
        
        on check element not visibility    ${NOMBRE_MAXIMAL_MESSAGE}
        ${MESSAGE}=    Get Text    ${NOMBRE_MAXIMAL_MESSAGE}
        Should Be Equal    ${MESSAGE}    Le nombre maximum est 99999999.99
        Input Text    (${INPUT_SURFACE})[3]    2000
        Click Button    (${BUTTON_MODIFY})[1]
        ${element_visible} =    Run Keyword And Return Status    Element Should Be Visible    ${ELEMENG_CHARGE_BLOC_SURFACE}

        Run Keyword If    ${element_visible} == 'True'
        ...    Wait Until Element Is Not Visible    ${ELEMENG_CHARGE_BLOC_SURFACE}
        
        ...  ELSE
        ...    Sleep    1.5
            
        FOR    ${i}    IN RANGE    1    10    
            ${a}=    Get Text    (${DATA})[${i}]
            Should Be Equal    ${a}[-2:]    m²
        END

        FOR    ${i}    IN RANGE    4    10    
            ${a}=    Get Text    (${DATA})[${i}]
            Log To Console    ${a}
            Should Be Equal    ${a}[0]    -
        END
        
        on check element visibility    ${RETURN_HOME}
        Click Element    ${RETURN_HOME}
        
    END
    

TESTE NOMBRE MAX BLOC SURFACE
    Login
    on check element visibility    ${BUILDING}
    Click Element    (${BUILDING})[1]
    on check element visibility    ${MENU_PAGE_BUILDING}
    Click Element    (${MENU_PAGE_BUILDING})[3]
    check_elements_visibility_bloc_surface
    on check element visibility    ${BUTTON_MODIFY}
    Click Button    (${BUTTON_MODIFY})[1]
    on check element visibility    ${INPUT_SURFACE}
    Input Text    (${INPUT_SURFACE})[1]    1000
    Input Text    (${INPUT_SURFACE})[2]    100000000000
    Click Button    (${BUTTON_MODIFY})[1]
    on check element not visibility    ${NOMBRE_MAXIMAL_MESSAGE}
    ${MESSAGE}=    Execute Javascript    return document.querySelector('.flex.cursor-default.flex-col.text-neutral-100').innerText
    Should Be Equal    ${MESSAGE}    Le nombre maximum est 99999999.99
    Input Text    (${INPUT_SURFACE})[3]    2000
Bloc ENERGY 
    Login
    on check element visibility    ${BUILDING}
    Click Element    (${BUILDING})[1]
    on check element visibility    ${MENU_PAGE_BUILDING}
    Click Element    (${MENU_PAGE_BUILDING})[3]
   
    on check element visibility    ${BUTTON_MODIFY}
    click Button    (${BUTTON_MODIFY})[5]
    on check element visibility    //div[@class="flex items-center"]
    #FOR    ${i}    IN RANGE    1    11    
    #    Click Element    (//div[@class="flex items-center"])[${i}]
        
    #END
    FOR    ${i}    IN RANGE    1    4    
        on check element visibility    (//div[@class="flex flex-col gap-y-2"])[${i}]
        
    END
    ${a}=    Get Text    (//div[@class="flex flex-col gap-y-2"])[1]
    ${a}=    Split String    ${a}    \n
    ${a}=    Convert To String    ${a}
    Should Be Equal    ${a}    ['Gaz', 'Réseau urbain', 'Électricité', 'Fuel', 'Autre']

    ${a}=    Get Text    (//div[@class="flex flex-col gap-y-2"])[2]
    ${a}=    Split String    ${a}
    ${a}=    Convert To String    ${a}
    Should Be Equal    ${a}    ['Électricité', 'Réseau', 'urbain', 'Autre']

    ${a}=    Get Text    (//div[@class="flex flex-col gap-y-2"])[3]
    ${a}=    Split String    ${a}
    ${a}=    Convert To String    ${a}
    Should Be Equal    ${a}    ['HT', 'BT']



ADD_VIGNETTE_+
    Login
    on check element visibility    ${BUILDING}
    Click Element    (${BUILDING})[1]
    on check element visibility    ${MENU_PAGE_BUILDING}
    Click Element    (${MENU_PAGE_BUILDING})[3]
    Sleep    0.5
    on check element visibility   ${PICTO_+}
    click button    (${PICTO_+})[1]

    on check element visibility    ${DESCRIPTIVE_INPUT}
    FOR    ${i}    IN RANGE    1    4   
        on check element visibility    (${DESCRIPTIVE_INPUT})[${i}]
    END
    on check element visibility    ${COMMENT_FILED}
ADD_VIGNETTE_TITLE
    Login
    on check element visibility    ${BUILDING}
    Click Element    (${BUILDING})[1]
    on check element visibility    ${MENU_PAGE_BUILDING}
    Click Element    (${MENU_PAGE_BUILDING})[3]
    Sleep    1.5
    on check element visibility   ${PICTO_+}
    click button    (${PICTO_+})[1]

    on check element visibility    ${TITLE_INPUT}
    Click Element    ${TITLE_INPUT}
    on check element visibility    ${TITLE_ELEMENTS}
    ${COUNT}=    Get Element Count    ${TITLE_ELEMENTS}

    Should Be Equal As Integers   ${COUNT}    2
    ${a}=    Get Text    (${TITLE_ELEMENTS})[1]
    ${b}=    Get Text    (${TITLE_ELEMENTS})[2]
    Should Be Equal As Strings   ${a}    Bâtiment
    Should Be Equal As Strings   ${b}    Lot diffus
    Click Element    (${TITLE_ELEMENTS})[1]
    Sleep    0.5
    ${Title}=    Get Element Attribute    ${TITLE_INPUT}    title
    Should Be Equal    ${Title}    Bâtiment
    on check element visibility    ${TITLE_INPUT}
    Click Element    ${TITLE_INPUT}
    on check element visibility    ${TITLE_ELEMENTS}
    Click Element    (${TITLE_ELEMENTS})[2]
    #Sleep    0.5
    ${Title}=    Get Element Attribute    ${TITLE_INPUT}    title
    Should Be Equal    ${Title}    Lot diffus


    

ADD_VIGNETTE_VIGNETTE
    Login
    on check element visibility    ${BUILDING}
    Click Element    (${BUILDING})[1]
    on check element visibility    ${MENU_PAGE_BUILDING}
    Click Element    (${MENU_PAGE_BUILDING})[3]
    Sleep    0.5
    on check element visibility   ${VIGNETTE_BROWSE}
    click button    ${VIGNETTE_BROWSE}

    on check element visibility    ${VIGNETTE_ADD}
    Click Button    (${VIGNETTE_ADD})[1]


    on check element visibility    ${TITLE_INPUT}
    Click Element    ${TITLE_INPUT}
    on check element visibility    ${TITLE_ELEMENTS}
    ${COUNT}=    Get Element Count    ${TITLE_ELEMENTS}

    Should Be Equal As Integers   ${COUNT}    2
    ${a}=    Get Text    (${TITLE_ELEMENTS})[1]
    ${b}=    Get Text    (${TITLE_ELEMENTS})[2]
    Should Be Equal As Strings   ${a}    Bâtiment
    Should Be Equal As Strings   ${b}    Lot diffus
    Click Element    (${TITLE_ELEMENTS})[1]
    Sleep    0.5
    ${Title}=    Get Element Attribute    ${TITLE_INPUT}    title
    Should Be Equal    ${Title}    Bâtiment
    on check element visibility    ${TITLE_INPUT}
    Click Element    ${TITLE_INPUT}
    on check element visibility    ${TITLE_ELEMENTS}
    Click Element    (${TITLE_ELEMENTS})[2]
    #Sleep    0.5
    ${Title}=    Get Element Attribute    ${TITLE_INPUT}    title
    Should Be Equal    ${Title}    Lot diffus
    on check element visibility    ${DESCRIPTIVE_INPUT}
    FOR    ${i}    IN RANGE    1    4   
        on check element visibility    (${DESCRIPTIVE_INPUT})[${i}]
    END
    on check element visibility    ${COMMENT_FILED}
    on check element visibility    ${CANCEL_BUTTON}
    on check element visibility    ${VALIDATE_BUTTON}
    Click Button    ${CANCEL_BUTTON}

CANCEL_EDIT_VIGNETTE
    Login
    on check element visibility    ${BUILDING}
    Click Element    (${BUILDING})[1]
    on check element visibility    ${MENU_PAGE_BUILDING}
    Click Element    (${MENU_PAGE_BUILDING})[3]
    Sleep    0.5
    on check element visibility   (${BUTTON_MODIFY})[2]
    click button    (${BUTTON_MODIFY})[2]

    on check element visibility    ${TITLE_INPUT}
    ${Title1}=    Get Element Attribute    ${TITLE_INPUT}    title
    Click Element    ${TITLE_INPUT}

    on check element visibility    ${TITLE_ELEMENTS}
    Click Element    (${TITLE_ELEMENTS})[2]
    #Sleep    0.5
    


    on check element visibility    ${CANCEL_BUTTON}
    Click Button    ${CANCEL_BUTTON}

    on check element not visibility    ${TITLE_INPUT}
    Click Button    (${BUTTON_MODIFY})[2]

    on check element visibility    ${TITLE_INPUT}
    ${Title2}=    Get Element Attribute    ${TITLE_INPUT}    title

    Should Be Equal    ${Title1}    ${Title2}
    Click Button    ${CANCEL_BUTTON}

CONFIRM_EDIT_VIGNETTE
    Login
    on check element visibility    ${BUILDING}
    Click Element    (${BUILDING})[1]
    on check element visibility    ${MENU_PAGE_BUILDING}
    Click Element    (${MENU_PAGE_BUILDING})[3]
    Sleep    0.5
    on check element visibility   (${BUTTON_MODIFY})[2]
    click button    (${BUTTON_MODIFY})[2]

    on check element visibility    ${TITLE_INPUT}
    
    Input Text    (${DESCRIPTIVE_INPUT})[1]    Aziz2
    
    #Sleep    0.5


    on check element visibility    (${BUTTON_MODIFY})[2]
    Click Button    (${BUTTON_MODIFY})[2]

    on check element visibility    ${NOTIFICATION_MESSAGE}
    ${SUCCESS_MESSAGE}=    Get Text    ${NOTIFICATION_MESSAGE}
    Should Be Equal As Strings    ${SUCCESS_MESSAGE}    Le bâtiment / lot diffus a bien été mis à jour.


    on check element not visibility    ${TITLE_INPUT}
    Click Button    (${BUTTON_MODIFY})[2]

    on check element visibility    ${DESCRIPTIVE_INPUT}
    ${Libellé}=    Get Element Attribute    (${DESCRIPTIVE_INPUT})[1]    value

    Should Be Equal    ${Libellé}    Aziz2
    Click Button    ${CANCEL_BUTTON}

INFORMATION_VIGNETTE_CLASSIFICATION
    Login
    on check element visibility    ${BUILDING}
    Click Element    (${BUILDING})[1]
    on check element visibility    ${MENU_PAGE_BUILDING}
    Click Element    (${MENU_PAGE_BUILDING})[3]
    Sleep    0.5

    on check element visibility    ${INFORMATION_BUTTON}
    Click Element    (${INFORMATION_BUTTON})[1]

    on check element visibility    ${TOOLTIP_INFORMATION_BUTTON1}
    ${a}=    Get Text   ${TOOLTIP_INFORMATION_BUTTON1}
    
    Should Be Equal As Strings    ${a}   Bâtiment lié à un lot ou à une classification règlementaire incendie, il n'est pas supprimable. 

INFORMATION_VIGNETTE_PRINCIPALE
    Login
    on check element visibility    ${BUILDING}
    Click Element    (${BUILDING})[1]
    on check element visibility    ${MENU_PAGE_BUILDING}
    Click Element    (${MENU_PAGE_BUILDING})[3]
    Sleep    0.5

    on check element visibility    ${INFORMATION_BUTTON}
    Click Element    (${INFORMATION_BUTTON})[2]

    on check element visibility    ${TOOLTIP_INFORMATION_BUTTON2}
    ${a}=    Get Text   ${TOOLTIP_INFORMATION_BUTTON2}
    
    Should Be Equal As Strings    ${a}   Bâtiment principal de l'actif, il n'est pas supprimable. 

SUPPRESSION_VIGNETTE
    Login
    on check element visibility    ${BUILDING}
    Click Element    (${BUILDING})[1]
    on check element visibility    ${MENU_PAGE_BUILDING}
    Click Element    (${MENU_PAGE_BUILDING})[3]
    on check element visibility    ${VIGNETTE_BROWSE}
    Click Button    ${VIGNETTE_BROWSE}
    
    on check element visibility    ${BUTTON_MODIFY}
    Click Button    (${BUTTON_MODIFY})[6]
    on check element visibility    ${DELETE_VIGNETTE_MESSAGE}
    ${message}=    Get Text    ${DELETE_VIGNETTE_MESSAGE}
    ${no}=    Get Text    ${DELETE_VIGNETTE_NO}
    ${yes}=    Get Text    ${DELETE_VIGNETTE_YES}

    Should Be Equal As Strings    ${message}    Êtes-vous sûr(e) de vouloir supprimer ce bâtiment / lot diffus ?
    Should Be Equal As Strings    ${no}    Non
    Should Be Equal As Strings    ${yes}    Oui
    on check element visibility    ${DELETE_VIGNETTE_NO}
    Click Button    ${DELETE_VIGNETTE_NO}


    on check element visibility    ${BUTTON_MODIFY}
    Click Button    (${BUTTON_MODIFY})[5]
    
    

    on check element visibility    ${INPUT_SURFACE}

    ${a}=    Get Value    (${INPUT_SURFACE})[1]    


    Should Be Equal As Strings    ${a}    aziz


ADD_VIGNETTE_SUCCESMESSAGE
    Login
    on check element visibility    ${BUILDING}
    Click Element    (${BUILDING})[1]
    on check element visibility    ${MENU_PAGE_BUILDING}
    Click Element    (${MENU_PAGE_BUILDING})[3]

    Sleep    0.5
    on check element visibility    ${PICTO_+}

    Sleep    1
    Click Button    (${PICTO_+})[1]
    on check element visibility    ${TITLE_INPUT}
    Click Element    ${TITLE_INPUT}
    on check element visibility    ${TITLE_ELEMENTS}
    Click Element    (${TITLE_ELEMENTS})[1]

    on check element visibility    ${INPUT_SURFACE}
    Input Text    ${INPUT_SURFACE}    aziz4
    Sleep    0.5

    on check element visibility    ${BUTTON_MODIFY}
    Click Button    (${BUTTON_MODIFY})[5]
    

    on check element visibility    ${NOTIFICATION_MESSAGE}
    ${a}=    Get Text    ${NOTIFICATION_MESSAGE}
    Should Be Equal As Strings    ${a}    Le bâtiment / lot diffus a bien été créé.

SUPPRESSION_VIGNETTE_SUCCESMESSAGE
    Login
    on check element visibility    ${BUILDING}
    Click Element    (${BUILDING})[1]
    on check element visibility    ${MENU_PAGE_BUILDING}
    Click Element    (${MENU_PAGE_BUILDING})[3]
    on check element visibility    ${VIGNETTE_BROWSE}
    Click Button    ${VIGNETTE_BROWSE}
    
    on check element visibility    ${BUTTON_MODIFY}
    Click Button    (${BUTTON_MODIFY})[6]
    
    on check element visibility    ${DELETE_VIGNETTE_YES}
    Click Button    ${DELETE_VIGNETTE_YES}

    on check element visibility    ${NOTIFICATION_MESSAGE}
    ${a}=    Get Text    ${NOTIFICATION_MESSAGE}
    Should Be Equal    ${a}    le bâtiment / lot diffus a bien été supprimé.

    on check element visibility    ${BUTTON_MODIFY}
    Click Button    (${BUTTON_MODIFY})[4]
    on check element visibility    ${INPUT_SURFACE}

    ${a}=    Get Value    (${INPUT_SURFACE})[1]    


    Should Not Be Equal As Strings    ${a}    aziz4


