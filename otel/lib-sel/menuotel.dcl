         declaratives.
         file-error section.
             use after standard error procedure on
                 menutext prosif isyeri kllnc ajanda takvim
                 genel.
      *           lock-file.
         file-error-status.
***********kllnc ilk aciliyorsa 
             if fs-kllnc = 35
                open output kllnc close kllnc open i-o kllnc
                initialize kllnc-rec
                move "ASYA"               to k-kodu
                move "ANT-BIM BILGISAYAR" to k-adi
                move "Bilgi Islem"        to k-soyadi
                move "Supervisor"         to k-unvan
                move "E"                  to k-super
                move "ASYA"               to k-sifre
                set k-sirket-evet         to true
                set k-ozl-isl-evet        to true
                move "E"                  to k-mahsup-yetki
                                             k-tahsil-yetki
                                             k-tediye-yetki
                                             k-kullanimda
                write kllnc-rec invalid 
                      rewrite kllnc-rec end-rewrite
                end-write
                call "/asya/ytl/obj/muha/takvimac.asy" 
                     on exception perform callerr-proc
                not on exception 
                     perform callerr-proc
                end-call
             else
                perform fileerr-proc
             end-if.
         file-exit.
         end declaratives.