* 
*
 blok-satilan-bul.
        move blok-kodu to son-grup-takas
        if son-grup-takas not > 0 then 
          exit paragraph
        end-if
        initialize arez-rec fs-arez acast-rec fs-acast
        
        move son-grup-takas to acast-grup
        move low-values to acast-share
        start acast key >= acast-anah7 invalid continue
            not invalid 
            perform until fs-acast = "10"
              read acast next no lock
                 end move "10" to fs-acast
                 not end
                  if son-grup-takas not =  acast-grup
                      exit perform
                      else
                      if acast-tarih < tarih-tasi and grup-no-show-dahil not = 1  then 
                         exit perform cycle
                      end-if
                      if acast-tarih < takas-blok-bas-tar or
                         acast-tarih > takas-blok-bit-tar
                         exit perform cycle
                      end-if
                      
                      move acast-rez-no to arez-no
                      read arez no lock invalid 
                          stop " "
                      end-read
                      if arez-durumu = "I" and arez-cik-tar > acast-tarih 
                      
                            perform arez-dus
                      end-if  
                  end-if
              end-read
            end-perform 
        end-start
    

        move  son-grup-takas to takas-blok-kodu 


             . 
*
 esitlemeler.
      
     

       initialize takas-blok-rec  fs-takas-blok
            start takas-blok key > takas-blok-anahtar invalid  continue
               not invalid 
               perform until fs-takas-blok = "10" 
                 read takas-blok next no lock
                       end 
                          move "10" to fs-takas-blok
                        not end
                      
                             move takas-blok-kodu to gruplar-kodu  son-grup-takas
                              read gruplar no lock invalid stop " "
                              end-read
                              if gruplar-kalanlar-double = 1
                                      perform konum-esitle
                              end-if
                               if gruplar-giris-bul = 1 and gruplar-grup-statu ="4"
                                      perform girenler-bul
                              end-if 
                              move high-values to takas-blok-rec
                              move gruplar-kodu to takas-blok-kodu
                            initialize fs-takas-blok
                            start takas-blok key > takas-blok-anahtar 
                               invalid  
                               move "10" to fs-takas-blok
                            end-start
                  end-read
               end-perform
            end-start.

          .

*
*
 girenler-bul.
            initialize g-bul-gun-sayisi
                      takvim2-rec fs-takvim2
                     move gruplar-gel-tar   to takvim2-anah
                     start takvim2 key not < takvim2-anah
                           invalid
                                move 1 to g-bul-gun-sayisi
                     not invalid
                     initialize fs-takvim2
                     perform with test after until fs-takvim2 = "10"
                     read takvim2 next no lock end move "10" to fs-takvim2
                     not at end
                          if takvim2-anah not = gruplar-gel-tar
                             move "10" to fs-takvim2
                             exit perform cycle
                          end-if
                          if takvim2-anah = gruplar-gel-tar
                            
                            perform varying eksiler-toplam   from 1 by 1 until  eksiler-toplam > 38
                                perform tek-gun-girisle
                           end-perform
                               
                          else
                             move "10" to fs-takvim2
                          end-if
                     end-read
                     end-perform
                     end-start.

*
*
 tek-gun-girisle.

      
        initialize  artilar-toplam takas-blok-rec fs-takas-blok duzeltilecek-toplam
        move  son-grup-takas to takas-blok-kodu
        move takvim2-anah to takas-blok-tarih
        start takas-blok key >= takas-blok-anahtar
            invalid continue
            not invalid 
              perform until fs-takas-blok = "10"
                 read takas-blok next no lock 
                     end move "10" to fs-takas-blok
                     not end 
                       if takas-blok-kodu not = son-grup-takas
                       
                           move "10" to fs-takas-blok
                       else
                        if function numval(takas-blok-konum) not =  eksiler-toplam
                          exit perform cycle
                         end-if
                            compute tek-konum-kalan = takas-blok-ayrilan-oda - takas-blok-satilan-oda 
                            if tek-konum-kalan > 0
                             if  artilar-toplam < tek-konum-kalan 
                              compute takas-blok-gir-oda = tek-konum-kalan - artilar-toplam
                              if     takas-blok-ayrilan-pax - takas-blok-satilan-pax   > 0
                              if     duzeltilecek-toplam <   takas-blok-ayrilan-pax - takas-blok-satilan-pax
                               compute takas-blok-gir-pax = duzeltilecek-toplam -(takas-blok-ayrilan-pax - takas-blok-satilan-pax )
                               end-if
                                end-if
                               | if takas-blok-gir-oda < 0 stop " " end-if
                               |  if takas-blok-gir-oda < 0 stop takas-blok-kodu end-if
                                move 0 to takas-blok-cik-oda
                              else
                                compute takas-blok-cik-oda =  artilar-toplam  - tek-konum-kalan
                                move 0 to takas-blok-gir-oda
                              end-if
                            end-if
                       if  tek-konum-kalan > 0 then   
                          move   tek-konum-kalan to artilar-toplam
                          if  takas-blok-ayrilan-pax - takas-blok-satilan-pax  > 0
                          compute  duzeltilecek-toplam  =    takas-blok-ayrilan-pax - takas-blok-satilan-pax
                          else
                             move 0 to duzeltilecek-toplam
                          end-if
                          else
                          move 0 to artilar-toplam duzeltilecek-toplam
                       end-if
                       


                            rewrite takas-blok-rec invalid stop " " end-rewrite
                       end-if



                  end-read
              end-perform
        end-start.
