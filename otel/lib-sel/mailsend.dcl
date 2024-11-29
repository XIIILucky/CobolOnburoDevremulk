
         declaratives.
         file-error section.
             use after standard error procedure on
                 genelfis genel odalar kllnc errorlog log-index
                 otlortak.
         file-error-status.
             perform fileerr-proc.
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
             end-if
         end declaratives.
