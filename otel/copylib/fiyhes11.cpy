* 
 peryot-fiyat-bul.
       
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




         initialize doviz-bulundu fiyatt
         move rez-gir-tar      to kur-tarih
         move rez-banka        to kur-banka  
         move Rez-Doviz        to kur-doviz 
         if rez-cin-kuru > 0 and rez-cin-kuru <100 then 
             move rez-cin-kuru to doviz-alis ,
           else
         
         if rez-kur-aygun = "A" move 01 to kur-gun end-if 
         start takvim2 key <= takvim2-anah 
          invalid continue
          not invalid
            move 0 to doviz-bulundu
           perform until doviz-bulundu = 1 or fs-takvim2= "10"
            read takvim2 previous 
              at end move "10" to fs-takvim2
              not end
               move takvim2-anah to kur-tarih
               read kur no lock 
                   invalid continue
                   not invalid 
                      move 1 to doviz-bulundu
               end-read
             end-read
            end-perform
         end-start
        
         end-if 
          
 
     

      move rez-odeme-tipi          to kodlar02-kodu
        move "B"                     to kodlar02-tipi
        read kodlar02 no lock invalid
             move "Tanimsiz"  to kodlar02-adi
        end-read
       
      if ode-posting = "H" then        
          initialize top-rez-fiyati
          exit paragraph
      end-if 
     
     initialize aksiyhrk-rec special-var-yok
     move "O"              to aksiyhrk-tipi
     move rez-acenta       to aksiyhrk-acenta
     move rez-gir-tar      to aksiyhrk-tarih
     move rez-pan-tipi     to aksiyhrk-pan-tipi
     move g-bul-gun-sayisi to aksiyhrk-gecele
     
     read aksiyhrk no lock
       invalid
         continue
       not invalid
         set special-var to true
         move aksiyhrk-gecele   to special-gece 
         move aksiyhrk-ode      to special-tahsil 
     end-read
     
     initialize aksiyhrk-rec aksiyon-durumu
     move "A"              to aksiyhrk-tipi
     move rez-acenta       to aksiyhrk-acenta
     move rez-gir-tar      to aksiyhrk-tarih
     move rez-pan-tipi     to aksiyhrk-pan-tipi
     move g-bul-gun-sayisi to aksiyhrk-gecele
     if  aksiyhrk-gecele > 0 then 
     read aksiyhrk no lock invalid
          continue
     not invalid
          set aksiyon-var to true
     end-read
      end-if
     move rez-fiyati    to ilk-rez-fiyati

     initialize g-bul-gun-sayisi  kacinci-gece
                takvim2-rec top-rez-fiyati
     move rez-gir-tar   to takvim2-anah
     start takvim2 key not < takvim2-anah
           invalid
                move 1 to g-bul-gun-sayisi
     not invalid
     initialize fs-takvim2
     perform with test after until fs-takvim2 = "10"
     read takvim2 next no lock end move "10" to fs-takvim2
     not at end
          if takvim2-anah = rez-cik-tar
             move "10" to fs-takvim2
             exit perform cycle
          end-if
          if takvim2-anah not > rez-cik-tar
             perform fiyat-bul thru fiyat-bul-exit
             if  ilk-rez-fiyati = 0 then 
                move rez-fiyati to ilk-rez-fiyati 
             end-if
             if takvim2-anah = rez-gir-tar 
                      and fiyatana-fiks = 1 then
                           move "E" to rez-fiyat-fix 
                  end-if
             add 1 to g-bul-gun-sayisi kacinci-gece
             move takvim2-anah    to  fiyatt-tar(kacinci-gece)
             move ilk-rez-fiyati to  fiyatt-fiy(kacinci-gece)
             move banka-kodu to kur-banka
             move rez-doviz to kur-doviz
             move takvim2-anah to kur-tarih 
             read kur no lock invalid
                move 1 to doviz-alis  yanlis-kur
             end-read
             
             move doviz-alis     to  fiyatt-kur(kacinci-gece)
              if kacinci-gece > aksiyhrk-ode and aksiyon-var
               and aksiyhrk-sondan = 1 then
                  initialize fiyatt-fiy(kacinci-gece) ilk-rez-fiyati
                   if special-var
                     compute top-rez-fiyati rounded = top-rez-fiyati - 
                     ((special-tahsil) * rez-buyuk / special-gece)
      
                   end-if
                  else
                  compute top-rez-fiyati
                        = top-rez-fiyati + fiyatt-fiy(kacinci-gece)
                  end-if
             
             
          else
             move "10" to fs-takvim2
          end-if
     end-read
     end-perform.
     if aksiyhrk-sondan = 1 
        perform varying jj from 1 by 1 until jj > kacinci-gece
            compute fiyatt-fiy(jj) rounded =
                   top-rez-fiyati / kacinci-gece
        end-perform 
     end-if .
     if top-rez-fiyati = 0 then 
          perform varying jj from 1 by 1 until jj > kacinci-gece
            compute fiyatt-fiy(jj) rounded =
                   rez-fiyati
          end-perform
          compute top-rez-fiyati rounded =  rez-fiyati * kacinci-gece
     end-if .
     if Reel-Gecmis = 1 and rez-folio > 0 then 
         move rez-folio to konuk-folio
        read konuk no lock invalid 
          display message box "HAta no:3444"
        end-read
       perform varying jj from 1 by 1 until jj > kacinci-gece 
              or fiyatt-tar(jj) >= tarih-tasi
               perform basilan-bul thru basilan-bul-exit
                compute    fiyatt-fiy(jj) 
                rounded  =  fiyatt-fiy(jj)
                move 1 to fiyatt-kur(jj)
          end-perform 
        if tarih-tasi > rez-cik-tar
         compute jj = kacinci-gece + 1
         move rez-cik-tar to  fiyatt-tar(jj)
          perform basilan-bul thru basilan-bul-exit
           compute    fiyatt-fiy(jj) rounded  = 
           fiyatt-fiy(jj) 
          add  fiyatt-fiy(jj) to  fiyatt-fiy(kacinci-gece)
          initialize fiyatt-fiy(jj) fiyatt-tar(jj) 
        end-if
     end-if.
       
     perform varying jj from 1 by 1 until jj > kacinci-gece
           
            MOVE REZ-NO TO TAKASFIYAT-REZ-NO
                move fiyatt-tar(jj) to TAKASFIYAT-TARIH
              READ TAKASFIYAT NO LOCK
                 INVALID 
                  move fiyatt-kur(jj) to TAKASFIYAT-kur
                  MOVE fiyatt-fiy(jj)TO TAKASFIYAT-FIYAT
                  WRITE TAKASFIYAT-REC END-WRITE
                 NOT INVALID 
                  display message box "Hata no: fyhes-8220"
                  stop " "
               END-READ
     end-perform 
            initialize  TAKASFIYAT-TARIH
            READ TAKASFIYAT NO LOCK
                 INVALID 
                  MOVE  top-rez-fiyati TO TAKASFIYAT-FIYAT
                  WRITE TAKASFIYAT-REC END-WRITE
                 NOT INVALID 
                  display message box "Hata no: fyhes-8222"
                  stop " "
             END-READ .
              
