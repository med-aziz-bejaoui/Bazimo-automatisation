*** Variables ***
${url}    https://test-demonext.bazimo.fr/
${mail}   xpath://input[@placeholder="Email"]
${mot de passe}    xpath://input[@placeholder="Mot de passe"]
${bouton connexion}    xpath://button[@class="h-full w-full flex items-center justify-center disabled:bg-neutral-45 disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[16px] bg-primary-100 text-neutral-0 hover:bg-primary-90 hover:shadow-none active:bg-primary-100 active:shadow-lg"]
${bouton mot de passe perdu}    xpath://button[@class="h-full w-full flex items-center justify-center disabled:bg-transparent disabled:border disabled:border-neutral-50 disabled:cursor-not-allowed disabled:text-neutral-50 rounded-full px-[16px] border border-primary-100 text-primary-100 hover:bg-primary-50 hover:border-transparent hover:shadow-none hover:text-neutral-0 active:bg-primary-90 active:border active:border-primary-100 active:shadow-lg active:text-neutral-0"]