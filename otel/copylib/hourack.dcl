        declaratives.
         file-error section.
             use after standard error procedure on
             genel genelfis odalar konum kodlar02
             konuk acenta doviz cast rez 
             takas teknik banka takvim kllnc ozluk kart
             grup takip telayar telayarq yanrez takas2 ozluk2
             romhrk exthrk folref onbkodlar10 outof
             rezodablok takasrezodablok.
         file-error-status.
             perform fileerr-proc.
         file-error-1 section.
             use for reporting on takas.
         file-error-1-status.
             CALL "C$KEYPROGRESS" USING KEYPROGRESS-DATA
             MODIFY PROGRESS-BAR-1, FILL-PERCENT = 
                    ((((KEYPROG-CUR-KEY - 1) * KEYPROG-NUM-RECS
                    + KEYPROG-CUR-REC) / (KEYPROG-NUM-RECS
                    * KEYPROG-NUM-KEYS)) * 100).
         file-exit.
         end declaratives.