*



 fiyat-bul.
    if rez-fiyat-fix = "E"
       go fiyat-bulundu
    end-if.

     move 0 to oda-fiyati. 
     move rez-acenta        to fiyat-acenta. 
     move takvim2-anah       to fiyat-tarih. 
     move rez-tipi          to fiyat-rez-tipi. 
     move rez-pan-tipi      to fiyat-pan-tipi. 
     move rez-banka         to fiyat-banka. 
     move rez-doviz         to fiyat-doviz. 
     move rez-anlasma       to fiyat-anlasma. 
     move rez-buyuk         to fiyat-buyuk.
     move rez-kucuk         to fiyat-kucuk.
     read fiyat no lock invalid
          go fiyat-bulundu.
     move fiyat-acenta    to fiyatana-acenta. 
     move fiyat-bas-tarih to fiyatana-ilk-tarih.
     move fiyat-bit-tarih to fiyatana-son-tarih.
     move fiyat-rez-tipi  to fiyatana-rez-tipi. 
     move fiyat-pan-tipi  to fiyatana-pan-tipi. 
     move fiyat-banka     to fiyatana-banka. 
     move fiyat-doviz     to fiyatana-doviz. 
     move fiyat-anlasma   to fiyatana-anlasma. 
     move fiyat-buyuk     to fiyatana-buyuk.
     move fiyat-kucuk     to fiyatana-kucuk.
     read fiyatana no lock invalid 
          go fiyat-bulundu.

     move fiyatana-oda-fiyati(rez-oda-konumu) to oda-fiyati. 

     if rez-fiyat-konumu not = spaces and
        rez-fiyat-konumu not = zeroes
        move fiyatana-oda-fiyati(rez-fiyat-konumu) to oda-fiyati 
     end-if

