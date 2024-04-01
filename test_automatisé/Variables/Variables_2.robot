*** Variables ***
${BUILDING}    //div[@class="group flex cursor-pointer items-center justify-between border-b border-neutral-40 p-3 text-sm hover:bg-primary-25"]
${MENU_PAGE_BUILDING}    //div[@class="mr-[5px] flex flex-1 flex-col items-center py-4"]
${TECHNIQUE}    //div[@class="mr-2 h-3 w-3"]

${BUTTON_MODIFY}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-neutral-45 disabled:cursor-not-allowed disabled:text-neutral-50 rounded-md bg-primary-100 text-neutral-0 hover:bg-primary-90 hover:shadow-none active:bg-primary-100 active:shadow-lg"]
${INPUT_SURFACE}    //input[@class="peer w-full h-[20px] grow border-b bg-neutral-0 bg-opacity-0 pl-1 italic text-neutral-100 focus:outline-none disabled:cursor-not-allowed disabled:border-neutral-45 disabled:placeholder:text-neutral-45 border-neutral-50"]
${ELEMENT_BLOC_SURFACE}    //label[@class="flex flex-1 text-neutral-50 min-w-[150px] max-w-[150px]"]

${ELEMENG_CHARGE_BLOC_SURFACE}    //div[@class="absolute top-0 bottom-0 right-0 left-0 z-[100] flex items-center justify-center bg-neutral-40/50"]
${URL_PAGE_FICHE_TECHNIQUE}    https://test-demonext.bazimo.fr/building/11599157-43b5-40de-86f6-82f4dffd844c/technical/technicalDashboard 
${DATA}    //div[@class="flex font-semibold text-neutral-100 overflow-hidden"]

${NOMBRE_MAXIMAL_MESSAGE}    //div[@class="flex cursor-default flex-col text-neutral-100"]
${RETURN_HOME}    //a[@title="Retour Patrimoine"]

${PICTO_+}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-neutral-45 disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full bg-primary-100 text-neutral-0 hover:bg-primary-90 hover:shadow-none active:bg-primary-100 active:shadow-lg"]
${COMMENT_FILED}    //div[@class="group relative flex mb-[1px]"]
${DESCRIPTIVE_INPUT}    //input[@class="peer w-full h-[20px] grow border-b bg-neutral-0 bg-opacity-0 pl-1 italic text-neutral-100 focus:outline-none disabled:cursor-not-allowed disabled:border-neutral-45 disabled:placeholder:text-neutral-45 border-neutral-50"]
${TITLE_INPUT}    //input[@class="relative h-full w-full italic truncate bg-opacity-0 placeholder:italic focus:outline-none bg-neutral-0 text-neutral-100"]
${TITLE_ELEMENTS}    //span[@class="block w-full truncate"]

${VIGNETTE_BROWSE}    //button[@class="h-4 w-4 rounded-full transition-colors duration-500 disabled:cursor-not-allowed md:h-3 md:w-3 bg-neutral-40"]
${VIGNETTE_ADD}    //button[@class="flex h-14 w-14 items-center justify-center rounded-full bg-neutral-45 p-0 transition-colors duration-500"]
${CANCEL_BUTTON}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-neutral-45 disabled:cursor-not-allowed disabled:text-neutral-50 rounded-md bg-neutral-50 text-neutral-0 hover:bg-neutral-45 hover:shadow-none active:bg-neutral-50 active:shadow-lg"]
${VALIDATE_BUTTON}    (//button[@class="h-full w-full flex items-center justify-center disabled:bg-neutral-45 disabled:cursor-not-allowed disabled:text-neutral-50 rounded-md bg-primary-100 text-neutral-0 hover:bg-primary-90 hover:shadow-none active:bg-primary-100 active:shadow-lg"])[4]

${NOTIFICATION_MESSAGE}    //div[@class="Vue-Toastification__toast-body"]

${INFORMATION_BUTTON}    //div[@class="inline-block theme"]
${TOOLTIP_INFORMATION_BUTTON1}    //div[@style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(67px, 58px);"]
${TOOLTIP_INFORMATION_BUTTON2}    //div[@style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(438px, 58px);"]

${DELETE_VIGNETTE_NO}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-transparent disabled:border disabled:border-neutral-50 disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[16px] border border-primary-100 text-primary-100 hover:bg-primary-50 hover:border-transparent hover:shadow-none hover:text-neutral-0 active:bg-primary-90 active:border active:border-primary-100 active:shadow-lg active:text-neutral-0"]
${DELETE_VIGNETTE_YES}    //button[@class="h-full w-full flex items-center justify-center disabled:bg-neutral-45 disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[16px] bg-primary-100 text-neutral-0 hover:bg-primary-90 hover:shadow-none active:bg-primary-100 active:shadow-lg"]
${DELETE_VIGNETTE_MESSAGE}    //div[@class="mb-3 flex flex-col text-center"]