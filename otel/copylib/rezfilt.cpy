*                                                                              
 filtre.  
    move 0 to filtre-gecti                                                                     
    perform 
          if numara-eh > 0                                                     
             if (bas-numara <> 0 and rez-anah < bas-numara) or                 
                (bit-numara <> 0 and rez-anah > bit-numara)                    
                     exit perform                                         
             end-if                                                            
          end-if                                                               
          if islem-tarih-eh > 0 
           if filt-satis-filt = 1 then 
                if (bas-islem-tarih <> 0 and rez-al-tar < bas-islem-tarih) or    
                    (bit-islem-tarih <> 0 and rez-al-tar > bit-islem-tarih)       
                           exit perform                                           
                     end-if 

              else                           
                     if (bas-islem-tarih <> 0 and rez-isl-tar < bas-islem-tarih) or    
                        (bit-islem-tarih <> 0 and rez-isl-tar > bit-islem-tarih)       
                           exit perform                                           
                     end-if 
           end-if                                                
          end-if                                                               
          if acenta-eh > 0                                                     
             if (bas-acenta <> spaces and rez-acenta < bas-acenta) or          
                (bit-acenta <> spaces and rez-acenta > bit-acenta)             
                   exit perform                                           
             end-if                                                            
          end-if                                                               
          if musteri-adi-eh > 0                                                
             if (bas-musteri-adi <> spaces and rez-adi < bas-musteri-adi) or   
                (bit-musteri-adi <> spaces and rez-adi > bit-musteri-adi)      
                     exit perform                                          
             end-if                                                            
          end-if                                                               
          if musteri-soyadi-eh > 0                                             
             if (bas-musteri-soy <> spaces and rez-soyadi < bas-musteri-soy) or
                (bit-musteri-soy <> spaces and rez-soyadi > bit-musteri-soy)   
                     exit perform                                          
             end-if                                                            
          end-if                                                               
          if c-in-tarih-eh > 0                                                 
             if (bas-cin-tarih <> 0 and rez-gir-tar < bas-cin-tarih) or        
                (bit-cin-tarih <> 0 and rez-gir-tar > bit-cin-tarih)           
                     exit perform                                          
             end-if                                                            
          end-if                                                               
          if c-out-tarih-eh > 0                                                
             if (bas-cout-tarih <> 0 and rez-cik-tar < bas-cout-tarih) or      
                (bit-cout-tarih <> 0 and rez-cik-tar > bit-cout-tarih)         
                     exit perform                                          
             end-if                                                            
          end-if                                                               
          if voucher-eh > 0                                                    
             if (bas-voucher <> spaces and rez-voucher < bas-voucher) or       
                (bit-voucher <> spaces and rez-voucher > bit-voucher)          
                     exit perform                                          
             end-if                                                            
          end-if                                                               