*
 konum-esitle.
            initialize g-bul-gun-sayisi
                      takvim2-rec fs-takvim2
                     move gruplar-gel-tar   to takvim2-anah
                     start takvim2 key not < takvim2-anah
                           invalid
                                move 1 to g-bul-gun-sayisi
                     not invalid
                     initialize fs-takvim2
                     perform with test after until fs-takvim2 = "10"
                     read takvim2 next no lock end move "10" to fs-takvim2
                     not at end
                          if takvim2-anah = gruplar-git-tar
                             move "10" to fs-takvim2
                             exit perform cycle
                          end-if
                          if takvim2-anah not > gruplar-git-tar 
                               perform tek-gun-esitle                                            
                          else
                             move "10" to fs-takvim2
                          end-if
                     end-read
                     end-perform
                     end-start.










*********************************************************



*
 tek-gun-esitle.
      
        initialize eksiler-toplam artilar-toplam takas-blok-rec fs-takas-blok duzeltilecek-toplam
        move  son-grup-takas to takas-blok-kodu
        move takvim2-anah to takas-blok-tarih
        start takas-blok key >= takas-blok-anahtar
            invalid continue
            not invalid 
              perform until fs-takas-blok = "10"
                 read takas-blok next no lock 
                     end move "10" to fs-takas-blok
                     not end   
                        if takas-blok-kodu not = son-grup-takas
                        or  takvim2-anah not =  takas-blok-tarih
                           move "10" to fs-takas-blok
                           else                                  
                            compute tek-konum-kalan = takas-blok-ayrilan-oda - takas-blok-satilan-oda 
                           if tek-konum-kalan < 0 then 
                                compute eksiler-toplam = eksiler-toplam - tek-konum-kalan
                                 else
                                compute artilar-toplam = artilar-toplam + tek-konum-kalan
                           end-if
                          end-if



                  end-read
              end-perform
        end-start
       
        if eksiler-toplam > artilar-toplam
           move artilar-toplam to duzeltilecek-toplam
           else
           move eksiler-toplam to duzeltilecek-toplam
        end-if
        if duzeltilecek-toplam > 0 then 
               move duzeltilecek-toplam to eksiler-toplam artilar-toplam
               initialize  takas-blok-rec fs-takas-blok
                move  son-grup-takas to takas-blok-kodu
                move takvim2-anah to takas-blok-tarih
                start takas-blok key >= takas-blok-anahtar
                    invalid continue
                    not invalid 
                      perform until fs-takas-blok = "10" 
                         read takas-blok next no lock 
                             end move "10" to fs-takas-blok
                             not end 
                                if takas-blok-kodu not = son-grup-takas
                                or  takvim2-anah not =  takas-blok-tarih
                                  if eksiler-toplam = 0 and artilar-toplam = 0 then continue
                                  
                                    else
                                    stop " " 
                                  
                                  end-if
                                   move "10" to fs-takas-blok
                                   else
                                     if eksiler-toplam = 0 and artilar-toplam = 0 then exit perform  end-if
                                    compute tek-konum-kalan = takas-blok-ayrilan-oda - takas-blok-satilan-oda 
                                   if tek-konum-kalan < 0 then
                                        if eksiler-toplam = 0 then exit perform cycle end-if
                                        if eksiler-toplam > (tek-konum-kalan * -1)
                                           add tek-konum-kalan to eksiler-toplam
                                           compute takas-blok-ayrilan-oda = takas-blok-satilan-oda
                                           rewrite takas-blok-rec invalid stop " " end-rewrite
                                       
                                         else
                                            compute takas-blok-ayrilan-oda = takas-blok-ayrilan-oda + eksiler-toplam 
                                           move 0 to eksiler-toplam
                                            rewrite takas-blok-rec invalid stop " " end-rewrite

                                        end-if
                                     else
                                       if artilar-toplam = 0 then exit perform cycle end-if
                                       if artilar-toplam >  tek-konum-kalan 
                                           subtract  tek-konum-kalan from  artilar-toplam
                                           compute takas-blok-ayrilan-oda = takas-blok-satilan-oda
                                           rewrite takas-blok-rec invalid stop " " end-rewrite
                                       
                                         else
                                            compute takas-blok-ayrilan-oda = takas-blok-ayrilan-oda - artilar-toplam
                                            move 0 to artilar-toplam
                                            rewrite takas-blok-rec invalid stop " " end-rewrite

                                        end-if


                                   end-if
                                  end-if
        
        
        
                          end-read
                      end-perform
                end-start






        end-if
          .                                                                       
