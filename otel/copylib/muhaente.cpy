* 
 muhasebe-entegre-kontrol.
    move 0 to muh-isl-durdur
  
    if yil-tasi = muhasebe-tar-yil  
       if muhasebe-entegre-sirketi not = muha-sirketi of genel-rec
          move  muha-sirketi of genel-rec to  muhasebe-entegre-sirketi
*          move  muha-gecen-sene to  muhasebe-entegre-sirketi   |firat gecen-sene sirketi hatasi icin kapandi
          perform acuserve-adres-aktar
          display message box "Bu Sene muhasebe entegrasyonu---" muhasebe-entegre-sirketi title "Dikkat"
       end-if
    else
       if yil-tasi =  muhasebe-tar-yil + 1
          if muhasebe-entegre-sirketi not = muha-gecen-sene
             move  muha-gecen-sene to  muhasebe-entegre-sirketi
             perform acuserve-adres-aktar
          end-if
          display message box "Geçen Sene muhasebe entegrasyonu---" muhasebe-entegre-sirketi title "Dikkat"
       else
          move 1 to muh-isl-durdur
          display message box "Muhasebe Entegrasyonu saglanamadi " title "islem iptal"
       end-if.