*/ yardimci filtreler sorgulaniyor ...                                         
*-------------------------------------------------------                       
          if combo-rezervasyon-turu-value(1:1) <> 0                            
             if combo-rezervasyon-turu-value(1:1) <> rez-tipi                  
                exit perform                                               
             end-if                                                            
          end-if                                                               
          if bas-grup-kodu <> spaces and 0                                           
             if bas-grup-kodu <> rez-grup-no                                   
                exit perform                                               
             end-if  
                          
          end-if
              if  filt-sirket-konak = 1 and rez-firma = spaces then  exit perform   end-if  
              if  filt-sirket-konak = 2 and rez-firma not  = spaces then  exit perform   end-if  
              
           if  filt-grup-konak = 1 and rez-grup-no < 1 then  exit perform   end-if                                                                    
           if  filt-grup-konak = 2 and rez-grup-no > 0 then  exit perform   end-if                                                                    
          if combo-kur-tipi-value(1:1) <> "H"                                  
             if combo-kur-tipi-value(1:1) <> rez-kur-aygun                     
                exit perform                                               
             end-if                                                            
          end-if                                                               
          if bas-banka-kodu <> 0                                               
             if bas-banka-kodu > rez-banka or                                  
                bas-banka-kodu < rez-banka                                     
                    exit perform                                           
             end-if                                                            
          end-if                                                               
          if bas-doviz-kodu <> 0                                               
             if bas-doviz-kodu > rez-doviz or                                  
                bas-doviz-kodu < rez-doviz                                     
                    exit perform                                           
             end-if                                                            
          end-if                                                               
          if bas-anlasma-kodu <> spaces                                        
             if bas-anlasma-kodu > rez-anlasma or                              
                bas-anlasma-kodu < rez-anlasma                                 
                     exit perform                                          
             end-if                                                            
          end-if   
           if filt-sirket <> spaces
             
                             
             if filt-sirket <> rez-firma                            
                                              
                     exit perform                                          
             end-if
            
                                           
          end-if 
            
              
                                                  
          if bas-odeme-kodu <> spaces                                          
             if bas-odeme-kodu > rez-odeme-tipi or                             
                bas-odeme-kodu < rez-odeme-tipi                                
                     exit perform                                          
             end-if                                                            
          end-if 
          if kaynak1 <> spaces
             if kaynak1 not = rez-kaynak-1
                 exit perform
             end-if
          end-if      
          if kaynak2 <> spaces
             if kaynak2 not = rez-kaynak-2
                 exit perform
             end-if
          end-if      
          if kaynak3 <> spaces
             if kaynak3 not = rez-kaynak-3
                 exit perform
             end-if
          end-if      
          if odatipi1 <> spaces
             if odatipi1 not = rez-oda-tipi
                 exit perform
             end-if
          end-if      
          if odatipi2 <> spaces
             if odatipi2 not = rez-oda-tipi2
                 exit perform
             end-if
          end-if      
          if odatipi3 <> spaces
             if odatipi3 not = rez-oda-tipi3
                 exit perform
             end-if
          end-if      
          if bas-ulke-kodu <> spaces                                           
             if bas-ulke-kodu > rez-ulke or                                    
                bas-ulke-kodu < rez-ulke                                       
                     exit perform                                          
             end-if                                                            
          end-if                                                               
          if bas-pazar-kodu <> spaces                                          
             if bas-pazar-kodu > rez-pazar or                                  
                bas-pazar-kodu < rez-pazar                                     
                     exit perform                                          
             end-if                                                            
          end-if                                                               
          if bas-pansiyon-kodu <> spaces                                       
             if bas-pansiyon-kodu > rez-pan-tipi or                            
                bas-pansiyon-kodu < rez-pan-tipi                               
                     exit perform                                          
             end-if                                                            
          end-if  
           if bas-op-kodu <> spaces                                       
             if bas-op-kodu not = rez-operator                       
                exit perform                                          
             end-if                                                            
          end-if                                                       
          if combo-musteri-turu-value(1:1) = " " or 
              combo-musteri-turu-value(1:1) = "H" or                          
             combo-musteri-turu-value(1:1) = rez-vip                           
                   continue                                                    
          else                                                                 
             exit perform                                                  
          end-if                                                               
*/ gelismis filtreler sorgulaniyor                                             
*-------------------------------------------------------                       
          if combo-oda-tipi-value(1:1) <> "0"                                  
             if combo-oda-tipi-value(1:1) <> rez-s-d-t-g                       
                   exit perform                                            
             end-if                                                            
          end-if 
          if combo-fiyat-konumu-value(1:2) <> "00"                                
             if combo-fiyat-konumu-value(1:2) <> rez-fiyat-konumu                  
                exit perform                                               
             end-if                                                            
          end-if                                                       
          if combo-oda-konumu-value(1:2) <> "00"                                
             if combo-oda-konumu-value(1:2) <> rez-oda-konumu                  
                exit perform                                               
             end-if                                                            
          end-if                                                               
          if combo-kullanici-no <> spaces                                      
             if combo-kullanici-no <> rez-staf                                 
                exit perform                                               
             end-if                                                            
          end-if                                                               
          if combo-rezervasyon-k-w-value(1:1) <> "H"                           
             if combo-rezervasyon-k-w-value(1:1) <> rez-k-g-b                  
                exit perform                                               
             end-if                                                            
          end-if                                                               
          if cin-rezler-ciksin = 0                                             
             if rez-c-in = "E"                                                 
                exit perform                                               
             end-if                                                            
          end-if                                                               
          evaluate rap-bilboard                                                
            when 1                                                             
               if rez-bilbord-eh not = "E"                                     
                  exit perform                                             
               end-if                                                          
            when 2                                                             
                if rez-bilbord-eh = "E"                                        
                  exit perform                                             
               end-if                                                          
          end-evaluate                                                         
                                                                               
          evaluate eb-rezler-ciksin                                            
