*****
*
*
 link1.
      open input genel genel2
      initialize genel-rec 
      move 1 to genel-anahtar 
      read genel no lock invalid 
           continue
      end-read 
      initialize genel2-rec 
      move 1 to genel2-anah 
      read genel2 no lock invalid 
           continue 
      end-read
      close genel genel2

      initialize yanrez-rec arez-rec aceanlas-rec 
     move lnk-rez-no to arez-no 
    read arez no lock invalid
       display message box arez-no "bulunamadi"
    end-read
     if arez-rate-acenta = spaces 
        move arez-acenta to arez-rate-acenta
    end-if
    if lnk-rez-no = 20172386 and k-kodu-tasi = "ASYA" stop " " end-if   
    move low-values to aceanlas-anah
    move arez-rate-acenta   to aceanlas-acenta      
    move arez-anlasma  to aceanlas-anlasma
     move "DEFAULT" to  aranan-yassinir-kodu
    start aceanlas key > aceanlas-anah
       invalid  move "DEFAULT" to  aranan-yassinir-kodu
       
       not invalid 
        perform until fs-aceanlas = "10" 
          read aceanlas next no lock 
              end move "10" to fs-aceanlas
              not end 


                if arez-rate-acenta   = aceanlas-acenta and  
                   arez-anlasma  = aceanlas-anlasma

                   if genel2-aceanlas-referansli = 1    |||X firat ekleme 12/2/2021
                      if onkpara-referans-var = 1 
                         evaluate onkpara-referans-nerden
                             when 1 
                                  open input konum 
                                  initialize konum-rec 
                                  move arez-fiyat-konumu to konum-anahtar 
                                  read konum no lock invalid
                                       continue
                                  end-read 
                                  close konum
                                  if aceanlas-referans not = spaces and 
                                     aceanlas-referans > 0 
                                     if konum-ref not = aceanlas-referans
                                        exit perform cycle
                                     end-if
                                  end-if 
                             when 2
                                  open input odalar 
                                  initialize odalar-rec 
                                  move arez-odano to odalar-rec 
                                  read odalar no lock invalid
                                       continue
                                  end-read 
                                  close odalar 
                                  if aceanlas-referans not = spaces and 
                                     aceanlas-referans > 0 
                                     if odalar-referans not = aceanlas-referans
                                        exit perform cycle
                                     end-if
                                  end-if
                         end-evaluate 
                      end-if
                   end-if   |||X

                   move aceanlas-yassinir to   aranan-yassinir-kodu                |
                   if aceanlas-kabul-bas <= arez-al-tar and  
                      aceanlas-kabul-bit >= arez-al-tar and 
                      aceanlas-donem-bas <= arez-gir-tar and  
                      aceanlas-donem-bit >= arez-gir-tar              |>
                      move aceanlas-yassinir to   aranan-yassinir-kodu             |
                      move "10" to fs-aceanlas
                   end-if

                else
                   move "10" to fs-aceanlas
                end-if
          end-read
        end-perform 
    end-start.
    move aranan-yassinir-kodu to yassinir-kodu
    move arez-fiyat-konumu    to yassinir-konum-anah
    read yassinir no lock invalid 
    initialize yassinir-konum-anah
       read yassinir no lock invalid 
        continue
       end-read 
    end-read  
      
        
     initialize yanrez-rec  xiii-lucky
     move arez-no to yanrez-rezno
     start yanrez key >= yanrez-anah invalid continue
       not invalid 
         perform until fs-yanrez = "10"
              read yanrez next no lock end move "10" to fs-yanrez
                      not end

                      if yanrez-sirano > 9 
                         exit perform cycle
                      end-if
                      
                      if arez-no = yanrez-rezno  then 
                           add 1 to xiii-lucky

                          if yanrez-dog-tar < "19000000" then 
                             move yanrez-anah to polisxml-anah
                             move yanrez-sirano to polisxml-sirano
                             read polisxml no lock invalid 
                               continue
                               not invalid 
                               move polisxml-dog-tar to yanrez-dog-tar
                             end-read

                          end-if
                             move yanrez-dog-tar to  msinir-lnk-dogtar(xiii-lucky)
                          else
                          move "10" to fs-yanrez
                      end-if

              end-read
        end-perform
       perform varying xiii-lucky  from 1 by 1 until xiii-lucky > 8 
                     move msinir-lnk-dogtar(xiii-lucky) to  myassinir-dog-tar(xiii-lucky) 
       end-perform 
        perform deneme-hes
            .


