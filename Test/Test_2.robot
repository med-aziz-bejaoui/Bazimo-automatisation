*** Settings ***
Library    SeleniumLibrary
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
        
        Sleep    1
        
        check_elements_visibility_bloc_surface

        on check element visibility    ${BUTTON_MODIFY}
        Click Button    (${BUTTON_MODIFY})[1]
        on check element visibility    ${INPUT_SURFACE}
        Input Text    (${INPUT_SURFACE})[1]    2230012
        Input Text    (${INPUT_SURFACE})[2]    20300
        Input Text    (${INPUT_SURFACE})[3]    2000
        Click Button    (${BUTTON_MODIFY})[1]

        #Wait Until Element Is Visible   ${ELEMENG_CHARGE_BLOC_SURFACE}
        #Wait Until Element Is Not Visible    ${ELEMENG_CHARGE_BLOC_SURFACE}
       
        Sleep    1.5
        FOR    ${j}    IN RANGE    1    10    
            ${a}=    Get Text    (${DATA})[${j}]
            Should Be Equal    ${a}[-2:]    m²
        END

        FOR    ${j}    IN RANGE    4    10    
            ${a}=    Get Text    (${DATA})[${j}]
            Should Be Equal    ${a}[0]    -
        END
        
        on check element visibility    //a[@title="Retour Patrimoine"]
        Click Element    //a[@title="Retour Patrimoine"]
        
    END
    

Bloc ENERGY 
    Login
   
    on check element visibility    ${BUILDING}
    Click Element    (${BUILDING})[1]
    on check element visibility    ${MENU_PAGE_BUILDING}
    Click Element    (${MENU_PAGE_BUILDING})[3]
    Wait Until Location Is    ${URL_PAGE_FICHE_TECHNIQUE}   1200
    Sleep    1
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