*/ sadece ebler cikiyor                                                        
          when 1                                                               
               if rez-eb <> "E"                                                
                  exit perform                                             
               end-if                                                          
*/ ebler cikmasin                                                              
          when 2                                                               
               if rez-eb = "E"                                                 
                  exit perform                                             
               end-if                                                          
          end-evaluate                                                         
          if buyuk-sayi <> 0                                                   
             if buyuk-sayi <> rez-buyuk                                        
                exit perform                                               
             end-if                                                            
          end-if                                                               
          if kucuk-sayi <> 0                                                   
             if kucuk-sayi <> rez-kucuk                                        
                exit perform                                               
             end-if                                                            
          end-if                                                               
          if free-sayi <> 0                                                    
             if free-sayi <> rez-free                                          
                exit perform                                               
             end-if                                                            
          end-if                                                               
          if komisyon-orani <> 0                                               
             if komisyon-orani <> rez-komisyon                                 
                exit perform                                               
             end-if                                                            
          end-if                                                               
          if indirim-orani <> 0                                                
             if indirim-orani <> rez-nor-indirim                               
                exit perform                                               
             end-if                                                            
          end-if 
         
          if acentagrup not = spaces 
            move rez-acenta to grup-alt
            move "A" to grup-tipi
            move acentagrup to grup-kodu
            read grup no lock 
               invalid
                 if acentagrupharic = 0 
                   exit perform 
                 end-if
                not invalid
                  if acentagrupharic = 1 
                   exit perform 
                 end-if
            end-read 

          end-if
          if odasiz = 2 or 1 
                  if odasiz = 2 and rez-share = 1  then
                     exit perform 
                  end-if
                  if odasiz = 1 and rez-share = 0  then
                     exit perform 
                  end-if
          end-if
          if rez-gr-status = 1 and fil-pen = 0 then
            exit perform cycle
          end-if
          if rez-gr-status = 2 and fil-ops = 0 then
            exit perform cycle
          end-if
          if rez-gr-status = 3 and fil-ten = 0 then
            exit perform cycle
          end-if
          if rez-oda-konumu = rez-fiyat-konumu and
             sadece-degisim-konum = 1
                 exit perform cycle 
          end-if 
          if sadece-trgel = 1 and rez-gel-sirket  = spaces 
                 exit perform cycle 
          end-if
          if sadece-trgit = 1 and rez-git-sirket  = spaces 
                 exit perform cycle 
          end-if
****************************************
          if fil-coklu-acenta not = spaces
             move 0           to buldum-filtr
             perform varying i 
                        from 1
                        by 1 
                        until i > 500
                           if fil-coklu-acenta1(i) not = spaces and 
                              fil-coklu-acenta1(i) = rez-acenta
                                move 1  to buldum-filtr
                                exit perform 
                           end-if 
             end-perform
             if buldum-filtr = 0
                exit perform cycle 
             end-if 
          end-if 
          if fil-coklu-rehber not = spaces
             move 0           to buldum-filtr
             perform varying i 
                        from 1
                        by 1 
                        until i > 500
                           if fil-coklu-rehber1(i) not = spaces and 
                              fil-coklu-rehber1(i) = rez-rehber
                                move 1  to buldum-filtr
                                exit perform 
                           end-if 
             end-perform
             if buldum-filtr = 0
                exit perform cycle 
             end-if 
          end-if 
************************************
          if fil-coklu-sirket not = spaces
             move 0           to buldum-filtr
             perform varying i 
                        from 1
                        by 1 
                        until i > 500
                           if fil-coklu-sirket1(i) not = spaces stop " " end-if
                           if fil-coklu-sirket1(i) not = spaces and 
                              fil-coklu-sirket1(i) = rez-firma
                                move 1  to buldum-filtr
                                exit perform 
                           end-if 
             end-perform
             if buldum-filtr = 0
                exit perform cycle 
             end-if 
          end-if 
