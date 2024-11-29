* 
 ref-filtre.
     if rapor-ref2-kullan = 1 and xkonum2-okundu not = 1 
        perform konum2-alt-oku
     end-if
     perform odaref-after
     perform fiyatref-after
            perform external-ata
     if oda-ref = 0 and   fiyat-ref = 0 then
       move 1 to ref-filtre-sonuc
       exit paragraph
     end-if
     evaluate onkpara-referans-nerden 
         when 2
              if casttan = 1 then 
                 move cast-oda-no   to rez-odano
              end-if
              move rez-odano to odalar-anah
              read odalar no lock invalid
                   move 1 to  odalar-referans
              not invalid 
                  if odalar-referans < 1 then  
                     move 1 to odalar-referans
                  end-if
              end-read
              if (odalar-referans = oda-ref or oda-ref = 0) and
                 (odalar-referans = fiyat-ref or fiyat-ref = 0) then
                 move 1 to ref-filtre-sonuc
              else
                 move 0 to ref-filtre-sonuc
              end-if
          
         when other
              if casttan = 1 then 
                 move cast-oda-konumu   to rez-oda-konumu
                 move cast-fiyat-konumu to rez-fiyat-konumu
              end-if
              if rez-oda-konumu = 0 then 
                 move 1 to rez-oda-konumu
              end-if

              if rez-fiyat-konumu = 0 then 
                 move 1 to rez-fiyat-konumu
              end-if
              perform birlesikkont

          if rapor-ref2-kullan = 1 
              if (xkonum2-ref(rez-oda-konumu) = oda-ref or oda-ref = 0 or birodagec = 1 ) and
                 (xkonum2-ref(rez-fiyat-konumu) = fiyat-ref or fiyat-ref = 0 or birfiygec = 1 ) then
                 move 1 to ref-filtre-sonuc
              else
                 move 0 to ref-filtre-sonuc
              end-if
          else
              if (xkonum-ref(rez-oda-konumu) = oda-ref or oda-ref = 0 or birodagec = 1 ) and
                 (xkonum-ref(rez-fiyat-konumu) = fiyat-ref or fiyat-ref = 0 or birfiygec = 1 ) then
                 move 1 to ref-filtre-sonuc
              else
                 move 0 to ref-filtre-sonuc
              end-if
          end-if
        end-evaluate.
*
 birlesikkont.
      initialize birodagec 
      if oda-ref > max-ref and 
         birlesref-text(oda-ref) > spaces
         if birlesreftek(oda-ref,1) = xkonum-ref(rez-oda-konumu) or 
            birlesreftek(oda-ref,2) = xkonum-ref(rez-oda-konumu) or 
            birlesreftek(oda-ref,3) = xkonum-ref(rez-oda-konumu) or 
            birlesreftek(oda-ref,4) = xkonum-ref(rez-oda-konumu) or 
            birlesreftek(oda-ref,5) = xkonum-ref(rez-oda-konumu) 
             move 1 to birodagec 
         end-if
      end-if .

      initialize birfiygec 
      if fiyat-ref > max-ref and 
         birlesref-text(fiyat-ref) > spaces
         if birlesreftek(fiyat-ref,1) = xkonum-ref(rez-fiyat-konumu) or 
            birlesreftek(fiyat-ref,2) = xkonum-ref(rez-fiyat-konumu) or 
            birlesreftek(fiyat-ref,3) = xkonum-ref(rez-fiyat-konumu) or 
            birlesreftek(fiyat-ref,4) = xkonum-ref(rez-fiyat-konumu) or 
            birlesreftek(fiyat-ref,5) = xkonum-ref(rez-fiyat-konumu) 
            move 1 to birfiygec 
         end-if
      end-if .
*
 fiyatref-after.
    perform external-ata

    if fiyat-ref> 0
       if fiyat-ref <= max-ref then
          move ref-adi(fiyat-ref)  to satis-ref-adi
       else
          if birlesref-text(fiyat-ref) > spaces 
             move birlesref-text(fiyat-ref)  to satis-ref-adi
          else
             move "????????? "  to satis-ref-adi
          end-if
       end-if
     else 
       move "Tumu "  to satis-ref-adi
     end-if
     display lb-sat
     .
*
 odaref-after.
     perform external-ata
     if hangi-ref-secildi > 0
        if hangi-ref-secildi not = oda-ref
           move hangi-ref-secildi  to oda-ref
           display oda-ref-acc
        end-if 
     end-if 
     if oda-ref > 0
        if oda-ref <= max-ref then
           move ref-adi(oda-ref)  to oda-ref-adi
        else
           if birlesref-text(oda-ref) > spaces 
              move birlesref-text(oda-ref)  to oda-ref-adi
           else
              move "????????? "  to oda-ref-adi
           end-if
        end-if
     else 
        move "Tumu "  to oda-ref-adi
     end-if
     display lb-oda
     .
*
 external-ata.
     initialize fiyat-ref-external oda-ref-external
     if hangi-ref-secildi > 0
        move hangi-ref-secildi to oda-ref-external fiyat-ref-external
     else
        move oda-ref    to oda-ref-external
        move fiyat-ref  to fiyat-ref-external
     end-if .
