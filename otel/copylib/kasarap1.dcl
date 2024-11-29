        declaratives.
         file-error section.
             use after standard error procedure on
             genel genelfis kllnc depkod onavans onkasa
             dov-boz dokumer takas duzen takas3 doviz
             konum konuk onkasar odalar cgenel pkodlar.
         file-error-status.
             if fs-genel not = 0 
               continue
               else
             perform fileerr-proc
             end-if.
         file-exit.
         end declaratives.