*
 arez-dus.
         initialize takas-blok-rec
          move acast-grup to takas-blok-kodu    
          move acast-tarih to takas-blok-tarih
           if takas-blok-konumlu = 1 then      
             move acast-fiyat-konumu to takas-blok-konum
           end-if
*****             if blok-kodu = 219 and takas-blok-konum = "08" then stop " " end-if
          read takas-blok no lock invalid 
               continue
          end-read 
                if acast-share not = 1 then 
                        add 1 to takas-blok-satilan-oda
                 end-if.
                   add acast-buyuk to takas-blok-satilan-pax
                   add acast-kucuk to takas-blok-satilan-child
                   add acast-fiyati to takas-blok-satilan-tutar
            compute takas-blok-kalan-oda = takas-blok-ayrilan-oda - takas-blok-satilan-oda 
                  compute takas-blok-kalan-pax = takas-blok-ayrilan-pax - takas-blok-satilan-pax
        write takas-blok-rec invalid rewrite takas-blok-rec end-write.    
*
 grup-takas-al.  
     open i-o genelfis
     move 1 to genelfis-anahtar
     read genelfis no lock
       invalid 
         move 1 to ekran-fis-1,
     end-read
     
     add 1 to ekran-fis-1

     rewrite genelfis-rec
       invalid 
         write genelfis-rec
           invalid
             continue
         end-write
     end-rewrite
     close genelfis
     open input blok arez  acast break
       move k-kodu-tasi to takas-blok-k
       move ekran-fis-1(2:3) to takas-blok-no
       open output takas-blok close takas-blok open i-o takas-blok
       initialize  blok-rec
        move 0 to blok-satilan-bulunacak
        move 0 to bulunan-takas-kodu
      
        start blok key >= blok-anahtar invalid continue
           not invalid
            perform until fs-blok= "10"
                read blok next  no lock 
                end move "10" to fs-blok
                not end  
                    if tek-grup > 0 then 
                        if tek-grup not = blok-kodu
                           exit perform cycle
                        end-if

                    else
                    if blok-durumu = "I" or "S" 
                         then
                         exit perform cycle
                    end-if
                    end-if
                    if blok-tarih > takas-blok-bit-tar 
                      exit perform cycle
                    end-if
                    if blok-tarih <  takas-blok-bas-tar
                        exit perform cycle
                    end-if
                     if blok-tarih <  tarih-tasi and grup-no-show-dahil not = 1
                        exit perform cycle
                    end-if
                   
                   move 1 to blok-satilan-bulunacak 
                   if blok-kodu not = bulunan-takas-kodu   then 

                       perform blok-satilan-bul
                       move 0 to blok-satilan-bulunacak
                       move  blok-kodu to bulunan-takas-kodu
                    end-if
                    
                   if takas-blok-konumlu = 1 then                         
                      initialize takas-blok-rec
                      move blok-anahtar to takas-blok-anahtar
                      move blok-konum to takas-blok-konum
                      read takas-blok no lock invalid 
                          continue
                      end-read
                      add   blok-ayrilan-oda     to  takas-blok-ayrilan-oda   
                      add   blok-ayrilan-pax     to  takas-blok-ayrilan-pax   
                      add   blok-ayrilan-child   to  takas-blok-ayrilan-child 
                      add   blok-ayrilan-free    to  takas-blok-ayrilan-free  
                      add   blok-ayrilan-tutar   to  takas-blok-ayrilan-tutar   
                      compute takas-blok-kalan-oda = takas-blok-ayrilan-oda - takas-blok-satilan-oda
                      compute takas-blok-kalan-pax = takas-blok-ayrilan-pax - takas-blok-satilan-pax
                      write takas-blok-rec invalid  rewrite takas-blok-rec end-write                      
                 else
                      initialize takas-blok-rec
                      move  blok-ANAHTAR to takas-blok-anahtar
                      initialize takas-blok-konum
                      read takas-blok no lock invalid continue
                      end-read
                      add   blok-ayrilan-oda     to  takas-blok-ayrilan-oda   
                      add   blok-ayrilan-pax     to  takas-blok-ayrilan-pax   
                      add   blok-ayrilan-child   to  takas-blok-ayrilan-child 
                      add   blok-ayrilan-free    to  takas-blok-ayrilan-free  
                      add   blok-ayrilan-tutar   to  takas-blok-ayrilan-tutar   
                      compute takas-blok-kalan-oda = takas-blok-ayrilan-oda - takas-blok-satilan-oda
                      compute takas-blok-kalan-pax = takas-blok-ayrilan-pax - takas-blok-satilan-pax
                      write takas-blok-rec invalid  rewrite takas-blok-rec end-write
                 end-if
                   
                   
                end-read
            end-perform
                

         end-start
         perform esitlemeler
         if takas-blok-fiyatli = 1 then  
              perform grup-kalan-fiyat-bul

         end-if
   
       close takas-blok blok arez acast break .

