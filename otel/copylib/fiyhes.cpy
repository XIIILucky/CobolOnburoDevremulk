* 
 peryot-fiyat-bul.
       initialize fiyatt 
*       if k-kodu-tasi = "X   " and rez-no = 93 then stop " " end-if
       initialize g-bul-gun-sayisi    ilk-rez-fiyati top-rez-fiyati
        move rez-gir-tar   to takvim2-anah
         start takvim2 key not < takvim2-anah
               invalid
                move 1 to g-bul-gun-sayisi
             not invalid
                    initialize fs-takvim2
                      perform with test after until fs-takvim2 = "10"
                      read takvim2 next no lock end move "10" to fs-takvim2
                        not at end
                           if takvim2-anah >= rez-cik-tar
                                 move "10" to fs-takvim2
                                 
                                exit perform cycle
                           end-if
                         if takvim2-anah < rez-cik-tar
                               add 1 to g-bul-gun-sayisi  
                           end-if
         
                       end-read
                      end-perform
       end-start.
       move   g-bul-gun-sayisi  to rez-gece-say
          initialize doviz-bulundu fiyatt
        if  rez-folio > 0 then 
           move rez-folio to konuk-folio
           read konuk no lock invalid 
              display message box "HAta no:3444-"rez-no"'Nolu Rezervasyon Hatali-"
           end-read
           move konuk-kur-degeri to doviz-alis
         else
         move rez-gir-tar      to kur-tarih
         move rez-banka        to kur-banka  
         move Rez-Doviz        to kur-doviz 
         if rez-cin-kuru > 0 and rez-cin-kuru < 100 then 
             move rez-cin-kuru to doviz-alis ,
           else
         move tarih-tasi to kur-tarih
         if rez-durumu = "S" and rez-gir-tar < tarih-tasi 
                  move tarih-tasi to kur-tarih
              end-if
         if rez-kur-aygun = "A" move 01 to kur-gun end-if 
             
               read kur no lock 
                   invalid continue
                   
               end-read
            
        
         end-if 
        end-if  
 
     




      move rez-odeme-tipi          to kodlar02-kodu
        move "B"                     to kodlar02-tipi
        read kodlar02 no lock invalid
             move "Tanimsiz"  to kodlar02-adi
        end-read
       
      if ode-posting = "H" then        
          initialize top-rez-fiyati
       ||   exit paragraph
      end-if 
       if eski-tip not = 1 then
        
         perform kur-bul
         initialize jj
           initialize cast3-rec  fs-cast3
          move rez-gir-tar to cast3-tarih
          move rez-no      to cast3-rez-no
          start cast3 key >= cast3-anah1 invalid continue
             not invalid
             perform until fs-cast3 = "10"
                read cast3 next no lock end move "10" to fs-cast3
                    not end
                     if cast3-rez-no not = rez-no or cast3-tarih > rez-cik-tar
                        move "10" to fs-cast3
                        else
                          if cast3-fiyati not numeric  then 
                            move 0 to cast3-fiyati
                          end-if
                           if cast3-basilan-fiyat not numeric  then 
                            move 0 to cast3-basilan-fiyat
                          end-if
                          if jj > 400 then 
                             display message box rez-no " nolu rezervasyon 400 gunu geciyor"
                          else
                                 add 1 to jj 
                          end-if
                         MOVE REZ-NO TO TAKASFIYAT-REZ-NO
                         move cast3-tarih to fiyatt-tar(jj)
                         move fiyatt-tar(jj) to TAKASFIYAT-TARIH
                         move doviz-alis to  fiyatt-kur(jj)
                          move fiyatt-kur(jj) to TAKASFIYAT-kur
                          if reel-gecmis = 1 then 
                               
                                if cast3-tarih < rez-cik-tar and (cast3-tarih >= tarih-tasi or rez-durumu = "S")
                                  if sadece-oda-br = 1 
                                   move cast3-br-malzeme-tut(1)   to   fiyatt-fiy(jj)
                                  else
                                    move cast3-fiyati  to  fiyatt-fiy(jj)

                                   end-if
                                
                                 compute fiyatt-fiytl(jj) rounded =  
                                    fiyatt-fiy(jj) * doviz-alis
                                   
                               end-if
                               if sadece-oda-br = 1 
                                  if cast3-tarih < tarih-tasi
                                   compute fiyatt-fiy(jj) rounded = fiyatt-fiy(jj)  + cast3-br-malzeme-tut(1)
                                    compute fiyatt-fiytl(jj) rounded =  fiyatt-fiytl(jj) +
                                      ( cast3-br-malzeme-tut(1) * doviz-alis )
                                   end-if
                                  else
                                  compute fiyatt-fiy(jj) rounded = fiyatt-fiy(jj)  + cast3-BASILAN-FIYAT 
                                    compute fiyatt-fiytl(jj) rounded =  fiyatt-fiytl(jj) +
                                      ( cast3-BASILAN-FIYAT * doviz-alis )

                                   end-if
                            

                               if duzeltme-dahil = 1 then

                                    if sadece-oda-br = 1 
                                     compute fiyatt-fiy(jj) rounded = fiyatt-fiy(jj)  + cast3-duzeltme-break
                                      compute fiyatt-fiytl(jj) rounded =  fiyatt-fiytl(jj) +
                                            (  cast3-duzeltme-break * doviz-alis )

                                    else
                                      compute fiyatt-fiy(jj) rounded = fiyatt-fiy(jj)  + cast3-duzeltme
                                      compute fiyatt-fiytl(jj) rounded =  fiyatt-fiytl(jj) +
                                             (  cast3-duzeltme * doviz-alis )
                                   end-if
                               end-if
                             else
                              if cast3-tarih < rez-cik-tar
                                 
                                 if sadece-oda-br = 1 
                                   move cast3-br-malzeme-tut(1)   to   fiyatt-fiy(jj)
                                  else
                                    move cast3-fiyati  to  fiyatt-fiy(jj)

                                   end-if
                                   compute fiyatt-fiytl(jj) rounded =  
                                    fiyatt-fiy(jj) * doviz-alis
                               end-if
                          end-if
                          MOVE fiyatt-fiy(jj)   TO TAKASFIYAT-FIYAT
                          MOVE fiyatt-fiytl(jj) TO TAKASFIYAT-FIYAT-tl
                         
        
                          move doviz-alis to  fiyatt-kur(jj)
                          if cast3-tarih < rez-cik-tar
                                  move cast3-anlasma-fiyati  to  fiyatt-fiy2(jj)
                                 compute fiyatt-fiytl2(jj) rounded =  
                                    fiyatt-fiy2(jj) * doviz-alis
                           end-if
        
        
                          MOVE fiyatt-fiy2(jj)  TO TAKASFIYAT2-FIYAT
                          MOVE fiyatt-fiytl2(jj)TO TAKASFIYAT2-FIYAT-tl

                           move doviz-alis   to fiyatt-kur(jj)     fiyatt-kur2(jj)   takasfiyat-kur 
                           move cevrim-kuru2 to fiyatt-kurcev(jj)  fiyatt-kurcev2(jj) takasfiyat-kurcev


                          WRITE TAKASFIYAT-REC invalid continue END-WRITE
                      end-if      
               END-READ
             end-perform 

          
         end-start
        
        exit paragraph  
       end-if

          
       .
   
              
