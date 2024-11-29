        declaratives.
         file-error section.
             use after standard error procedure on
             dokumer genel genelfis uyruk uyrukweb uyrukkbs.
         file-error-status.
             if fs-uyruk="35" then 
               open output UYRUK
               else
                    perform fileerr-proc
               end-if.
         file-exit.
         end declaratives.