*
 birlesik-ref-bul.
     open input kodlar02
     initialize   kodlar02-rec  birlesref
     move "r"       to kodlar02-tipi
     start kodlar02 key > kodlar02-anah invalid 
           continue
     not invalid 
     perform until fs-kodlar02 = "10" 
     read kodlar02 next no lock end move "10" to fs-kodlar02
     not end 
         if kodlar02-tipi = "r" 
            if function numval(kodlar02-ref-dahil(1:1)) > max-ref
               move function numval(kodlar02-ref-dahil(1:1)) to bug-ref
               perform varying gi from 1 by 1 until gi > 9
                  if birlesreftek(bug-ref, gi) > 0 then 
                     continue
                  else
                     move function numval(kodlar02-kodu)  to birlesreftek(bug-ref, gi)
                     string birlesref-text(bug-ref) delimited by "    "
                            "+"                     delimited by size 
                            kodlar02-adi(1:3)       delimited by size
                       into birlesref-text(bug-ref)
                     move 99 to gi
                  end-if 
            end-if
         else
            move "10" to fs-kodlar02
         end-if
      end-read
      end-perform
      end-start
      close kodlar02.
     . 
*
 hazir-bul-ref.
      if fiyat-ref > max-ref then 
      initialize  takvim-hazir-oda  takvim-hazir-yatak
      perform varying gi from 1 by 1 until gi > 5
        if birlesreftek(fiyat-ref, gi) > 0 then 
           move  birlesreftek(fiyat-ref,gi)      to bug-ref
           add takvim-ref-hazir-oda (bug-ref)    to takvim-hazir-oda 
           add takvim-ref-hazir-yatak(bug-ref)   to takvim-hazir-yatak
        end-if
      end-perform     
      end-if
      if oda-ref > max-ref then 
         initialize  takvim-hazir-oda 
         perform varying gi from 1 by 1 until gi > 5
            if birlesreftek(oda-ref,gi) > 0 then 
               move birlesreftek(oda-ref, gi)        to bug-ref
                add takvim-ref-hazir-oda (bug-ref)   to takvim-hazir-oda 
                add takvim-ref-hazir-yatak (bug-ref) to takvim-hazir-yatak 
            end-if
         end-perform    
      end-if .                      
*
 hazir-bul-alt2.
      initialize bug-ref
      move fiyat-ref  to bug-ref
      if bug-ref <= 0   
         move oda-ref  to bug-ref   
      end-if
      if bug-ref > 0
         initialize takvim-hazir-oda takvim-ref-hazir-oda(bug-ref) 
                    takvim-hazir-yatak takvim-ref-hazir-yatak (bug-ref)
         
         initialize kodlar02-rec 
         move "r" to kodlar02-tipi
         start kodlar02 key not < kodlar02-anah invalid
               continue
         not invalid
         perform with test after until fs-kodlar02 = "10" 
         read kodlar02 next no lock end move "10" to fs-kodlar02
         not at end
             if kodlar02-tipi <> "r" 
                exit perform
             end-if

            move kodlar02-ref-dahil(1:1) to konum-sanal-ref  
            move kodlar02-kodu(2:1)      to konum-gercek-ref  
            if konum-sanal-ref = bug-ref
               add takvim-ref-hazir-oda (konum-gercek-ref)   to takvim-hazir-oda                     
               add takvim-ref-hazir-yatak (konum-gercek-ref) to takvim-hazir-yatak
            end-if

         end-read 
         end-perform 
         end-start 

*         perform varying gi from 1 by 1 until gi > 40
*            initialize kodlar02-rec 
*            move "r"             to kodlar02-tipi 
*            move "0"             to kodlar02-kodu(1:)
*            move xkonum2-ref(gi) to kodlar02-kodu(2:)
*            read kodlar02 no lock invalid
*                 continue
*            end-read  
*
*            move kodlar02-ref-dahil(1:1) to konum-sanal-ref    

*            if xkonum2-ref(gi) = bug-ref then 
*            if  konum-sanal-ref = bug-ref 
*               add xkonum2-oda(gi)   to takvim-hazir-oda
*            end-if

*         end-perform 
      end-if
         
         .

          
*
*/
 konum2-alt-oku.
     initialize konum-rec
     start konum key > konum-anahtar 
         invalid 
           continue
         not invalid
           perform until fs-konum  = "10"
             read konum next no lock 
                 end move "10" to fs-konum
                 not end 
                  initialize konumek-rec 
                  move konum-anahtar to konumek-anahtar 
                  read konumek no lock invalid continue end-read 
                  if hangi-ref-secildi > 0
                     if konum-ref not = hangi-ref-secildi
                        exit perform cycle 
                     end-if 
                     move konum-adi to xkonum2-adi(konum-anahtar)
                     if konumek-rapor-ref <> 0
                        move konumek-rapor-ref to xkonum2-ref(konum-anahtar)
                     else
                        move konum-ref to xkonum2-ref(konum-anahtar)
                     end-if
                     if konum-adi not = spaces 
                        move  konum-anahtar to max-konum
                     end-if
                  else
                     move konum-adi            to xkonum2-adi(konum-anahtar)
                     move konum-top-oda        to xkonum2-oda(konum-anahtar)
                     if konumek-rapor-ref <> 0 and spaces
                        move konumek-rapor-ref to xkonum2-ref(konum-anahtar)
                     else
                        move konum-ref         to xkonum2-ref(konum-anahtar)
                     end-if
                     move konum-tutar-sira     to xkonum2-tutar-sira(konum-anahtar)
                     if konum-adi not = spaces 
                        move konum-anahtar     to max-konum
                     end-if
                  end-if 
             end-read
           end-perform 
      end-start.
      