*



*                 
 kur-bul.
      
         move 1 to doviz-alis  cevrim-kuru2

        initialize kur-rec
        move rez-gir-tar      to kur-tarih
        move rez-banka        to kur-banka  

       move butce-cev-doviz to kur-doviz
       if merkez not = 1 then move 87 to kur-banka end-if
       read kur invalid
          if merkez = 1 then 
             move tarih-tasi to  kur-tarih
              read kur invalid
                 move 1 to cevrim-kuru2
                 not invalid 
                   move  doviz-alis to cevrim-kuru2
              end-read
            else
              move 1 to cevrim-kuru2
          end-if
          continue
          not invalid
          move doviz-alis to cevrim-kuru2
       end-read
        move rez-doviz to kur-doviz
          move rez-gir-tar      to kur-tarih
       if gercek-cin-kuru not = 1       then 
           move 87 to kur-banka 
            else 
            move rez-banka to kur-banka
         end-if
       read kur invalid
          if merkez = 1 then 
             move tarih-tasi to  kur-tarih
              read kur invalid
                 move 1 to doviz-alis
                 
              end-read
            else
              move 1 to doviz-alis
          end-if
         
       end-read

       if gercek-cin-kuru = 1      
        if  rez-folio > 0  
                   move rez-folio to konuk-folio
                   read konuk no lock invalid 
                      display message box "HAta no:3444-"rez-no"'Nolu Rezervasyon Hatali-"
                   end-read
                  move konuk-kur-degeri to doviz-alis
           else
              if rez-cin-kuru > 0 and rez-cin-kuru < 100  then 
                    move rez-cin-kuru to doviz-alis ,
              end-if
        end-if
      end-if
     
     
        .
