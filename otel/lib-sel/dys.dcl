*
 declaratives.
*INPUT
 asya-file-input-error section.
     use after standard error procedure on input.
 asya-file-input-perform.
     perform fileerr-proc.
 asya-file-input-exit.
     exit.
*I-O
 asya-file-i-o-error section.
     use after standard error procedure on i-o.
 asya-file-i-o-perform.
     perform fileerr-proc.
 asya-file-i-o-exit.
     exit.
*OUTPUT
 asya-file-output-error section.
     use after standard error procedure on output.
 asya-file-output-perform.
     perform fileerr-proc.
 asya-file-output-exit.
     exit.
*EXTEND
 asya-file-extend-error section.
     use after standard error procedure on extend.
 asya-file-extend-perform.
     perform fileerr-proc.
 asya-file-extend-exit.
     exit.

 activex-error section.
     use after standard error on object.
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
