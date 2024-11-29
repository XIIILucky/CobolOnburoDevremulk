*
 break-mami.
     
       initialize break-bulundu break-rec
*       if cast-break-kodu not = spaces
*           initialize break-rec
*          move cast-break-kodu to break-kodu
*          move rez-doviz       to break-doviz-kodu   
*         read break no lock invalid continue
*            not invalid 
*              move 1 to break-bulundu
*         end-read
*       end-if
      
        if break-bulundu = 0 then 
           if REZ-GRUP-NO > 0 then 
                  initialize break-rec
                  move rez-pan-tipi to  break-kodu(7:2)
                  move REZ-GRUP-NO to break-kodu(1:6)
                  move rez-doviz       to break-doviz-kodu   
                  read break no lock invalid 
                      continue
                  not invalid 
                       move 1 to break-bulundu
                  end-read
           end-if
        end-if
        if break-bulundu = 0 then
         
                  initialize break-rec
                  move high-values   to break-anah
                  move rez-pan-tipi  to  break-kodu(7:2)
                  move REZ-acenta    to break-kodu(1:4)
                  move rez-doviz     to break-doviz-kodu   
                  read break no lock invalid 
                       continue
                  not invalid 
                       move 1 to break-bulundu
                  end-read
           
        end-if
        if break-bulundu = 0 then 
                  initialize break-rec
                  move high-values   to break-anah
                  move rez-pan-tipi  to  break-kodu(7:2)
                  move REZ-acenta    to break-kodu(1:4)
                  move rez-doviz     to break-doviz-kodu   
                 read break no lock invalid 
                     continue
                 not invalid 
                      move 1 to break-bulundu
                 end-read
           
       end-if
         if break-bulundu = 0 then 
                 initialize break-rec
                 move high-values to break-anah
                 move rez-pan-tipi to  break-kodu(7:2)
                 move rez-doviz       to break-doviz-kodu   
                 read break no lock invalid continue
                    not invalid 
                      move 1 to break-bulundu
                 end-read           
       end-if
*       if hisaktardan-geldi = 1 and break-bulundu = 0
*                   initialize break-rec
*                 move high-values to break-anah
*                 move rez-pan-tipi to  break-kodu(7:2)
*                 move "02"       to break-doviz-kodu   
*                 read break no lock invalid continue
*                    not invalid 
*                      move 1 to break-bulundu
*                 end-read       
*
*       end-if 
       if hisaktardan-geldi = 1 
          if cast-tarih <= tarih-tasi then 
            move cast-basilan-fiyat to toplam-ayrilacak-doviz
         else
            move cast-fiyati to toplam-ayrilacak-doviz
         end-if
       
       else
        if cast-tarih < tarih-tasi then 
            move cast-basilan-fiyat to toplam-ayrilacak-doviz
         else
            move cast-fiyati to toplam-ayrilacak-doviz
         end-if
       end-if
           move  cast-duzeltme   to  toplam-ayrilacak-doviz-break
         move  toplam-ayrilacak-doviz to  kalan-ayrilacak-doviz
          move  toplam-ayrilacak-doviz-break to  kalan-ayrilacak-doviz-break
        
         initialize cast-break  cast-duzeltme-break
         perform varying break-sira 
                from 1 
                by 1 
                until break-sira > 15
                  initialize tek-break
                    if break-mlz-kodu(break-sira) not = spaces then 
                       move  break-mlz-kodu(break-sira) to cast-br-malzeme-kodu( break-sira + 1 )
                        evaluate break-hes-tipi(break-sira)
                        when "S" 
                          compute 
                          cast-br-malzeme-tut( break-sira + 1 ) rounded = break-tutar(break-sira)  * ( cast-buyuk + cast-kucuk )
**                        compute  tek-break rounded = break-tutar(break-sira)  * ( cast-buyuk + cast-kucuk )
                        when "T"                          
                          compute 
                          cast-br-malzeme-tut( break-sira + 1 ) rounded = break-tutar(break-sira) 
****                           compute tek-break rounded = break-tutar(break-sira)  
                        when "O"
                           compute 
                           cast-br-malzeme-tut( break-sira + 1 ) rounded = break-tutar(break-sira)  * toplam-ayrilacak-doviz / 100
*****                         compute  tek-break rounded = break-tutar(break-sira)  * toplam-ayrilacak-doviz-break / 100
                        when "K" 
                            compute 
                            cast-br-malzeme-tut( break-sira + 1 ) rounded = break-tutar(break-sira)  * kalan-ayrilacak-doviz / 100 
******                           compute  tek-break rounded = break-tutar(break-sira)  * kalan-ayrilacak-doviz-break / 100 
                        end-evaluate
                        if toplam-ayrilacak-doviz not < 0 then 
                        if function abs(cast-br-malzeme-tut( break-sira + 1 ))  >= function abs(kalan-ayrilacak-doviz) then 
                           compute cast-br-malzeme-tut( break-sira + 1 ) rounded =  kalan-ayrilacak-doviz 
                          
                        end-if
                        end-if
                         if toplam-ayrilacak-doviz-break not < 0 then 
                        if function abs(tek-break)  >= function abs(kalan-ayrilacak-doviz-break) then 
                           compute tek-break rounded =  kalan-ayrilacak-doviz-break 
                          
                        end-if
                        end-if
                        subtract cast-br-malzeme-tut( break-sira + 1 ) from  kalan-ayrilacak-doviz  
                         subtract tek-break from  kalan-ayrilacak-doviz-break     
                    end-if
        end-perform
        move kalan-ayrilacak-doviz to cast-br-malzeme-tut(1)
        if toplam-ayrilacak-doviz-break   not = 0 
            move kalan-ayrilacak-doviz-break to  cast-duzeltme-break
        end-if
               .