*****
*
*
 link2.
      open input genel genel2
      initialize genel-rec 
      move 1 to genel-anahtar 
      read genel no lock invalid 
           continue
      end-read 
      initialize genel2-rec 
      move 1 to genel2-anah 
      read genel2 no lock invalid 
           continue 
      end-read
      close genel genel2
     
      initialize yanrez-rec arez-rec aceanlas-rec 
      move lnk2-acenta to arez-acenta
      move lnk2-anlasma to arez-anlasma
      move link2-fiyat-konumu to arez-fiyat-konumu
      move lnk2-yas(1)    to yas(1)
      move lnk2-yas(2)    to yas(2)
      move lnk2-yas(3)    to yas(3)
      move lnk2-yas(4)    to yas(4)
      move lnk2-yas(5)    to yas(5)
      move lnk2-yas(6)    to yas(6)
      move lnk2-yas(7)    to yas(7)
      move lnk2-yas(8)    to yas(8)


      move low-values to aceanlas-anah
      move  lnk2-al-tar to  arez-al-tar
      move lnk2-gir-tar  to arez-gir-tar
      move lnk2-cik-tar  to arez-cik-tar
      move arez-acenta   to aceanlas-acenta
      move arez-anlasma  to aceanlas-anlasma
      move "DEFAULT" to  aranan-yassinir-kodu
      start aceanlas key > aceanlas-anah invalid  
         move "DEFAULT" to  aranan-yassinir-kodu
      not invalid 
      perform until fs-aceanlas = "10" 
      read aceanlas next no lock end move "10" to fs-aceanlas
      not end 

          if arez-acenta   = aceanlas-acenta and  
             arez-anlasma  = aceanlas-anlasma
*             if genel2-aceanlas-referansli = 1    |||X firat ekleme 12/2/2021
*                if onkpara-referans-var = 1 
*                   evaluate onkpara-referans-nerden
*                       when 1 
*                            open input konum 
*                            initialize konum-rec 
*                            move arez-fiyat-konumu to konum-anahtar 
*                            read konum no lock invalid
*                                 continue
*                            end-read 
*                            close konum
*                            if aceanlas-referans not = spaces 
*                               if konum-ref not = aceanlas-referans
*                                  exit perform cycle
*                               end-if
*                            end-if 
*                       when 2
*                            open input odalar 
*                            initialize odalar-rec 
*                            move arez-odano to odalar-rec 
*                            read odalar no lock invalid
*                                 continue
*                            end-read 
*                            close odalar 
*                            if aceanlas-referans not = spaces
*                               if odalar-referans not = aceanlas-referans
*                                  exit perform cycle
*                               end-if
*                            end-if
*                   end-evaluate 
*                end-if
*             end-if   |||X

             if aceanlas-yassinir not = spaces
                move aceanlas-yassinir to   aranan-yassinir-kodu
             end-if
             if aceanlas-kabul-bas <= arez-al-tar and  
                aceanlas-kabul-bit >= arez-al-tar and  
                aceanlas-donem-bas <= arez-gir-tar and  
                aceanlas-donem-bit >= arez-gir-tar 
                if aceanlas-yassinir not = spaces
                   move aceanlas-yassinir to   aranan-yassinir-kodu
                end-if
                   move "10" to fs-aceanlas
             end-if
          else
             move "10" to fs-aceanlas
          end-if
    end-read
    end-perform 
    end-start.
    move aranan-yassinir-kodu to yassinir-kodu
  
    move arez-fiyat-konumu    to yassinir-konum-anah
    read yassinir no lock invalid
       initialize yassinir-konum-anah yas-var
       read yassinir no lock invalid 
            initialize yas-var
       not invalid
           move 1 to yas-var
       end-read 
    not invalid 
       move 1 to yas-var
    end-read  


    
            
    
        perform sonuc-bul
            .

 deneme-hes.
        if link-var > 0 then 
           move arez-gir-tar to  gbugun
        else
           move tarih-tasi   to gbugun
       end-if
       perform varying i1 from 1 by 1 until i1 > 8 
             if md-yil(i1) > 1900 then 
               
                 move myassinir-dog-tar(i1) to gdogtar
                 perform gyas-hes-pro
                  move yasz to yas(i1)
                 
             end-if
       end-perform
       perform varying i1 from 1 by 1 until i1 > 8
          if yas(i1) < yas( i1 + 1 ) 
              move yas(i1) to buff
              move yas( i1 + 1 ) to yas(i1)
              move buff to yas( i1 + 1 )
              move 0 to i1
          end-if
        end-perform
        perform l-yaz.
     
     
        perform sonuc-bul.


              .



