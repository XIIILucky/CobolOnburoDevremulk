        declaratives.
         file-error section.
             use after standard error procedure on
             genel genelfis isyeri kllnc acenfat
             acenta konuk dokumer takvim musteri konu2 konu3 fatura
             romhrk exthrk yromhrk depkod2 genel2 folref text-oku cari 
             konum fatdetay
             rez cast odalar takaskdv alsat 
             kodlar02 tfatdokum fatdokum.
         file-error-status.
        
           if fs-acenfat = "39"
             perform acenfat-yeniden
           else
             perform fileerr-proc
           end-if.
         file-exit.
         end declaratives.

