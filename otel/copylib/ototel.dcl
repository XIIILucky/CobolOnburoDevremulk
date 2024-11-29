        declaratives.
         file-error section.
             use after standard error procedure on
             genel genelfis depkod kodlar02 konuk romhrk
             exthrk onkasa isyeri kur telkod santral teldata
             odalar liste tel-err grup takip.
         file-error-status.
             if fs-tel-err = 35 open output tel-err.
             if fs-santral = 35 open output santral.
             perform fileerr-proc.
         file-exit.
         end declaratives.


