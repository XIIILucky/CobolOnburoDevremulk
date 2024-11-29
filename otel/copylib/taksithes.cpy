*
 taksit-yeniden-hesapla. 
    perform odeme-yeniden-bul
    
    move kesin-kalan-odeme   to kalan-odeme2

    initialize taksit-rec tahsilat-bitti alt-toplam odenen-toplam fark-hesapla  
                kesin-odenen-toplam  kesin-kalan-toplam
    move uye-no         to taksit-devremulk-no
    start taksit key not < taksit-anah invalid 
         continue 
    not invalid 
    perform with test after until fs-taksit = "10"
    read taksit next no lock end move "10" to fs-taksit
    not at end
          
            if taksit-devremulk-no <> uye-no
                exit perform 
            end-if
 
               initialize fark-hesapla 

            if tahsilat-bitti = 1
               move taksit-tutar          to taksit-kalan 
               compute kesin-kalan-toplam = 
                       kesin-kalan-toplam + taksit-kalan

            end-if 

            if kalan-odeme > 0 and 
               taksit-tutar > 0  and 
               tahsilat-bitti = 0
                  if taksit-tutar <= kalan-odeme 
                     move taksit-tutar    to taksit-odenen 
                     move 0               to taksit-kalan   
                     compute kesin-odenen-toplam = 
                             kesin-odenen-toplam + taksit-tutar

                     compute kesin-kalan-toplam = 
                             kesin-kalan-toplam + taksit-kalan
                  else 
                     if kalan-odeme = 0
                        move taksit-tutar     to taksit-kalan 
                        move 0                to taksit-odenen
                        move 1                to tahsilat-bitti
                             compute kesin-kalan-toplam = 
                                     kesin-kalan-toplam + taksit-kalan

                     else
                        move kalan-odeme     to taksit-odenen  
                        move 1               to tahsilat-bitti
                        compute kesin-odenen-toplam = 
                                kesin-odenen-toplam + kalan-odeme
                        if kalan-odeme <> 0                             
                           compute fark-hesapla = 
                                   taksit-tutar - kalan-odeme
                           move fark-hesapla  to taksit-kalan 
                             compute kesin-kalan-toplam = 
                                     kesin-kalan-toplam + taksit-kalan
                       
                        end-if 
                        
                     end-if 
                  end-if 
                  
                  compute kalan-odeme = 
                          kalan-odeme - taksit-tutar
            end-if

            rewrite taksit-rec invalid 
                stop " "
            end-rewrite
            perform log-operation-taksit
    end-read 
    end-perform
    end-start

    initialize devremulk-rec
    move uye-no            to devremulk-no
    read devremulk no lock invalid
         stop " "
    not invalid 
        move kesin-odenen-toplam to devremulk-odenen
        move kesin-kalan-toplam  to devremulk-kalan
        move prim-toplam         to devremulk-hes-prim
        move prim-odeme-toplam   to devremulk-odenen-prim
        compute devremulk-kalan-prim = devremulk-hes-prim + devremulk-odenen-prim
        rewrite devremulk-rec end-rewrite
        perform log-operation-devmulk
    end-read 

    initialize taksit-rec tahsilat-bitti alt-toplam odenen-toplam fark-hesapla
               kesin-odenen-toplam    kesin-kalan-toplam
    move uye-no         to taksit-devremulk-no
    start taksit key not < taksit-anah invalid 
         continue 
    not invalid 
    perform with test after until fs-taksit = "10"
    read taksit next no lock end move "10" to fs-taksit
    not at end 
            if taksit-devremulk-no <> uye-no
                exit perform 
            end-if
 
          
            initialize fark-hesapla 

            if tahsilat-bitti = 1
               move taksit-tutar          to taksit-kesin-kalan  
                             compute kesin-kalan-toplam = 
                                     kesin-kalan-toplam + taksit-kalan
            end-if 

            if kalan-odeme2 > 0 and 
               taksit-tutar > 0  and 
               tahsilat-bitti = 0
                  if taksit-tutar <= kalan-odeme2 
                     move taksit-tutar    to taksit-kesin-odenen 
                     move 0               to taksit-kesin-kalan  
                     compute kesin-odenen-toplam = 
                             kesin-odenen-toplam + taksit-tutar
                     compute kesin-kalan-toplam = 
                             kesin-kalan-toplam + taksit-kalan

                  else 
                     if kalan-odeme2 = 0
                        move taksit-tutar     to taksit-kesin-kalan 
                        move 0                to taksit-kesin-odenen
                        move 1                to tahsilat-bitti
                             compute kesin-kalan-toplam = 
                                     kesin-kalan-toplam + taksit-kalan

                     else
                        move kalan-odeme2     to taksit-kesin-odenen 
                        move 1                to tahsilat-bitti
                        compute kesin-odenen-toplam = 
                                kesin-odenen-toplam + kalan-odeme2
                        if kalan-odeme2 <> 0                             
                           compute fark-hesapla = 
                                   taksit-tutar - kalan-odeme2
                           move fark-hesapla  to taksit-kesin-kalan 
                             compute kesin-kalan-toplam = 
                                     kesin-kalan-toplam + taksit-kalan
                       
                        end-if 
                        
                     end-if 
                  end-if 
                  
                  compute kalan-odeme2 = 
                          kalan-odeme2 - taksit-tutar
            end-if
            rewrite taksit-rec invalid 
                stop " "
            end-rewrite 
            perform log-operation-taksit
    end-read 
    end-perform
    end-start

    initialize devremulk-rec
    move uye-no            to devremulk-no
    read devremulk no lock invalid
         stop " "
    not invalid 
        move kesin-odenen-toplam to devremulk-kesin-odenen
        move kesin-kalan-toplam  to devremulk-kesin-kalan
        move prim-toplam         to devremulk-hes-prim
        move prim-odeme-toplam   to devremulk-odenen-prim
          compute devremulk-kalan-prim = devremulk-hes-prim + devremulk-odenen-prim
        rewrite devremulk-rec end-rewrite
        perform log-operation-devmulk
    end-read.
    

