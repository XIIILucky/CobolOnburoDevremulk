*                                                                              
 gfiltre.  
    move 0 to filtre-gecti   
                                                    
    perform 
                                                                   
          if islem-tarih-eh > 0 
           if filt-satis-filt = 1 then 
                if (bas-islem-tarih <> 0 and gruplar-satis-tar < bas-islem-tarih) or    
                    (bit-islem-tarih <> 0 and gruplar-satis-tar > bit-islem-tarih)       
                           exit perform                                           
                     end-if 

              else                           
                     if (bas-islem-tarih <> 0 and gruplar-isl-tar < bas-islem-tarih) or    
                        (bit-islem-tarih <> 0 and gruplar-isl-tar > bit-islem-tarih)       
                           exit perform                                           
                     end-if 
           end-if                                                
          end-if                                                               
          if acenta-eh > 0                                                     
             if (bas-acenta <> spaces and gruplar-acenta < bas-acenta) or          
                (bit-acenta <> spaces and gruplar-acenta > bit-acenta)             
                   exit perform                                           
             end-if                                                            
          end-if                                                               
                                                             
                                                           
                                                       
          if bas-grup-kodu <> spaces and 0                                           
             if bas-grup-kodu <> gruplar-kodu                                  
                exit perform                                               
             end-if  
                          
          end-if
              if  filt-sirket-konak = 1 and gruplar-firma = spaces then  exit perform   end-if  
              if  filt-sirket-konak = 2 and gruplar-firma not  = spaces then  exit perform   end-if  
              
                                                                  
           if  filt-grup-konak = 2  exit perform   end-if                                                                    
                                                                  
          if bas-banka-kodu <> 0 and spaces                                              
             if bas-banka-kodu > gruplar-banka or                                  
                bas-banka-kodu < gruplar-banka                                     
                    exit perform                                           
             end-if                                                            
          end-if                                                               
          if bas-doviz-kodu <> 0 and spaces                                             
             if bas-doviz-kodu > gruplar-doviz or                                  
                bas-doviz-kodu < gruplar-doviz                                     
                    exit perform                                           
             end-if                                                            
          end-if                                                               
          if bas-anlasma-kodu <> spaces                                        
             if bas-anlasma-kodu > gruplar-anlasma or                              
                bas-anlasma-kodu < gruplar-anlasma                                 
                     exit perform                                          
             end-if                                                            
          end-if   
           if filt-sirket <> spaces
             
                             
             if filt-sirket <> gruplar-firma                            
                                              
                     exit perform                                          
             end-if
            
                                           
          end-if 
            
              
                                                  
          if bas-odeme-kodu <> spaces                                          
             if bas-odeme-kodu > gruplar-odeme or                             
                bas-odeme-kodu < gruplar-odeme                               
                     exit perform                                          
             end-if                                                            
          end-if 
          if kaynak1 <> spaces
             if kaynak1 not = gruplar-kaynak-1
                 exit perform
             end-if
          end-if      
          if kaynak2 <> spaces
             if kaynak2 not = gruplar-kaynak-2
                 exit perform
             end-if
          end-if      
          if kaynak3 <> spaces
             if kaynak3 not = gruplar-kaynak-3
                 exit perform
             end-if
          end-if      
          if bas-ulke-kodu <> spaces                                           
             if bas-ulke-kodu > gruplar-ulke or                                    
                bas-ulke-kodu < gruplar-ulke                                       
                     exit perform                                          
             end-if                                                            
          end-if                                                               
          if bas-pazar-kodu <> spaces                                          
             if bas-pazar-kodu > gruplar-pazar or                                  
                bas-pazar-kodu < gruplar-pazar                                     
                     exit perform                                          
             end-if                                                            
          end-if                                                               
          if bas-pansiyon-kodu <> spaces                                       
             if bas-pansiyon-kodu > gruplar-pan-tipi or                            
                bas-pansiyon-kodu < gruplar-pan-tipi                               
                     exit perform                                          
             end-if                                                            
          end-if                                                               
                                                                    
*/ gelismis filtreler sorgulaniyor                                             
*-------------------------------------------------------                       
         
          if combo-fiyat-konumu-value(1:2) <> "00"                                
             if combo-fiyat-konumu-value(1:2) <> takas-blok-konum                  
                exit perform                                               
             end-if                                                            
          end-if                                                       
          if combo-oda-konumu-value(1:2) <> "00"                                
             if combo-oda-konumu-value(1:2) <> takas-blok-konum                  
                exit perform                                               
             end-if                                                            
          end-if                                                               
          if combo-kullanici-no <> spaces                                      
             if combo-kullanici-no <> gruplar-staf                                 
                exit perform                                               
             end-if                                                            
          end-if                                                               
                                                                       
                                                                     
                                                             
                                                                               
                                                             
     
         
          if acentagrup not = spaces 
            move gruplar-acenta to grup-alt
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
         
          if  gruplar-grup-statu = 1 and fil-pen = 0 then
            exit perform cycle
          end-if
          if  gruplar-grup-statu = 2 and fil-ops = 0 then
            exit perform cycle
          end-if
          if  gruplar-grup-statu = 3 and fil-ten = 0 then
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
                              fil-coklu-acenta1(i)(1:4) = GRUPLAR-acenta
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
                           if fil-coklu-sirket1(i) not = spaces and 
                              fil-coklu-sirket1(i) = GRUPLAR-firma
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
                              function numval(fil-coklu-grup1(i)) = gruplar-kodu
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
                              fil-coklu-fkonumu1(i)(1:2) = takas-blok-konum
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
                              fil-coklu-okonumu1(i)(1:2) = takas-blok-konum
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
                              fil-coklu-ulke1(i) = gruplar-ulke
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
                              fil-coklu-pazar1(i) = gruplar-pazar
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
                              fil-coklu-kaynak11(i) = gruplar-kaynak-1
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
                              fil-coklu-kaynak21(i) = gruplar-kaynak-2
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
                              fil-coklu-kaynak31(i) = gruplar-kaynak-3
                                move 1  to buldum-filtr
                                exit perform 
                           end-if 
             end-perform
             if buldum-filtr = 0
                exit perform cycle 
             end-if 
          end-if 
************************************
***************sealight otelde problem cikitgi icin konuldu

          if bas-op-kodu <> spaces                                                            
                exit perform                                                                                                     
          end-if
**********************************        

          move 1 to filtre-gecti 
          exit perform                                                               
    end-perform  .                                                             