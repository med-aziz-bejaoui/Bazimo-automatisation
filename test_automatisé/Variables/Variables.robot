*** Variables ***
${URL}    https://test-demonext.bazimo.fr/
${home location}    https://test-demonext.bazimo.fr/home
${url page Baux}    https://test-demonext.bazimo.fr/management/leases
${INPUT_MAIL}   //input[@placeholder="Email"]
${INPUT_MOT_DE_PASSE}    //input[@placeholder="Mot de passe"]
${MAIL}    admin@bazimo.fr
${MOT_DE_PASSE}    admin@bazimo.fr
${BOUTON_CONNEXION}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-neutral-45 disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[16px] bg-primary-100 text-neutral-0 hover:bg-primary-90 hover:shadow-none active:bg-primary-100 active:shadow-lg"]
${BOUTON_MOT_DE_PASSE_PERDU}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-transparent disabled:border disabled:border-neutral-50 disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[16px] border border-primary-100 text-primary-100 hover:bg-primary-50 hover:border-transparent hover:shadow-none hover:text-neutral-0 active:bg-primary-90 active:border active:border-primary-100 active:shadow-lg active:text-neutral-0"]
${GESTION}    (//div[@class="flex items-center"])[1]
${LOTS}    (//a[@class="p-2 hover:text-primary-100"])[2]
${Baux}    (//a[@class="p-2 hover:text-primary-100"])[1]
${session de quittancement}    (//a[@class="p-2 hover:text-primary-100"])[3]
${nombre de lots breadcrump location}    //span[@class="italic text-neutral-50"]
${gestion breadcrump location}    //div[@class="items-center text-neutral-50 flex"]
${Lots breadcrump location}    //a[@class="router-link-active router-link-exact-active"]
${gestion breadcrump valeur}    Gestion
${Lots breadcrump valeur}    Lots
${LOTS LINES}    //div[@class="group flex shrink undefined border-b border-primary-10 hover:bg-primary-10 cursor-default undefined hover:z-50 px-4"]
${BAUX LINES}    //div[@class="group flex shrink undefined border-b border-primary-10 hover:bg-primary-10 cursor-pointer undefined hover:z-50 px-2 md:px-0"]
${block ligne lots}    //div[@class="simplebar-content-wrapper"]

${LOTS LINES Warnig}    //span[@class="h-3 w-3 rounded-full bg-warning-100"]

${filtre rapide date de fin location}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-transparent disabled:border disabled:border-neutral-45 disabled:shadow-none disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[10px] text-sm border border-error-100 text-neutral-100 hover:shadow-sm"]
${filtre rapide date de fin valeur}    Date de fin
${filtre rapide Prochain break location}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-transparent disabled:border disabled:border-neutral-45 disabled:shadow-none disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[10px] text-sm border border-warning-100 text-neutral-100 hover:shadow-sm"]
${filtre rapide Prochain break valeur}    Prochain break
${filtre rapide Résilité location}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-transparent disabled:border disabled:border-neutral-45 disabled:shadow-none disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[10px] text-sm border border-blue-100 text-neutral-100 hover:shadow-sm"]
${filtre rapide Résilité valeur}    Résilié

${notification filtre rapide location}    //span[@class="text-xs md:text-sm"]


${recherche input localisation}    //input[@class="w-full bg-neutral-0 bg-opacity-0 text-lg focus:outline-none md:text-base placeholder:text-neutral-0"]
${recherche boutton localisation}    //div[@class="md:ml-2 flex md:flex-none items-center md:justify-end justify-center flex-1"]
${fermer bouton recherche}    //button[@class="w-5 md:w-3 stroke-2"]

${nom de l'actif}    //div[@class="flex flex-2 min-w-0 bg-neutral-0 group-hover:bg-primary-10"]
${N°bail}    //div[@class="flex flex-1 min-w-0 bg-neutral-0 group-hover:bg-primary-10"][1]

${Locataire}    //div[@class="flex min-w-0 flex-1 items-center gap-2 px-2 text-sm md:px-5 justify-start"]

${bouton filtre sans notification}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-transparent disabled:border disabled:border-neutral-50 disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[16px] border border-primary-100 text-primary-100 hover:bg-primary-50 hover:border-transparent hover:shadow-none hover:text-neutral-0 active:bg-primary-90 active:border active:border-primary-100 active:shadow-lg active:text-neutral-0"]
${bouton filtre avec notification}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-transparent disabled:border disabled:border-neutral-50 disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[16px] hover:bg-primary-50 hover:border-transparent hover:shadow-none hover:text-neutral-0 bg-primary-50 border border-transparent shadow-inner text-neutral-0 active:bg-primary-90 active:border active:border-primary-100 active:shadow-lg active:text-neutral-0"]
${element filtre}    //input[@placeholder="Rechercher ou sélectionner"]

${bouton appliquer}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-neutral-45 disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[16px] bg-primary-100 text-neutral-0 hover:bg-primary-90 hover:shadow-none active:bg-primary-100 active:shadow-lg"]
${bouton selectionné}    //span[@class="block flex-1 truncate"]
${expiration choix}    //button[@class="prevent-blur transform p-3 text-left text-sm duration-200 hover:bg-primary-25"]
${état choix}    //button[@class="prevent-blur transform p-3 text-left text-sm duration-200 hover:bg-primary-25"]

${bouton résilié cliqué}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-transparent disabled:border disabled:border-neutral-45 disabled:shadow-none disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[10px] text-sm hover:shadow-sm bg-blue-100 border-none text-neutral-0"]
${bouton Prochain break cliqué}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-transparent disabled:border disabled:border-neutral-45 disabled:shadow-none disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[10px] text-sm hover:shadow-sm bg-warning-100 border-none text-neutral-0"]
${bouton Date fin cliqué}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-transparent disabled:border disabled:border-neutral-45 disabled:shadow-none disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[10px] text-sm hover:shadow-sm bg-error-100 border-none text-neutral-0"]

${element bleu}    //span[@class="h-3 w-3 rounded-full bg-blue-100"]
${element orangé}    //span[@class="h-3 w-3 rounded-full bg-warning-100"]
${element transparant}    //span[@class="h-3 w-3 rounded-full bg-transparent"]
${element rouge}    //span[@class="h-3 w-3 rounded-full bg-error-100"]


${état terminé}    //span[@title="Terminé"]
${état en cours}    //span[@title="En cours"]
${état non terminé}    //span[@title="Non terminé"]
${état préparation}    //span[@title="En préparation"]





#asemi les variable mahomch behin 
#xpath
#saat manhothech l xpath khir 