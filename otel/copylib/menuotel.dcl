         declaratives.
         file-error section.
             use after standard error procedure on
                 menutext prosif genel isyeri trace
                 tracehrk kodlar02 kllnc ajanda
                 santral-lock-file.
         file-error-status.
***********kllnc ilk aciliyorsa 
             if fs-santral-lock-file = "93"
                exit paragraph.
             if fs-kllnc = 35
                open output kllnc close kllnc open i-o kllnc
                initialize kllnc-rec
                move "ASYA"               to k-kodu
                move "ASYA SOFT "         to k-adi
                move "Bilgi Islem"        to k-soyadi
                move "Supervisor"         to k-unvan
                move "E"                  to k-super
                move "ASYA"               to k-sifre
                write kllnc-rec invalid 
                      rewrite kllnc-rec end-rewrite
                end-write
             else
                perform fileerr-proc
             end-if.
         file-exit.
             exit.
         activex-error section.
             use after standard error procedure on object.
         activex-para.
             call "c$excepinfo" using 
                                error-info,
                                activex-source,
                                activex-description,
                                activex-help-file,
                                activex-help-context
             end-call.
             move "H"           to skinframework-yuklumu.
         activex-exit.
             exit.
         end declaratives.
