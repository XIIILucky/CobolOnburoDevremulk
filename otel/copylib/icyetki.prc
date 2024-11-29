*
 icyetki-kontrol.
     open input prosif.
     move k-kodu-tasi                to prosif-kim
     call "c$myfile" using prosif-cob
     move "Y"                        to prosif-tipi
     read prosif no lock invalid
          continue
     not invalid
         if prosif-giris = "H"
            display message box 
                    "Programa giris izniniz yok",
                    icon mb_error_icon
                    title "Yetki kontrol",
                    close prosif
                    exit program
         end-if
     end-read
     close prosif.
*     