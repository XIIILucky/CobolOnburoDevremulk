         declaratives.
         file-error section.
             use after standard error procedure on
                 genel genelfis dokumer kodlar02 acenta takvim
                 banka doviz ulke konum kllnc rapor
                 acenhrk cast takas fiyat fiyatana aksiyhrk.
         file-error-status.
     */ rapor dosyasi sadece rez. icin kullanildigindan
     */ burada 35 oldugunda olusturuluyor ...
             if fs-rapor = "35" open output rapor
                                close rapor 
                                open i-o rapor
                                initialize fs-rapor.
             perform fileerr-proc.
         file-exit.
         end declaratives.