************************************
          if fil-coklu-grup not = spaces
             move 0           to buldum-filtr
             perform varying i 
                        from 1
                        by 1 
                        until i > 500
                           if fil-coklu-grup1(i) not = spaces and 
                              function numval(fil-coklu-grup1(i)) = rez-grup-no
                                move 1  to buldum-filtr
                                exit perform 
                           end-if 
             end-perform
             if buldum-filtr = 0
                exit perform cycle 
             end-if 
          end-if 
************************************

          if fil-coklu-fkonumu not = spaces
             move 0           to buldum-filtr
             perform varying i 
                        from 1
                        by 1 
                        until i > 500
                           if fil-coklu-fkonumu1(i) not = spaces and 
                              function numval(fil-coklu-fkonumu1(i)) = rez-fiyat-konumu
                                move 1  to buldum-filtr
                                exit perform 
                           end-if 
             end-perform
             if buldum-filtr = 0
                exit perform cycle 
             end-if 
          end-if 
************************************

          if fil-coklu-okonumu not = spaces
             move 0           to buldum-filtr
             perform varying i 
                        from 1
                        by 1 
                        until i > 500
                           if fil-coklu-okonumu1(i) not = spaces and 
                              function numval(fil-coklu-okonumu1(i)) = rez-oda-konumu
                                move 1  to buldum-filtr
                                exit perform 
                           end-if 
             end-perform
             if buldum-filtr = 0
                exit perform cycle 
             end-if 
          end-if 
************************************
          if fil-coklu-ulke not = spaces
             move 0           to buldum-filtr
             perform varying i 
                        from 1
                        by 1 
                        until i > 500
                           if fil-coklu-ulke1(i) not = spaces and 
                              fil-coklu-ulke1(i) = rez-ulke
                                move 1  to buldum-filtr
                                exit perform 
                           end-if 
             end-perform
             if buldum-filtr = 0
                exit perform cycle 
             end-if 
          end-if 
************************************
          if fil-coklu-pazar not = spaces
             move 0           to buldum-filtr
             perform varying i 
                        from 1
                        by 1 
                        until i > 500
                           if fil-coklu-pazar1(i) not = spaces and 
                              fil-coklu-pazar1(i) = rez-pazar
                                move 1  to buldum-filtr
                                exit perform 
                           end-if 
             end-perform
             if buldum-filtr = 0
                exit perform cycle 
             end-if 
          end-if 
************************************
          if fil-coklu-kaynak1 not = spaces
             move 0           to buldum-filtr
             perform varying i 
                        from 1
                        by 1 
                        until i > 500
                           if fil-coklu-kaynak11(i) not = spaces and 
                              fil-coklu-kaynak11(i) = rez-kaynak-1
                                move 1  to buldum-filtr
                                exit perform 
                           end-if 
             end-perform
             if buldum-filtr = 0
                exit perform cycle 
             end-if 
          end-if 
************************************
          if fil-coklu-kaynak2 not = spaces
             move 0           to buldum-filtr
             perform varying i 
                        from 1
                        by 1 
                        until i > 500
                           if fil-coklu-kaynak21(i) not = spaces and 
                              fil-coklu-kaynak21(i) = rez-kaynak-2
                                move 1  to buldum-filtr
                                exit perform 
                           end-if 
             end-perform
             if buldum-filtr = 0
                exit perform cycle 
             end-if 
          end-if 
************************************
          if fil-coklu-kaynak3 not = spaces
             move 0           to buldum-filtr
             perform varying i 
                        from 1
                        by 1 
                        until i > 500
                           if fil-coklu-kaynak31(i) not = spaces and 
                              fil-coklu-kaynak31(i) = rez-kaynak-3
                                move 1  to buldum-filtr
                                exit perform 
                           end-if 
             end-perform
             if buldum-filtr = 0
                exit perform cycle 
             end-if 
          end-if 
************************************
          if fil-coklu-anlasma not = spaces
             move 0           to buldum-filtr
             perform varying i 
                        from 1
                        by 1 
                        until i > 500
                           if fil-coklu-anlasma1(i) not = spaces and 
                              fil-coklu-anlasma1(i) = rez-anlasma
                                move 1  to buldum-filtr
                                exit perform 
                           end-if 
             end-perform
             if buldum-filtr = 0
                exit perform cycle 
             end-if 
          end-if 
************************************
          move 1 to filtre-gecti 
          exit perform                                                               
    end-perform  .                                                             