*
 grup-kalan-fiyat-bul.
        initialize takas-blok-rec
            start takas-blok key > takas-blok-anahtar invalid  continue
               not invalid 
               perform until fs-takas-blok = "10" 
                 read takas-blok next no lock end move "10" to fs-takas-blok
                    not end
                       if takas-blok-tarih < tarih-tasi and grup-no-show-dahil not = 1
                          exit perform cycle
                       end-if
                             move takas-blok-kodu to gruplar-kodu
                              read gruplar no lock invalid stop " "
                              end-read
                              if filtre-var = 1 then 
                                   perform gfiltre
                                if filtre-gecti = 1 then 
                                   perform  tek-grup-fiyat
                                       compute takas-blok-kalan-oda = takas-blok-ayrilan-oda - takas-blok-satilan-oda
                                             compute takas-blok-kalan-pax = takas-blok-ayrilan-pax - takas-blok-satilan-pax
                                      rewrite takas-blok-rec invalid stop " " end-rewrite
                                end-if
                                    else
                                 perform  tek-grup-fiyat
                                     compute takas-blok-kalan-oda = takas-blok-ayrilan-oda - takas-blok-satilan-oda
                                           compute takas-blok-kalan-pax = takas-blok-ayrilan-pax - takas-blok-satilan-pax
                                 rewrite takas-blok-rec invalid stop " " end-rewrite
                            end-if
                           
                    
                  end-read
               end-perform
            end-start.




*
 tek-grup-fiyat.
        if  takas-blok-ayrilan-oda - takas-blok-satilan-oda > 0  
          compute takas-blok-kalan-oda = takas-blok-ayrilan-oda - takas-blok-satilan-oda
           else
           move 0 to  takas-blok-kalan-oda
        end-if
        
      
        if  takas-blok-ayrilan-pax - takas-blok-satilan-pax > 0
          compute takas-blok-kalan-pax = takas-blok-ayrilan-pax   - takas-blok-satilan-pax
          if takas-blok-kalan-oda = 0 then 
             move 0 to   takas-blok-kalan-pax
          end-if
          else
            move 0 to  takas-blok-kalan-pax
        end-if
        if   gruplar-kalanlar-double = 1 then 
             compute takas-blok-kalan-pax = takas-blok-kalan-oda * 2
        end-if
          initialize gd-sng-oda gd-sng-oda-f 
                     gd-dbl-oda gd-dbl-oda-f 
                     gd-trp-oda gd-trp-oda-f
          evaluate true
              when takas-blok-kalan-pax / takas-blok-kalan-oda >= 3 
                  move   takas-blok-kalan-oda to  gd-trp-oda   
                  perform trp-bul

              when takas-blok-kalan-pax / takas-blok-kalan-oda >= 2 and takas-blok-kalan-pax / takas-blok-kalan-oda < 3
                     compute gd-dbl-oda   =  ( takas-blok-kalan-oda * 3 ) - takas-blok-kalan-pax
                     compute gd-trp-oda   =   takas-blok-kalan-oda  -  gd-dbl-oda
                     perform trp-bul
                     perform dbl-bul
                 

              when takas-blok-kalan-pax / takas-blok-kalan-oda >= 1 and takas-blok-kalan-pax / takas-blok-kalan-oda < 2
                     compute gd-sng-oda   =  ( takas-blok-kalan-oda * 2 ) - takas-blok-kalan-pax
                     compute gd-dbl-oda   =   takas-blok-kalan-oda  -  gd-sng-oda
                       perform sng-bul
                     perform dbl-bul


              when takas-blok-kalan-pax / takas-blok-kalan-oda > 0 and takas-blok-kalan-pax / takas-blok-kalan-oda < 1 
                    move   takas-blok-kalan-oda to  gd-sng-oda      
                        perform sng-bul

              when takas-blok-kalan-pax / takas-blok-kalan-oda = 0
                move 0 to blok-kalan-tutar

          end-evaluate

           compute   takas-blok-kalan-tutar =  (gd-sng-oda *  gd-sng-oda-f) + 
                                               (gd-dbl-oda *  gd-dbl-oda-f) +
                                               (gd-trp-oda *  gd-trp-oda-f)

          compute takas-blok-ayrilan-tutar = takas-blok-satilan-tutar + takas-blok-kalan-tutar
                  .