*
 odeme-yeniden-bul.
     
    initialize odemeler-rec odeme-toplam-bul kalan-odeme 
               kesin-odeme-toplam-bul kesin-kalan-odeme
               prim-odeme-toplam-bul  kesin-odeme-prim-odeme
               prim-toplam-bul kesin-prim-odeme
               prim-odeme-toplam prim-toplam
    move uye-no            to odemeler-devremulk-no
    start odemeler key not < odemeler-anah invalid 
         continue 
    not invalid 
    perform with test after until fs-odemeler = "10"
    read odemeler next no lock end move "10" to fs-odemeler
    not at end
             initialize odenmedi
             if odemeler-devremulk-no <> uye-no
                 exit perform 
             end-if
             if odemeler-hareket-turu <> "A"
                 exit perform cycle 
             end-if
             if odemeler-odeme-turu = "CE" or 
                odemeler-odeme-turu = "SE"
                   initialize cek-rec
                   move odemeler-cek-isl-no to cek-isl-no
                   read cek no lock invalid 
                        stop " " 
                   end-read 
                        if cek-durumu not = "X"
                           move 1 to odenmedi
                        end-if 
             end-if 
           evaluate odemeler-islem-turu
           when "SO"
           when "IO"
           when "PI" |PARA IADESI
           when "FO" |FATURA ODEMESI
             compute kalan-odeme = kalan-odeme + odemeler-tutar
         
             if odenmedi not = 1
                compute kesin-kalan-odeme = kesin-kalan-odeme + odemeler-tutar                 
             end-if 
           when "SP" |SABIT PRIM ODEMESI              
           when "NP" |NORMAL PRIM ODEMESI                         
           when "AG" |AVANS GERI ODEMESI                                        
           when "GS" |SABIT PRIM GERI ODEMESI              
           when "GN" |PRIM GERI ODEMESI  
           when "AV" |AVANS
           when "DP" |DIGER PRIM ODEMELERI         
                compute prim-odeme-toplam = prim-odeme-toplam + odemeler-tutar        
           WHEN "PP" |PRIM
           WHEN "SS" |SABIT PRIM
           when "PM" |PERSONEL MAAS PRIMLERI 
                compute prim-toplam = prim-toplam + odemeler-tutar          
           WHEN OTHER 
               continue 
           end-evaluate

    end-read 
    end-perform
    end-start.                