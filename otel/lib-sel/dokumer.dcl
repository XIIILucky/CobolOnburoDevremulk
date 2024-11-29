         declaratives.
         file-error section.
             use after standard error procedure on
                 dokumer sirala prosif liste prtler tcp-ip
                 genelfis genel romhrk filtre yanrez rez
                 konuk kllnc exthrk hrk2 yromhrk folref route.
         file-error-status.
             
             perform fileerr-proc.
         file-exit.
             exit.
         file-error-1 section.
             use after standard error procedure on seq.
         file-error-1-para.
         file-exit.
             exit.
         activex-error section.
             use after exception on object.
         activex-para.
             call "c$excepinfo" using 
                                error-info,
                                activex-source,
                                activex-description,
                                activex-help-file,
                                activex-help-context
             end-call
             inspect activex-description replacing 
                     trailing spaces by low-values
             if activex-help-file = spaces 
                display message box
                        activex-description
                        title activex-source
                        icon mb_error_icon
             else
                display message box 
                        activex-description,new-line,
                        "Yardim istermisiniz ? ",
                        title activex-source,
                        icon mb_error_icon
                        type is mb_yes_no
                        default mb_yes
                        giving activex-secim
                if activex-secim = 1 
                   call "$winhelp" using 
                                   activex-help-file,
                                   help-context,
                                   activex-help-context,
                   end-call
                end-if
             end-if.
         dokumer-bulk-section section.
             use reporting on filtre.
         dokumer-bulk. 
             compute simdiki-bulk-gosterge =
                    ((((KEYPROG-CUR-KEY - 1) * KEYPROG-NUM-RECS 
                      + KEYPROG-CUR-REC) / (KEYPROG-NUM-RECS 
                      * KEYPROG-NUM-KEYS)) * 100)
             if simdiki-bulk-gosterge <> frame-yuzde-pos
                perform frame-goster
                accept omitted before time 0
             end-if.
         dokumer-bulk-exit.
             exit.
         end declaratives.