*/********* 
       if rez-nor-indirim not = 0 
       compute oda-fiyati rounded = 
              (((oda-fiyati * rez-nor-indirim) / 100) - oda-fiyati)
       end-if.
*/Early booking orani var ve early booking uygulanacak ise 
     if rez-eb = "E" and fiyatana-eb-oran not = 0 
     compute oda-fiyati rounded = 
            (((oda-fiyati * (fiyatana-eb-oran + (fiyatana-eb-kusur / 100)) / 100) - oda-fiyati))
     end-if. 

     if rez-ug-ind = 1 and fiyatana-ug-oran not = 0 
      
     compute oda-fiyati rounded = 
            (((oda-fiyati * (fiyatana-ug-oran + (fiyatana-ug-kusur / 100)) / 100) - oda-fiyati))
     end-if. 
      if rez-ozel-durum-car > 0
       
       compute oda-fiyati rounded = 
              (oda-fiyati * rez-ozel-durum-car) / 100
       end-if.

*/Kick back
     
     if fiyatana-kick-back not = 0 
     compute oda-fiyati rounded = 
            (((oda-fiyati * fiyatana-kick-back) / 1000) - oda-fiyati)
     end-if. 
      if fiyatana-kick-back2 <> 0
       compute oda-fiyati rounded = 
              (((oda-fiyati * fiyatana-kick-back2) / 1000) - oda-fiyati)
       end-if.
      
 aksiyonlu-uyar. 
*     if rez-eb = "E" and fiyatana-eb-oran not = 0 
*        and eb-de-aksiyon-hesaplama = 1
*        set aksiyon-yok to true
*     end-if

     if rez-aksiyon-eh = "H" 
        set aksiyon-yok to true
     else
        if rez-eb = "E" and fiyatana-eb-oran not = 0 
           and eb-de-aksiyon-hesaplama = 1
           set aksiyon-yok to true
        end-if
     end-if

     if aksiyon-var
        
       
        if aksiyhrk-sondan not = 1 then 
          compute oda-fiyati rounded = ((oda-fiyati * aksiyhrk-ode) / aksiyhrk-gecele)
           
          end-if   
        end-if
        
        
        if rez-special-eh = 1 
        set special-yok to true
        initialize special-tahsil
*     else
*        if rez-eb = "E" and fiyatana-eb-oran not = 0
*           set aksiyon-yok to true
*        end-if
     end-if
       
     if special-var
         compute oda-fiyati rounded = oda-fiyati - 
         ((special-tahsil) * rez-buyuk / special-gece)
      
     end-if

         
*****if oda-fiyati <> rez-fiyati 
        move oda-fiyati  to ilk-rez-fiyati.
 aksiyonlu-uyar-exit. 
     exit. 

 fiyat-bulundu. 
 fiyat-bul-exit. 
     exit.     
*
 basilan-bul. 
    move "A" to kodlar02-tipi.
    move rez-pan-tipi   to kodlar02-kodu.
    read kodlar02 no lock invalid
         move spaces to kodlar02-adi
    end-read
        initialize fiyatt-fiy(jj)   
         move rez-folio    to romhrk-folio.
        
         move  fiyatt-tar(jj)   to romhrk-tarih.
         start romhrk key not < romhrk-anah1 
               invalid go basilan-bul-exit.
 basilan-oku. 
         read romhrk next no lock end 
              go basilan-bul-exit.
         if fs-romhrk = 99 go basilan-oku.
         if romhrk-tarih > fiyatt-tar(jj) go basilan-bul-exit.
         if romhrk-folio not = rez-folio go basilan-bul-exit.
         evaluate true 
          when pan-oda         = "X" and oda-dep      = romhrk-depkod
               compute fiyatt-fiy(jj)      = 
                       fiyatt-fiy(jj) + romhrk-tl-tutar
          when pan-kahvalti    = "X" and kahvalti-dep = romhrk-depkod
               compute fiyatt-fiy(jj) = 
                       fiyatt-fiy(jj) + romhrk-tl-tutar
          when pan-ogle        = "X" and ogle-dep     = romhrk-depkod
               compute fiyatt-fiy(jj)    = 
                       fiyatt-fiy(jj)    + romhrk-tl-tutar
          when pan-aksam       = "X" and aksam-dep    = romhrk-depkod
               compute fiyatt-fiy(jj)    = 
                       fiyatt-fiy(jj)   + romhrk-tl-tutar
          when pan-icecek      = "X" and icecek-dep   = romhrk-depkod
               compute fiyatt-fiy(jj)  = 
                       fiyatt-fiy(jj)  + romhrk-tl-tutar
          when pan-extra       = "X" and extra-dep    = romhrk-depkod
               compute fiyatt-fiy(jj)    = 
                       fiyatt-fiy(jj)    + romhrk-tl-tutar
         end-evaluate. 
              go basilan-oku.
 basilan-bul-exit. 
        exit.

                                
