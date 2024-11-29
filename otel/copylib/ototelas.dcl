        declaratives.
         file-error section.
             use after standard error procedure on
             genel genelfis depkod kodlar02 romhrk exthrk
             onkasa isyeri kur telkod santral teldata
             odalar grup takip santral-lock-file tel-log santlog
             telkont mdb route pacikla 
             konuk wakeup yromhrk rez cgenelfis.
         file-error-status.
             if fs-santral-lock-file = "93" or "99"
                display message box 
                        "Santral programi iki yerden ayni anda"
                        "calistirilamaz"
                        icon mb_error_icon
                        title "Hata"
                        goback.
             if fs-tel-err = 35 open output tel-err.
             if fs-tel-log = 35 open output tel-log.
             if fs-santral = 35 open output santral.
             perform fileerr-proc.
         file-exit.
         end declaratives.