********************************** cpy yazilacak.
*
 sonuc-bul.
       move 0 to sonuc-satir 
         if eski-satir > 0 then 
        
           perform eski-yaz
             
         end-if
     perform varying i2 from 1 by 1 until i2 > 10
           move 0 to uymadi

            perform varying i3 from 1 by 1 until i3 > 7
                   if (yas(i3) >= yassinir-bas-yas(i2,i3) and 
                       yas(i3) <= yassinir-bit-yas(i2,i3) and 
                                             yas(i3) > 0  and 
                      ( yassinir-bas-yas(i2,i3) not = 0 or yassinir-bit-yas(i2,i3) not = 0  ))
                       or ( yassinir-bas-yas(i2,i3) = 0 and yassinir-bit-yas(i2,i3) = 0 
                       and yas(i3) = 0) 
                          continue
                       else
                       move 1 to uymadi 
                       exit perform 
                   end-if
                        
            end-perform 
            if uymadi = 0 then 
                move i2 to sonuc-satir
                move yassinir-sonuc(i2) to  myassinir-sonuc
                exit perform 
            end-if

     end-perform
      
        if sonuc-satir = 0 then
           initialize myassinir-sonuc
              perform varying i3 from 1 by 1 until i3 > 8
                if yas(i3) not > 0 then exit perform cycle end-if
                evaluate  myassinir-pax
                when 0
                   add 1 to  myassinir-pax
                when 1
                if  yas(i3) >= yassinir-sng-pax-sinir
                  add 1 to  myassinir-pax
                  else
                   evaluate myassinir-chi  +  myassinir-fre + myassinir-beb
                   when 0
                           if  yas(i3) >= yassinir-sng-chi1-sinir
                             add 1 to myassinir-chi
                             else
                             if yas(i3) >= yassinir-beb-sinir
                                add 1 to myassinir-fre
                                else
                                  add 1 to myassinir-beb
                             end-if
                           end-if
                    when 1
                      if  yas(i3) >= yassinir-sng-chi2-sinir
                             add 1 to myassinir-chi
                             else
                             if yas(i3) >= yassinir-beb-sinir
                                add 1 to myassinir-fre
                                else
                                  add 1 to myassinir-beb
                             end-if
                           end-if

                    when 2 when 3 when 4 when 5 when 6
                       if  yas(i3) >= yassinir-sng-chi3-sinir
                             add 1 to myassinir-chi
                             else
                             if yas(i3) >= yassinir-beb-sinir
                                add 1 to myassinir-fre
                                else
                                  add 1 to myassinir-beb
                             end-if
                           end-if
                   end-evaluate
                 end-if
                when 2   
                   if  yas(i3) >= yassinir-dbl-pax-sinir
                  add 1 to  myassinir-pax
                  else
                   evaluate myassinir-chi +  myassinir-fre + myassinir-beb
                   when 0
                           if  yas(i3) >= yassinir-dbl-chi1-sinir
                             add 1 to myassinir-chi
                             else
                             if yas(i3) >= yassinir-beb-sinir
                                add 1 to myassinir-fre
                                else
                                  add 1 to myassinir-beb
                             end-if
                           end-if
                    when 1
                      if  yas(i3) >= yassinir-dbl-chi2-sinir
                             add 1 to myassinir-chi
                             else
                             if yas(i3) >= yassinir-beb-sinir
                                add 1 to myassinir-fre
                                else
                                  add 1 to myassinir-beb
                             end-if
                           end-if

                    when 2 when 3 when 4 when 5 when 6
                       if  yas(i3) >= yassinir-dbl-chi3-sinir
                             add 1 to myassinir-chi
                             else
                             if yas(i3) >= yassinir-beb-sinir
                                add 1 to myassinir-fre
                                else
                                  add 1 to myassinir-beb
                             end-if
                           end-if
                   end-evaluate
                 end-if       

                when 3 when 4 when 5 when 6   when 7 when 8
                          if  yas(i3) >= yassinir-trp-pax-sinir
                  add 1 to  myassinir-pax
                  else
                   evaluate myassinir-chi +  myassinir-fre + myassinir-beb
                   when 0
                           if  yas(i3) >= yassinir-trp-chi1-sinir
                             add 1 to myassinir-chi
                             else
                             if yas(i3) >= yassinir-beb-sinir
                                add 1 to myassinir-fre
                                else
                                  add 1 to myassinir-beb
                             end-if
                           end-if
                    when 1
                      if  yas(i3) >= yassinir-trp-chi2-sinir
                             add 1 to myassinir-chi
                             else
                             if yas(i3) >= yassinir-beb-sinir
                                add 1 to myassinir-fre
                                else
                                  add 1 to myassinir-beb
                             end-if
                           end-if

                    when 2 when 3 when 4 when 5 when 6
                       if  yas(i3) >= yassinir-trp-chi3-sinir
                             add 1 to myassinir-chi
                             else
                             if yas(i3) >= yassinir-beb-sinir
                                add 1 to myassinir-fre
                                else
                                  add 1 to myassinir-beb
                             end-if
                           end-if
                   end-evaluate
                 end-if



               end-evaluate

               end-perform
               evaluate myassinir-pax 
                  when 0 when 1 
                    move 101 to sonuc-satir
                  when 2
                    move 102 to sonuc-satir
                  when other
                     move 103 to sonuc-satir
              end-evaluate


        end-if


         if sonuc-satir > 0 then 
            perform yeni-yaz
         end-if
        move sonuc-satir to eski-satir
       perform a-yaz
            .