********************                                         
           copy "break.cpy".
            .
*
 br-ortak.

         if sadece-oda-br  = 1 then 
         
            move xrez-fiyati to cast-fiyati 
            move 0 to hisaktardan-geldi
             move xrez-gir-tar to cast-tarih
             move xrez-rec to rez-rec
             perform break-mami
            move cast-br-malzeme-tut(1) to xrez-fiyati
           end-if

              .
*
 sng-bul  .
        perform grez-olussun
         move 1                  to xrez-buyuk
          perform ortak-gfhes.
          perform br-ortak
          
            move xrez-fiyati to gd-sng-oda-f
                  .

*
 dbl-bul  .
        perform grez-olussun
         move 2                  to xrez-buyuk
         perform ortak-gfhes.
          perform br-ortak
        move xrez-fiyati to gd-dbl-oda-f                  .


 trp-bul  .
       perform grez-olussun
        move 3                  to xrez-buyuk
         perform ortak-gfhes.
          perform br-ortak
        move xrez-fiyati to gd-trp-oda-f    
                  .
*
 ortak-gfhes.
                        initialize tum-wrk
                        initialize linkh-odahes
                        move rez-no to  linkh-rez-no     
                         move 7 to linkh-nereden  
                         move 0 to linkh-anl-yaz
                         move 0 to linkh-cast-yaz
                    
                    
                       perform fiyat
                      .
*
 grez-olussun.
             initialize xrez-rec
             move 1 to xrez-tipi
             move gruplar-kodu       to xrez-grup-no  
             move gruplar-adi        to xrez-grup-adi 
                                        xrez-adi(1:20) 
                                        xrez-soyadi(1:20)
             move gruplar-satis-tar  to xrez-al-tar
             move gruplar-firma      to xrez-firma  
             move gruplar-acenta     to xrez-acenta  
             move gruplar-banka      to xrez-banka  
             move gruplar-doviz      to xrez-doviz   
             move gruplar-pan-tipi   to xrez-pan-tipi  
             move gruplar-anlasma    to xrez-anlasma  
             move gruplar-odeme      to xrez-odeme-tipi  
             move gruplar-pazar      to xrez-pazar   
             move gruplar-ulke       to xrez-ulke  
             move takas-blok-tarih    to xrez-gir-tar   
             move takas-blok-tarih    to xrez-cik-tar  
             move gruplar-not1       to xrez-not1      
             move gruplar-not2       to xrez-not2     
             move 1                  to xrez-buyuk
             move 1                  to xrez-s-d-t-g
             move gruplar-kaynak-1    to xrez-kaynak-1
             move gruplar-kaynak-2    to xrez-kaynak-2
             move gruplar-kaynak-3    to xrez-kaynak-3
             move gruplar-kur        to xrez-cin-kuru
            
                  move takas-blok-konum  to xrez-oda-konumu 
                                             xrez-fiyat-konumu
            
                
            compute xrez-no = 99000000 + gruplar-kodu
            .

            



*
 gruplari-takasa-ekle.
     open input takas-blok 
    initialize takas-blok-rec
    start takas-blok key > takas-blok-anahtar invalid  continue
       not invalid 
       perform until fs-takas-blok = "10" 
         read takas-blok next no lock end move "10" to fs-takas-blok
            not end
               if takas-blok-tarih < tarih-tasi  and grup-no-show-dahil not = 1
                  exit perform cycle
               end-if

                     move takas-blok-kodu to gruplar-kodu
                      read gruplar no lock invalid 
                           display message box gruplar-kodu " kodlu grup bulunamadi"
                      end-read
                      if filtre-var = 1 then 
                           perform gfiltre
                        if filtre-gecti = 1 then 
                           perform gruplari-takasa-ekle2                          
                        end-if
                            else
                         perform gruplari-takasa-ekle2
                    end-if
                   
            
          end-read
       end-perform
    end-start.
    close  takas-blok  .



