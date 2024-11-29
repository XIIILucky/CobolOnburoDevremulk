      *
          declaratives.
          file-error section.
              use after standard error procedure on
                 genel genelfis .
          file-error-status.
              perform fileerr-proc.
          file-exit.
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
      *     display message box "Asya Mail Clint Kurulu Degil..."new-line
      *                         "Bilgi islem Departmanina Bilgi veriniz."                                         
      *                     title "[ Uyari ]"
      *                     icon 1
               continue
                move "E"        to activex-yok 
          end declaratives.