*
 gyas-hes-pro.

     move gbugun  to yasbulilk-tarih
     move gdogtar to yasbulson-tarih
     subtract yasbulson-gun from yasbulilk-gun giving yasbulfark-gun                                        
     if yasbulfark-gun < 0 then 
       subtract 1 from yasbulilk-ay  
       evaluate yasbulilk-ay
          when 1 
          when 3 
          when 5 
          when 7 
          when 8 
          when 10 
          when 0
             add 31 to yasbulfark-gun 
          when 2
             divide yasbulilk-yil by 4 giving bolum remainder kalan
             if kalan = 0 then 
                 add 29 to yasbulfark-gun 
             else
                 add 28 to yasbulfark-gun
             end-if
          when other 
             add 30 to yasbulfark-gun 
         end-evaluate
     end-if
     subtract yasbulson-ay from yasbulilk-ay giving yasbulfark-ay 
     if yasbulfark-ay < 0 then 
       add 12 to yasbulfark-ay 
       subtract 1 from yasbulilk-yil
     end-if
     subtract yasbulson-yil from yasbulilk-yil giving yasbulfark-yil 
     compute yasbulfark-yil-say  rounded  =  yasbulfark-yil
          + ( yasbulfark-ay / 12 ) + ( yasbulfark-GUN / 365 )  
     move yasbulfark-yil-say to yasz.
    

