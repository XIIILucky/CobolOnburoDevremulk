*
 aksiyonlari-bul.
********** aks-bul   1-giris-bazli    2-konaklama-bazli   9-aksiyon-uygulanmasin 
        if aks-bul1 = 2 then move 0 to aks-bul1  initialize a1-rec end-if
        if aks-bul2 = 2 then move 0 to aks-bul2  initialize a2-rec end-if
        if aks-bul3 = 2 then move 0 to aks-bul3  initialize a3-rec end-if
        if aks-bul4 = 2 then move 0 to aks-bul4  initialize a4-rec end-if

       
        perform varying akssira from 1 by 1 until akssira > 10  or ( aks-bul1 = 9  or  1 )
        
         evaluate akssira 
              when 1 move " " to aks-bos
              when 2 move "1" to aks-bos
              when 3 move "2" to aks-bos
              when 4 move "3" to aks-bos
              when 5 move "4" to aks-bos
              when 6 move "5" to aks-bos
              when 7 move "6" to aks-bos
              when 8  move "7" to aks-bos
              when 9  move "8" to aks-bos
              when 10 move "9" to aks-bos

         end-evaluate
        
        if aks-bul1 not = 9  and not = 1
          initialize aksiyhrk-rec
         move "A"                  to aksiyhrk-tipi of aksiyhrk-rec
         move xrez-rate-acenta     to aksiyhrk-acenta of aksiyhrk-rec 
         move takvim-anah          to aksiyhrk-tarih of aksiyhrk-rec 
         move xrez-pan-tipi        to aksiyhrk-pan-tipi of aksiyhrk-rec
         move toplam-geceleme      to aksiyhrk-gecele of aksiyhrk-rec
         move aks-bos              to aksiyhrk-bos of aksiyhrk-rec
         read aksiyhrk no lock 
              invalid 
                initialize  aksiyhrk-gecele of aksiyhrk-rec
                   read aksiyhrk no lock 
                      invalid 
                       continue
                      not invalid
                        
           if ((aksiyhrk-rezal-tar1  of aksiyhrk-rec <= xrez-al-tar and
             aksiyhrk-rezal-tar2  of aksiyhrk-rec >= xrez-al-tar) or 
             aksiyhrk-rezal-tar1 of aksiyhrk-rec < "20000000" ) and 
             aksiyhrk-minimum of aksiyhrk-rec <= toplam-geceleme and 
             (aksiyhrk-maximum of aksiyhrk-rec >= toplam-geceleme or 
              aksiyhrk-maximum of aksiyhrk-rec not > 0 ) and
             (aksiyhrk-konum-ind of aksiyhrk-rec(xrez-fiyat-konumu) not = "H") 
             and (   function numval( aksiyhrk-hafta-gunleri of aksiyhrk-rec(takkac:1)) not = 1 )
                            if aksiyhrk-ebharic  of aksiyhrk-rec  = 1 and xrez-eb = "E"
                                 continue
                            else
                                evaluate true
                                when aksiyhrk-ug-uygulama of aksiyhrk-rec = 1 and xrez-UG-IND = 1
                                   continue 
                                when other 
                                if aksiyhrk-k-bazli  of aksiyhrk-rec = 1
                                       move 2 to aks-bul1
                                       move aksiyhrk-rec to a1-rec
                                   else
                                   
                                   if takvim-anah =  xrez-voucher-gir-tar
                                        move 1   to aks-bul1
                                        move aksiyhrk-rec to a1-rec
                                  end-if
                                end-if 
                                end-evaluate
                            end-if
                        end-if
                 end-read
            not invalid
                   
                  

                  if (xrez-gir-tar < aksiyhrk-bas-tar of aksiyhrk-rec
                     or xrez-cik-tar > aksiyhrk-bit-tar of aksiyhrk-rec)
                     AND isyeri-adres-tasi = "karaburn" 
                         exit perform cycle
                  end-if

      
                 if  ((aksiyhrk-rezal-tar1  of aksiyhrk-rec <= xrez-al-tar and
                                aksiyhrk-rezal-tar2  of aksiyhrk-rec >= xrez-al-tar) or 
                                aksiyhrk-rezal-tar1 of aksiyhrk-rec < "20000000" )                              
                               and   (aksiyhrk-konum-ind of aksiyhrk-rec(xrez-fiyat-konumu) not = "H")

                       if aksiyhrk-ebharic  of aksiyhrk-rec  = 1 and xrez-eb = "E"
                         continue
                       else
                       evaluate true
                       when aksiyhrk-ug-uygulama of aksiyhrk-rec = 1 and xrez-UG-IND = 1
                          continue 
                       when other 
                         if aksiyhrk-k-bazli  of aksiyhrk-rec = 1
                                move 2 to aks-bul1
                                move aksiyhrk-rec to a1-rec
                          else
                            if takvim-anah =  xrez-voucher-gir-tar
                                 move 1   to aks-bul1
                                 move aksiyhrk-rec to a1-rec
                           end-if
                         end-if
                        end-evaluate
                      end-if
                      
                end-if
         end-read
       end-if
       end-perform 
         
        
         perform varying akssira from 1 by 1 until akssira > 10  or ( aks-bul2 = 9  or  1 )
        
         evaluate akssira 
              when 1 move " "  to aks-bos
              when 2 move "1"  to aks-bos
              when 3 move "2"  to aks-bos
              when 4 move "3"  to aks-bos
              when 5 move "4"  to aks-bos
              when 6 move "5"  to aks-bos
              when 7 move "6"  to aks-bos
              when 8  move "7" to aks-bos
              when 9  move "8" to aks-bos
              when 10 move "9" to aks-bos

         end-evaluate
       if aks-bul2 not = 9  and not = 1
         initialize aksiyhrk-rec
         move "B"                  to aksiyhrk-tipi     of aksiyhrk-rec
         move xrez-rate-acenta     to aksiyhrk-acenta   of aksiyhrk-rec 
         move takvim-anah          to aksiyhrk-tarih    of aksiyhrk-rec 
         move xrez-pan-tipi        to aksiyhrk-pan-tipi of aksiyhrk-rec
         move toplam-geceleme      to aksiyhrk-gecele   of aksiyhrk-rec 
           move aks-bos    to    aksiyhrk-bos of aksiyhrk-rec
         read aksiyhrk no lock 
              invalid 
               initialize  aksiyhrk-gecele of aksiyhrk-rec
                   read aksiyhrk no lock 
                      invalid 
                       continue
                      not invalid
                                if  ((aksiyhrk-rezal-tar1  of aksiyhrk-rec <= xrez-al-tar and
                                aksiyhrk-rezal-tar2  of aksiyhrk-rec >= xrez-al-tar) or 
                                aksiyhrk-rezal-tar1 of aksiyhrk-rec < "20000000" ) and 
                              aksiyhrk-minimum of aksiyhrk-rec <= toplam-geceleme and 
                               (aksiyhrk-maximum of aksiyhrk-rec >= toplam-geceleme or
                               aksiyhrk-maximum of aksiyhrk-rec not > 0 ) 
                               and (aksiyhrk-konum-ind of aksiyhrk-rec(xrez-fiyat-konumu) not = "H")
                                 and (   function numval( aksiyhrk-hafta-gunleri of aksiyhrk-rec(takkac:1)) not = 1 )

*                               if aksiyhrk-ebharic  of aksiyhrk-rec  = 1 and xrez-eb = "E"
*                                 continue
*                               else
*        
*                                if aksiyhrk-k-bazli  of aksiyhrk-rec = 1
*                                       move 2 to aks-bul2
*                                       move aksiyhrk-rec to a2-rec
*                                   else
*                                   if takvim-anah =  xrez-voucher-gir-tar
*                                        move 1   to aks-bul2
*                                        move aksiyhrk-rec to a2-rec
*                                  end-if
*                               end-if
*                               end-if
                            if aksiyhrk-ebharic  of aksiyhrk-rec  = 1 and xrez-eb = "E"
                                 continue
                            else
                                evaluate true
                                when aksiyhrk-ug-uygulama of aksiyhrk-rec = 1 and xrez-UG-IND = 1
                                   continue 
                                when other 
                                if aksiyhrk-k-bazli  of aksiyhrk-rec = 1
                                       move 2 to aks-bul2
                                       move aksiyhrk-rec to a2-rec
                                   else
                                   
                                   if takvim-anah =  xrez-voucher-gir-tar
                                        move 1   to aks-bul2
                                        move aksiyhrk-rec to a2-rec
                                  end-if
                                end-if 
                                end-evaluate
                            end-if

                            
                        end-if
                 end-read
              not invalid

              
                  if (xrez-gir-tar < aksiyhrk-bas-tar of aksiyhrk-rec
                     or xrez-cik-tar > aksiyhrk-bit-tar of aksiyhrk-rec)
                     AND isyeri-adres-tasi = "karaburn" 
                         exit perform cycle
                  end-if


                 if  ((aksiyhrk-rezal-tar1  of aksiyhrk-rec <= xrez-al-tar and
                                aksiyhrk-rezal-tar2  of aksiyhrk-rec >= xrez-al-tar) or 
                                aksiyhrk-rezal-tar1 of aksiyhrk-rec < "20000000" )
                                and (aksiyhrk-konum-ind of aksiyhrk-rec(xrez-fiyat-konumu) not = "H")

                       if aksiyhrk-ebharic  of aksiyhrk-rec  = 1 and xrez-eb = "E"
                         continue
                       else
                       evaluate true
                       when aksiyhrk-ug-uygulama of aksiyhrk-rec = 1 and xrez-UG-IND = 1
                          continue 
                       when other 
                         if aksiyhrk-k-bazli  of aksiyhrk-rec = 1
                                move 2 to aks-bul2
                                move aksiyhrk-rec to a2-rec
                          else
                            if takvim-anah =  xrez-voucher-gir-tar
                                 move 1   to aks-bul2
                                 move aksiyhrk-rec to a2-rec
                           end-if
                         end-if
                        end-evaluate
                      end-if


*                        if aksiyhrk-k-bazli  of aksiyhrk-rec = 1
*                               move 2 to aks-bul2
*                               move aksiyhrk-rec to a2-rec
*                           else
*                            if takvim-anah =  xrez-voucher-gir-tar
*                                move 1   to aks-bul2 
*                                move aksiyhrk-rec to a2-rec
*                            end-if
*                       end-if

                end-if
         end-read
         end-if
          end-perform 
         perform varying akssira from 1 by 1 until akssira > 10  or ( aks-bul3 = 9  or  1 )
        
         evaluate akssira 
              when 1 move " " to aks-bos
              when 2 move "1" to aks-bos
              when 3 move "2" to aks-bos
              when 4 move "3" to aks-bos
              when 5 move "4" to aks-bos
              when 6 move "5" to aks-bos
              when 7 move "6" to aks-bos
              when 8  move "7" to aks-bos
              when 9  move "8" to aks-bos
              when 10 move "9" to aks-bos

         end-evaluate
         if aks-bul3 not = 9  and not = 1
         initialize aksiyhrk-rec
         move "O"                  to aksiyhrk-tipi     of aksiyhrk-rec
         move xrez-rate-acenta          to aksiyhrk-acenta   of aksiyhrk-rec 
         move takvim-anah          to aksiyhrk-tarih     of aksiyhrk-rec 
         move xrez-pan-tipi        to aksiyhrk-pan-tipi of aksiyhrk-rec
         move toplam-geceleme      to aksiyhrk-gecele   of aksiyhrk-rec
           move aks-bos    to    aksiyhrk-bos of aksiyhrk-rec
         read aksiyhrk no lock 
              invalid 
                   initialize  aksiyhrk-gecele of aksiyhrk-rec
                   read aksiyhrk no lock 
                      invalid 
                       continue
                   not invalid
                    perform geceleme-bul-kb3
                    if  ((aksiyhrk-rezal-tar1  of aksiyhrk-rec <= xrez-al-tar and
                     aksiyhrk-rezal-tar2  of aksiyhrk-rec >= xrez-al-tar) or 
                     aksiyhrk-rezal-tar1 of aksiyhrk-rec < "20000000" ) and 
                     aksiyhrk-minimum of aksiyhrk-rec <= toplam-geceleme-kb3 and 
                    (aksiyhrk-maximum of aksiyhrk-rec >= Toplam-Geceleme-kb3 or 
                    aksiyhrk-maximum of aksiyhrk-rec not > 0 )
                 and (aksiyhrk-konum-ind of aksiyhrk-rec(xrez-fiyat-konumu)  not = "H")

                             if aksiyhrk-ebharic  of aksiyhrk-rec  = 1 and xrez-eb = "E"
                                 continue
                             else        
                                  if aksiyhrk-k-bazli  of aksiyhrk-rec = 1
                                       move 2 to aks-bul3
                                       move aksiyhrk-rec to a3-rec
                                  else
                                   if takvim-anah =  xrez-voucher-gir-tar
                                        move 1   to aks-bul3
                                        move aksiyhrk-rec to a3-rec
                                  end-if
                               end-if
                             end-if
                       end-if
                   end-read
              not invalid
**                 STOP " "
||||||||||||||||||||||||||||||||||||

               if aksiyhrk-k-bazli  of aksiyhrk-rec = 1
                 
                  if xrez-voucher-gir-tar <  aksiyhrk-bas-tar of aksiyhrk-rec or 
                    xrez-cik-tar > aksiyhrk-bit-tar of aksiyhrk-rec then 

                       perform geceleme-bul-kb3

                     move toplam-geceleme-kb3      to aksiyhrk-gecele   of aksiyhrk-rec
                     read aksiyhrk no lock 
                         invalid
                         move "99999999" to aksiyhrk-rezal-tar1 of aksiyhrk-rec
                     end-read 
                     else


                     move  toplam-geceleme to  toplam-geceleme-kb3
                  end-if
                 else
                   move  toplam-geceleme to  toplam-geceleme-kb3
               end-if

                 if        ((aksiyhrk-rezal-tar1  of aksiyhrk-rec <= xrez-al-tar and
                                aksiyhrk-rezal-tar2  of aksiyhrk-rec >= xrez-al-tar) or 
                                aksiyhrk-rezal-tar1 of aksiyhrk-rec < "20000000" )
                              and (aksiyhrk-konum-ind of aksiyhrk-rec(xrez-fiyat-konumu) not = "H")
                        if aksiyhrk-k-bazli  of aksiyhrk-rec = 1
                           
                                move 2 to aks-bul3
                                move aksiyhrk-rec to a3-rec
                           
                           else
                           if takvim-anah =  xrez-voucher-gir-tar
                                 move 1   to aks-bul3 
                                 move aksiyhrk-rec to a3-rec
                           end-if
                       end-if
                end-if
         end-read
         end-if
         ||||||||||||||||||||||||
************
         end-perform 
         perform varying akssira from 1 by 1 until akssira > 10  or ( aks-bul4 = 9  or  1 )
        
         evaluate akssira 
              when 1 move " " to aks-bos
              when 2 move "1" to aks-bos
              when 3 move "2" to aks-bos
              when 4 move "3" to aks-bos
              when 5 move "4" to aks-bos
              when 6 move "5" to aks-bos
              when 7 move "6" to aks-bos
              when 8  move "7" to aks-bos
              when 9  move "8" to aks-bos
              when 10 move "9" to aks-bos

         end-evaluate
         if aks-bul4 not = 9  and not = 1
         initialize aksiyhrk-rec
         move "P"                  to aksiyhrk-tipi      of aksiyhrk-rec
         move xrez-rate-acenta          to aksiyhrk-acenta    of aksiyhrk-rec 
         move takvim-anah          to aksiyhrk-tarih     of aksiyhrk-rec 
         move cast-pan-tipi        to aksiyhrk-pan-tipi  of aksiyhrk-rec
         move toplam-geceleme      to aksiyhrk-gecele    of aksiyhrk-rec 
           move aks-bos    to    aksiyhrk-bos of aksiyhrk-rec
         read aksiyhrk no lock 
              invalid 
                 initialize  aksiyhrk-gecele of aksiyhrk-rec
                   read aksiyhrk no lock 
                      invalid 
                       continue
                      not invalid
                          perform geceleme-bul-kb3
                                if  ((aksiyhrk-rezal-tar1  of aksiyhrk-rec <= xrez-al-tar and
                                aksiyhrk-rezal-tar2  of aksiyhrk-rec >= xrez-al-tar) or 
                                aksiyhrk-rezal-tar1 of aksiyhrk-rec < "20000000" ) and 
                              aksiyhrk-minimum of aksiyhrk-rec <= toplam-geceleme-kb3 and 
                               (aksiyhrk-maximum of aksiyhrk-rec >= toplam-geceleme-kb3 or 
                               aksiyhrk-maximum of aksiyhrk-rec not > 0 ) 
                              and (aksiyhrk-konum-ind of aksiyhrk-rec(xrez-fiyat-konumu)   not = "H")
                               if aksiyhrk-ebharic  of aksiyhrk-rec  = 1 and xrez-eb = "E"
                                 continue
                               else
        
                                if aksiyhrk-k-bazli  of aksiyhrk-rec = 1
                                       move 2 to aks-bul4
                                       move aksiyhrk-rec to a4-rec
                                   else
                                   if takvim-anah =  xrez-voucher-gir-tar
                                        move 1   to aks-bul4
                                        move aksiyhrk-rec to a4-rec
                                  end-if
                               end-if
                              end-if                               
                        end-if
                 end-read
              not invalid
               if aksiyhrk-k-bazli  of aksiyhrk-rec = 1
                  if xrez-voucher-gir-tar <  aksiyhrk-bas-tar of aksiyhrk-rec or 
                    xrez-cik-tar > aksiyhrk-bit-tar of aksiyhrk-rec then 

                       perform geceleme-bul-kb3

                     move toplam-geceleme-kb3      to aksiyhrk-gecele   of aksiyhrk-rec
                     read aksiyhrk no lock 
                         invalid
                         move "99999999" to aksiyhrk-rezal-tar1 of aksiyhrk-rec
                     end-read 
                     else


                     move  toplam-geceleme to  toplam-geceleme-kb3
                  end-if
                 else
                   move  toplam-geceleme to  toplam-geceleme-kb3
               end-if

                 if  ((aksiyhrk-rezal-tar1  of aksiyhrk-rec <= xrez-al-tar and
                                aksiyhrk-rezal-tar2  of aksiyhrk-rec >= xrez-al-tar) or 
                                aksiyhrk-rezal-tar1 of aksiyhrk-rec < "20000000" ) 
                             and (aksiyhrk-konum-ind of aksiyhrk-rec(xrez-fiyat-konumu)  not = "H")
                        if aksiyhrk-k-bazli  of aksiyhrk-rec = 1
                             move 2 to aks-bul4
                             move aksiyhrk-rec to a4-rec
                           else
                           if takvim-anah =  xrez-voucher-gir-tar
                                 move 1   to aks-bul4 
                                 move aksiyhrk-rec to a4-rec
                            end-if
                             
                       end-if
                end-if               
         end-read 
         end-if
         end-perform
         .
*
 aylik-gunler-bul.
     initialize ayliklar.
     move xrez-gir-tar to muhtemel-ay-basi(1)
         perform varying ay-sayi from 2 by 1 until ay-sayi > 30
                move   muhtemel-ay-basi(ay-sayi - 1)  to  muhtemel-ay-basi(ay-sayi ) 
                 if muhtemel-ay-basi-ay(ay-sayi - 1) = 12 
                        add 1 to muhtemel-ay-basi-yil(ay-sayi - 1) giving  muhtemel-ay-basi-yil(ay-sayi)
                        move 1 to  muhtemel-ay-basi-ay(ay-sayi )
                  else
                        add 1 to muhtemel-ay-basi-ay(ay-sayi - 1 ) giving  muhtemel-ay-basi-ay(ay-sayi)
                 end-if
        end-perform 
        move 1 to ay-sayi
        move muhtemel-ay-basi(ay-sayi) to takvim-anah
    perform  until takvim-anah > xrez-cik-tar
       move muhtemel-ay-basi (ay-sayi) to takvim-anah
       move  1 to buaygunu(ay-sayi)
       start takvim key >= takvim-anah
          invalid
            continue
         not invalid
            read takvim next no lock end continue end-read
            move takvim-anah to bu-ay-basi(ay-sayi)
            perform until fs-takvim = "10" 
                 read  takvim next no lock 
                     end    
                         move "10" to fs-takvim
                     not end
                     if takvim-anah >=  muhtemel-ay-basi (ay-sayi + 1)
                          compute gunluk-tutar(ay-sayi) rounded = rezek-aylik-fiyat /  buaygunu(ay-sayi)
                          compute songun-tutar(ay-sayi)  =  rezek-aylik-fiyat - (gunluk-tutar(ay-sayi) * ( buaygunu(ay-sayi) - 1 ))
                          add 1 to ay-sayi
                          move "10" to fs-takvim
                        else
                          add 1 to buaygunu(ay-sayi)
                          move takvim-anah to  bu-ay-sonu(ay-sayi)
                    end-if
                 end-read

            end-perform 
                          compute gunluk-tutar(ay-sayi - 1 ) 
                          rounded = rezek-aylik-fiyat /  buaygunu(ay-sayi - 1 )
                          compute songun-tutar(ay-sayi - 1)  =  
                          rezek-aylik-fiyat - (gunluk-tutar(ay-sayi - 1 ) * ( buaygunu(ay-sayi - 1) - 1 ))
                        | move  ay-sayi    to
                          
         end-start
      end-perform
  

        .
          
*
 fiyat.
*/*************alba hotels için yapýldý ramazan 20_08-2019
       initialize kodlar02-rec  ykodlar02-ozel-durum-bas-tar ykodlar02-ozel-durum-bit-tar uygulanacak-kom
       move  0 to top-kumule son-kumule
       move "Z"                   to kodlar02-tipi
       move xREZ-OZEL-DURUM       to kodlar02-kodu
       read kodlar02 no lock invalid 
           continue 
       not invalid 
           move kodlar02-ozel-durum-bas-tar to ykodlar02-ozel-durum-bas-tar
           move kodlar02-ozel-durum-bit-tar to ykodlar02-ozel-durum-bit-tar
       end-read 
       initialize a1-rec a2-rec a3-rec a4-rec
*/*************alba hotels için yapýldý ramazan 20_08-2019
       initialize hes-ug-uygulama
         initialize fiyatind-rec konumind-var 
          move xrez-acenta  to acenta-kodu 
          read acenta no lock invalid 
               continue
          end-read
            move acenta-kom-orani to uygulanacak-kom 
          if acenta-rate-acenta > spaces 
           
             move acenta-rate-acenta to acenta-kodu 
             read acenta no lock invalid
                move xrez-acenta to  xREZ-RATE-ACENTA
             
               not invalid 
                 move acenta-kodu to xREZ-RATE-ACENTA
          else
                move xrez-acenta to  xREZ-RATE-ACENTA
          end-if
            move xrez-acenta  to acenta-kodu 
            read acenta no lock invalid 
              continue
            end-read
         
           if acenta-pasif = 1 then 
              
              exit paragraph
           end-if
             
          initialize top-noshow  son-bulunan-hesap
        
          if genel-rezidance = 1 then 
            initialize rezek-rec
            move xrez-no to rezek-no
            open input rezek
            read rezek no lock invalid
               continue
               not invalid
              if rezek-fiyat-tip = 1 then 
                  perform aylik-gunler-bul
              end-if
            end-read
            close rezek
         end-if
         if xrez-gec = 1 then
           
         move xrez-gir-tar to takvim-anah
           start takvim key >= takvim-anah 
             invalid
               continue
            not invalid
              read takvim previous no lock end continue end-read
              read takvim previous no lock end continue end-read
             move takvim-anah to xrez-voucher-gir-tar
          end-start
          else
           move xrez-gir-tar to takvim-anah
           read takvim  no lock invalid continue end-read
          move xrez-gir-tar to xrez-voucher-gir-tar

        end-if 
        move TAKVIM-GUN-ADI to takkac
        if takkac < "1" or takkac > "7" move 1 to takkac end-if
        move xrez-rate-acenta to acenta-kodu 
        read acenta no lock invalid continue
        end-read
        if acenta-bakim-yap = 1 then 
            move 1 to acenta-pasif 
              rewrite acenta-rec invalid continue
           end-rewrite
           perform acenta-bakim
           move 0  to acenta-bakim-yap
           move 0 to acenta-pasif 
           rewrite acenta-rec invalid continue
           end-rewrite
        end-if
       





      move 0 to tum-gun-fiyat  giris-takildi
      initialize toplam-geceleme
      perform geceleme-bul.
      if xrez-no  > 99000000 and linkh-nereden = 7 then 
                             continue  | grup fiyatlarinda aksiyon yok
      else
              initialize hesayr-rec
               move xrez-no to hesayr-rez-no
                start hesayr key > hesayr-anah
                    invalid continue
                    not invalid
                    perform until fs-hesayr = "10" 
                       read hesayr next no lock end move "10" to fs-hesayr
                          not end
                            if hesayr-rez-no = xrez-no then 
                               delete hesayr invalid stop " " end-delete
                            else
                              move "10" to fs-hesayr
                            end-if
                       end-read
                    end-perform
                end-start
              open i-o formulhes 
              initialize formulhes-rec
               move xrez-no to  formulhes-rez-no
                start  formulhes key >  formulhes-anah
                    invalid continue
                    not invalid
                    perform until fs-formulhes = "10" 
                       read  formulhes next no lock end move "10" to fs-formulhes
                          not end
                            if  formulhes-rez-no = xrez-no then 
                              delete  formulhes invalid stop " " end-delete
                            else
                              move "10" to fs-formulhes
                            end-if
                       end-read
                    end-perform
                end-start
              close formulhes
     end-if
 
      initialize formul-rec son-aks-var
      move xrez-rate-acenta to formul-acenta 
      read formul no lock invalid
          initialize formul-rec 
          read formul no lock invalid
              continue
          end-read
      end-read

      initialize yedek-formul-rec
      move formul-rec         to yedek-formul-rec
              
      initialize t
      perform varying t 
              from 0 
              by 1 
              until t > 8                 
                initialize formul-rec 
                move xrez-rate-acenta        to formul-acenta 
                move t                       to zt
                move zt                      to formul-sira
                read formul no lock invalid
                   initialize formul-rec 
                   move t                    to zt
                   move zt                   to formul-sira
                   read formul no lock invalid
                       move yedek-formul-rec to formul-rec
                   not invalid 
                       if formul-bas-tar = spaces 
                          exit perform cycle 
                       end-if 
                       if formul-bit-tar = spaces
                          exit perform cycle 
                       end-if  
                             evaluate formul-tip
                             when "S"
                                if xrez-al-tar < formul-bas-tar or
                                   xrez-al-tar > formul-bit-tar 
                                     exit perform cycle 
                                end-if 
                             when other
                                if xrez-gir-tar < formul-bas-tar or
                                   xrez-gir-tar > formul-bit-tar 
                                     exit perform cycle 
                                end-if 
                             end-evaluate 

                          exit perform               
                   end-read
                not invalid 
                       if formul-bas-tar = spaces 
                          exit perform cycle 
                       end-if 
                       if formul-bit-tar = spaces
                          exit perform cycle 
                       end-if
                           
*                           if xrez-gir-tar < formul-bas-tar or
*                                xrez-gir-tar > formul-bit-tar 
*                                  exit perform cycle 
*                             end-if 
                    
                             evaluate formul-tip
                             when "S"
                                if xrez-al-tar < formul-bas-tar or
                                   xrez-al-tar > formul-bit-tar 
                                     exit perform cycle 
                                end-if 
                             when other
                                if xrez-gir-tar < formul-bas-tar or
                                   xrez-gir-tar > formul-bit-tar 
                                     exit perform cycle 
                                end-if 
                             end-evaluate 
                       exit perform                
                end-read
      end-perform
*********************
      open i-o formulhes
       initialize aksiyonlar
      if xrez-aksiyon-eh = "H" move 9 to aks-bul1 aks-bul2 end-if
      if xrez-aksiyon2-eh = 1  move 9 to aks-bul2 end-if
      if xrez-special-eh = 1   move 9 to aks-bul3 aks-bul4 end-if
      if xrez-special2-eh = 1  move 9 to aks-bul4 end-if
      if ( aks-bul1 = 1 or 2 )   and ( aksiyhrk-ug-uygulama of a1-rec = 1  )  then move 1 to hes-ug-uygulama  end-if
      if ( aks-bul2 = 1 or 2 )   and ( aksiyhrk-ug-uygulama of a2-rec = 1  )  then move 1 to hes-ug-uygulama  end-if
    
      initialize kodlar02-rec 
      move xREZ-ODEME-TIPI to kodlar02-kodu
      move "B" to  kodlar02-tipi
      read kodlar02 no lock invalid continue
      end-read 
       initialize takvim-rec
            move xrez-voucher-gir-tar to takvim-anah.
      start takvim key >= takvim-anah 
         invalid
           continue
         not invalid
           
            perform until fs-takvim = "10"
                read takvim next no lock 
                    end move "10" to fs-takvim
                    not end 
                      if takvim-anah > xrez-cik-tar 
                          move "10" to  fs-takvim
                          exit perform
                      end-if
                      if takvim-anah >= xrez-cik-tar and xrez-no  < 99000000 
                            move "10" to  fs-takvim
                            
                        else
                        move  0 to top-kumule son-kumule
                          |// display message box formul-text
                          initialize formul-text

                          perform cast-bul
                          if xrez-no  > 99000000 and linkh-nereden = 7 then 
                             continue  | grup fiyatlarinda aksiyon yok
                          else
                            
                             perform aksiyonlari-bul
                          end-if
                          
                          
                          if giris-takildi = 0 then 
                             perform ham-bul
                             perform eb-varsa-uyar
                             perform ug-varsa-uyar
                             perform cift-indirim-uyar
                             move gham to son-fiyat
                          end-if
                           initialize hesayr-rec
                           move  takvim-anah to hesayr-tarih
                           move  xrez-no     to  hesayr-rez-no
                             perform sira-at 
                             move k-kodu-tasi to  hesayr-staf
                            
                          if XREZ-FIYAT-FIX = "E" 
                             if xrez-plan not = 1 then 
                                move  xREZ-FIYATI to son-fiyat
                                if genel-rezidance = 1 and rezek-fiyat-tip = 1 then  
                                    perform varying ay-sayi from 1 by 1 until ay-sayi > 50
                                       if bu-ay-basi(ay-sayi) <= takvim-anah and 
                                          bu-ay-sonu(ay-sayi) >= takvim-anah   then 
                                            if bu-ay-sonu(ay-sayi) =  takvim-anah then 
                                              move songun-tutar(ay-sayi) to son-fiyat
                                              else
                                               move gunluk-tutar(ay-sayi) to son-fiyat
                                            end-if
                                           exit perform 
                                       end-if
                                    end-perform 
                                 end-if
                                else  
                              
                                if cast-fiyati not = xREZ-FIYATI 
                                 if (( tarih-tasi <= xrez-gir-tar and 
                                 takvim-anah <= xrez-gir-tar ) or ( tarih-tasi > xrez-gir-tar
                                   and   takvim-anah = tarih-tasi ))
                                         move  xREZ-FIYATI to son-fiyat
                                   else
                                 if tum-gun-fiyat = 0 AnD linkh-nereden < 3 then
                                       display message box "Fiyat Planlamasi Yapilmis " new-line 
                                                           "Bu fiyat konaklamaya uygulansin mi?"
                                                        icon 2 type 2 default 2 giving tum-gun-fiyat
                                                        title "PLANLAMIS KONAKLAMA"
                                 end-if
                                 
                                 if tum-gun-fiyat = 1 and (( tarih-tasi < xrez-gir-tar and 
                                 takvim-anah > xrez-gir-tar ) or ( tarih-tasi >= xrez-gir-tar
                                   and   takvim-anah > tarih-tasi ))
                                    
                                    move  xREZ-FIYATI to son-fiyat
                                    else
                                    move  cast-FIYATI to son-fiyat
                                 end-if 
                                 else
                                   move  xREZ-FIYATI to son-fiyat
                              end-if

                             end-if
                                move son-fiyat to hesayr-ham-fiyat
                                move son-fiyat to hesayr-basilacak-tut
                                move 0 to son-aks-var
                                else
                                    if giris-takildi = 1 and takvim-anah > xrez-voucher-gir-tar then 
                                             move xrez-voucher-gir-tar to hesayr-tarih
                                             move  xrez-no     to  hesayr-rez-no
                                             read hesayr no lock invalid display message box "Hata Hesap 56999"
                                                        not invalid
                                                        move takvim-anah to hesayr-tarih
                                                     
                                                     move  hesayr-basilacak-tut to son-fiyat
                                              end-read
                                              else
*                                  if gham > 0 then 
                          
                                       perform fiyat-bul
*                                  end-if
                                   end-if
                          end-if
                          if xrez-no  > 99000000 and linkh-nereden = 7 then 
                             move son-fiyat to xrez-fiyati
                               move "10" to  fs-takvim
                               exit perform cycle
                         end-if
                            
                          move cast-fiyat-konumu  to hesayr-konum
                           if takvim-anah = xrez-voucher-gir-tar
                                   move 1 to hesayr-per yedek-hesayr-per2
                                   move hesayr-datalar to yedek-hesayr-datalar
                                   else
                                   if hesayr-per-data1 not = yedek-hesayr-per-data1 or hesayr-per-data2 not =  yedek-hesayr-per-data2
*                                     if hesayr-datalar(1:100) not = yedek-hesayr-rec(1:100) or
*                                          hesayr-datalar(300:196) not = yedek-hesayr-rec(300:196) 
                        
                                          add 1 to yedek-hesayr-per2
                                     end-if
                                          move yedek-hesayr-per2 to hesayr-per
                                          move hesayr-datalar to yedek-hesayr-datalar
                        
                        
                           end-if
***                            if xrez-no = 186908 then stop " " end-if
                         
                           
                            write hesayr-rec invalid rewrite hesayr-rec end-write
                            
                           initialize formulhes-rec
                           move hesayr-anah to formulhes-anah
                           inspect formul-text replacing trailing low-values by spaces
                           move formul-text to formulhes-tum-formul
                           write formulhes-rec invalid rewrite formulhes-rec end-write

                               if ( linkh-anl-yaz = 1 or linkh-cast-yaz = 1 ) and son-aks-var not = 1 then
                                    

                                 if xrez-gec = 1 and takvim-anah < xrez-gir-tar
                                    
                                     if xREZ-FIYAT-FIX not = "E"  
                                        
                                         add  son-fiyat   to top-noshow
                                     end-if
                                     else
                                      initialize cast-rec
                                     move xrez-no to cast-rez-no
                                     move takvim-anah to cast-tarih
                                     read cast no lock
                                       invalid
                                        continue
                                        not invalid
                                          initialize cast-islendi
                                            
                                          compute castyaz-fiyat = top-noshow + son-fiyat
                                          initialize  top-noshow
                                          if linkh-anl-yaz = 1
                                            if castyaz-fiyat not = cast-anlasma-fiyati

                                               move   castyaz-fiyat to cast-anlasma-fiyati
                                                move 1 to cast-islendi
                                            end-if
                                            if cast-fiyat-yok not = hesayr-anl-yok 
                                              move hesayr-anl-yok to cast-fiyat-yok
                                              move 1 to cast-islendi
                                            end-if
                                            end-if
                                            if linkh-cast-yaz = 1
                                                if castyaz-fiyat not = cast-fiyati
                                                    move   castyaz-fiyat to cast-fiyati
                                                      move 1 to cast-islendi
                                                end-if
                                           end-if
                                           

           
                                           if cast-islendi = 1 then
                                           if  k-kodu-tasi = "X   " 
                                               stop " " 
                                           end-if
                                                 rewrite cast-rec invalid
                                                    stop " "
                                                 end-rewrite
                                          if linkh-nereden  < 9 
                                                 perform log-operation-cast
                                          end-if
                                         end-if
                                      end-read
                                
                                end-if
                             end-if
                      end-if
                end-read
             end-perform
       end-start .
       if son-aks-var = 1 then 
               initialize top-noshow
*********************
               perform dusulecek-bul
               initialize aksiyonlar giris-takildi
                      if xrez-aksiyon-eh = "H" move 9 to aks-bul1 end-if
                      if xrez-aksiyon2-eh = 1  move 9 to aks-bul2 end-if
                      if xrez-special-eh = 1   move 9 to aks-bul3 end-if
                      if xrez-special2-eh = 1  move 9 to aks-bul4 end-if
               initialize takvim-rec
              move xrez-voucher-gir-tar to takvim-anah
              start takvim key >= takvim-anah 
                 invalid
                   continue
                 not invalid
                    perform until fs-takvim = "10"
                        read takvim next no lock 
                            end move "10" to fs-takvim
                            not end 
                              if takvim-anah >= xrez-cik-tar
                                    move "10" to  fs-takvim
                                else
                                  perform cast-bul
*                                  if k-kodu-tasi = "ASYA" and xrez-no = 40896 then stop " " 
*                                  end-if
                                  perform aksiyonlari-bul
                                  
                                  if giris-takildi = 0 then  
                                  perform ham-bul
                                   perform eb-varsa-uyar
                                     perform ug-varsa-uyar
                                   perform cift-indirim-uyar
                                  move gham to son-fiyat
                                  end-if
                                  initialize hesayr-rec
                                   move  takvim-anah to hesayr-tarih
                                   move  xrez-no     to  hesayr-rez-no
                                     perform sira-at 
                                     move k-kodu-tasi to  hesayr-staf
                                  
                                       if giris-takildi = 1 and xrez-voucher-gir-tar < takvim-anah then 
                                         move xrez-voucher-gir-tar to hesayr-tarih
                                         move  xrez-no     to  hesayr-rez-no
                                           read hesayr no lock invalid display message box "Hata Hesap 56999"
                                           not invalid
                                            move takvim-anah to hesayr-tarih
                                     
                                          move  hesayr-basilacak-tut to son-fiyat
                                          end-read
                                       else
*                                  if gham > 0 then 
                                       perform fiyat-bul
*                                  end-if
                                   end-if
                                  move cast-fiyat-konumu  to hesayr-konum
                                   if takvim-anah = xrez-voucher-gir-tar
                                           move 1 to hesayr-per yedek-hesayr-per2
                                            move hesayr-datalar to yedek-hesayr-datalar
                                           else
                                           if xrez-voucher-gir-tar(5:4)  not = "0101" and hesayr-tarih(5:4) = "0101"
                                             initialize yedek-hesayr-datalar
                                           end-if
                                          if hesayr-per-data1 not = yedek-hesayr-per-data1 or hesayr-per-data2 not =  yedek-hesayr-per-data2
                                
                                                  add 1 to yedek-hesayr-per2
                                             end-if
                                                  move yedek-hesayr-per2 to hesayr-per
                                                  move hesayr-datalar to yedek-hesayr-datalar
                                
                                
                                       end-if

                                   write hesayr-rec invalid rewrite hesayr-rec end-write

                                   initialize formulhes-rec
                                   move hesayr-anah to formulhes-anah
                                   inspect formul-text replacing trailing low-values by spaces
                                   move formul-text to formulhes-tum-formul
                                   write formulhes-rec invalid rewrite formulhes-rec end-write


                                       if linkh-anl-yaz = 1 or linkh-cast-yaz = 1  then
                                          if xrez-gec = 1 and takvim-anah < xrez-gir-tar
                                            
                                             if xREZ-FIYAT-FIX not = "E"
                                              
                                                add  son-fiyat   to top-noshow
                                            end-if
                                        else


                                       initialize cast-rec
                                             move xrez-no to cast-rez-no
                                             move takvim-anah to cast-tarih 
                                             read cast no lock
                                               invalid
                                                continue
                                                not invalid
                                                 initialize cast-islendi
                                                  compute castyaz-fiyat = top-noshow + son-fiyat
                                                    initialize  top-noshow
                                                  if linkh-anl-yaz = 1
                                                    if castyaz-fiyat not = cast-anlasma-fiyati
                                                       move   castyaz-fiyat to cast-anlasma-fiyati

                                                    move 1 to cast-islendi
                                                    end-if
                                                    end-if
                                                    if linkh-cast-yaz = 1
                                                        if castyaz-fiyat not = cast-fiyati
                                                            move   castyaz-fiyat to cast-fiyati
                                                              move 1 to cast-islendi
                                                        end-if
                                                   end-if
                                                   if cast-islendi = 1 then 
                                                         rewrite cast-rec invalid
                                                            stop " "
                                                         end-rewrite
                                                         if linkh-nereden  < 9
                                                               perform log-operation-cast
                                                          end-if
                                                        
                                                 end-if
                                              end-read
                                        
                                        end-if
                                 end-if
                              end-if
                        end-read
                     end-perform
       end-start 
       end-if
       close formulhes.
*
 dusulecek-bul.
          
        initialize  toplam-dusulecek
        if  aksiyhrk-ode of a1-rec < toplam-geceleme
        and aksiyhrk-sondan of a1-rec = 1 
         move xrez-cik-tar to takvim-anah
         start  takvim key < takvim-anah
               invalid display message box "Hata"
               not invalid
                 read takvim previous no lock  
                     end stop " "
                     not end
                    compute  beles  = aksiyhrk-gecele of a1-rec - aksiyhrk-ode of a1-rec
                      perform beles times
                     
                      
                         initialize hesayr-rec
                          move takvim-anah to hesayr-tarih
                          move xrez-no     to hesayr-rez-no
                          read hesayr no lock invalid
                             display message box "Hata ddd"
                             not invalid
                             add hesayr-aksa-kadar to toplam-dusulecek
                         end-read
                         read takvim previous no lock  
                         end display message box "hata 2555555505 rezno" xrez-no
                        end-read
                      end-perform
                 end-read
          end-start
         
           compute  sondan-gunluk rounded = toplam-dusulecek / toplam-geceleme
         end-if
         .

*
 xrezden-alf.
                move xrez-kisi           to CAST-KISI
                move xrez-fiyat-konumu   to cast-FIYAT-KONUMU
                move xrez-oda-konumu     to cast-oda-KONUMU
                move xrez-anlasma        to cAST-ANLASMA  
                move xrez-pan-tipi       to CAST-PAN-TIPI
                
                .
* 
 xcasttan-alf.      
        initialize cast-rec
            move xrez-no to cast-rez-no
            if takvim-anah < xrez-gir-tar 
              move xrez-gir-tar to cast-tarih
              else
              move takvim-anah to cast-tarih
            end-if
            read cast no lock invalid
                perform xrezden-alf
                not invalid 
                if tarih-tasi  = cast-tarih 
                   perform xrezden-alf
                else
                 continue
                end-if
*               continue
               | Rezervasyonda kisi planlamasi yapýlýnca rezi degistiriyor...   
            end-read




           .
*
 cast-bul.
*    if tarih-tasi = takvim-anah
*    stop " "  
*    end-if
     evaluate true
        when tarih-tasi >  takvim-anah
           perform xcasttan-alf
        when xrez-plan = 1  and  tarih-tasi not =  takvim-anah
          perform xcasttan-alf


        when xrez-plan not = 1 AND Linkh-nereden <=9  and tarih-tasi not > xrez-gir-tar
           perform xrezden-alf
        when other 
          perform xrezden-alf
     end-evaluate
     .
         
*****           
 sira-hesapla.
       
        initialize for-tum  
        move son-fiyat to ara-fiyat 
        evaluate ik  of tum-wrk
                 when   formul-ind-sira 
                  |||||||||||||
                    if xREZ-NOR-INDIRIM  > 0 then  
                      continue
                    else 
                       exit paragraph
                    end-if
                   if formul-ind-kumule = 1
                     compute top-kumule = top-kumule +  (xREZ-NOR-INDIRIM  * 100)
                      else
                      move 0 to  top-kumule
                      move 0 to SON-KUMULE
                    end-if
                    |||||||||||||
                     if formul-ind-kumule = 1
                       if SON-KUMULE = 0 then 
                         move  son-fiyat to SON-KUMULE
                       end-if
                        move SON-KUMULE to son-fiyat2
                    else            
                        
                        move  son-fiyat to son-fiyat2
                    end-if
                      if xREZ-NOR-INDIRIM  > 0 then  
                         compute ara-fiyat rounded = son-fiyat - (son-fiyat2 * ( xREZ-NOR-INDIRIM  ) / 100 )
                     |||||||||||||
                         if formul-ind-kumule = 1
                           compute ara-fiyat rounded = son-fiyat2 - (son-fiyat2 * ( top-kumule  ) / 10000 )
                         end-if
                     ||||||||||||||||||
                         compute hesayr-ind-tut  = son-fiyat - ara-fiyat
                         move xREZ-NOR-INDIRIM to z-ind
                         move z-ind to hesayr-ind-acik 

                         perform OI-formul-et-yaz

                      end-if
                 when formul-eb-sira 
                     if xrez-eb = "E" and fiyatana-eb-oran not = 0
                        continue
                     else 
                        exit paragraph
                     end-if
***************************////aksiyonda eb uygulama sealight */****************************
                     if aksiyhrk-ebharic of a1-rec = 2 and xrez-eb = "E"
                        initialize xrez-eb
                        exit paragraph 
                     end-if     
***************************////aksiyonda eb uygulama sealight */****************************
                    if formul-eb-kumule = 1

                        if konumind-var = 1
                            compute top-kumule = top-kumule +  
                                 (fiyatind-dizi-eb-oran(cast-fiyat-konumu) * 100)  
                        else
                               compute top-kumule = top-kumule +  
                               ( fiyatana-eb-oran * 100) + fiyatana-eb-kusur 
                         end-if  
                    else
                       move 0 to  top-kumule
                       move 0 to SON-KUMULE
                    end-if
                    if formul-eb-kumule = 1
                        if SON-KUMULE = 0 then 
                         move  son-fiyat to SON-KUMULE
                       end-if
                        move SON-KUMULE to son-fiyat2
                      
                        else
                        move  son-fiyat to son-fiyat2
                    end-if
                     if xrez-eb = "E" and fiyatana-eb-oran not = 0

                         compute eb-oran rounded =
                         (fiyatana-eb-oran +( fiyatana-eb-kusur / 100) )

                         if konumind-var = 1
                            move fiyatind-dizi-eb-oran(cast-fiyat-konumu)  to eb-oran
                         end-if 

                         compute ara-fiyat rounded =
                         son-fiyat - (son-fiyat2 * ( eb-oran ) / 100 )
                         |||||||||||||
                         if formul-eb-kumule = 1
                           compute ara-fiyat rounded = son-fiyat2 - 
                            (son-fiyat2 * ( top-kumule  ) / 10000 )
                         end-if
                     ||||||||||||||||||
                         compute hesayr-eb-tut  = son-fiyat - ara-fiyat
                         move eb-oran to z-ind
                         move z-ind to hesayr-eb-acik 

                       
                         PERFORM EB-FORMUL-ET-YAZ
        
                     end-if


     
 
                 when   formul-ug-sira
*                    if hes-ug-uygulama = 1 then 
*                       exit paragraph  
*                    end-if
                    | jadore için yapýldý
                    if aksiyhrk-ug-uygulama of a1-rec = 2 and xrez-ug-ind = 1
                        exit paragraph 
                    end-if 
                    if aksiyhrk-ug-uygulama of a2-rec = 2 and xrez-ug-ind = 1
                        exit paragraph 
                    end-if 
                    | jadore için yapýldý
                    if fiyatana-ug-oran not = 0 and toplam-geceleme >= fiyatana-ug-geceleme 
                                 and xrez-ug-ind = 1
                       continue
                    else 
                       exit paragraph
                    end-if
                   if formul-ug-kumule = 1
                     compute top-kumule = top-kumule +  ( fiyatana-ug-oran * 100) + fiyatana-ug-kusur 
                      else
                      move 0 to  top-kumule
                      move 0 to SON-KUMULE
                    end-if


                     if formul-ug-kumule = 1
                        if SON-KUMULE = 0 then 
                           move  son-fiyat to SON-KUMULE
                        end-if
                        move SON-KUMULE to son-fiyat2
                    else
                        move  son-fiyat to son-fiyat2
                    end-if
                      if fiyatana-ug-oran not = 0 and toplam-geceleme >= fiyatana-ug-geceleme 
                                 and xrez-ug-ind = 1 then  
                         compute ug-oran rounded = fiyatana-ug-oran + (fiyatana-ug-kusur / 100)
                         if acenta-gross-oran = 1
                              compute hesayr-ug-tut  rounded = gham * (ug-oran /100)

                              else
                               compute hesayr-ug-tut  rounded = son-fiyat2 * (ug-oran /100)
                               |||||||||||||
                         if formul-ug-kumule = 1
                           compute ara-fiyat rounded = son-fiyat2 - (son-fiyat2 * ( top-kumule  ) / 10000 )
                           compute   hesayr-ug-tut = son-fiyat - ara-fiyat
                         end-if
                     ||||||||||||||||||
                         end-if
                         compute ara-fiyat rounded = son-fiyat -  hesayr-ug-tut
                         compute hesayr-ug-tut  = son-fiyat - ara-fiyat
                         move ug-oran to z-ind
                         move z-ind to hesayr-ug-acik 
                                   
                         perform Ug-formul-et-yaz

                     end-if



                 when   formul-ozl-sira
                         
                    initialize yedek-REZ-OZEL-DURUM-CAR
                    move xrez-ozel-durum-car to yedek-REZ-OZEL-DURUM-CAR
                   if ykodlar02-ozel-durum-bas-yil not = spaces
                         
                     if ykodlar02-ozel-durum-bas-yil > 0 and ykodlar02-ozel-durum-bit-yil > 0
                       if takvim-anah < ykodlar02-ozel-durum-bas-tar or
                          takvim-anah > ykodlar02-ozel-durum-bit-tar
                             move  0 to xrez-ozel-durum-car
                       end-if 
                     end-if 
                   end-if 
                          
                 if xrez-ozel-durum-car > 0
                        
                  if formul-ozl-kumule = 1
                     compute top-kumule = top-kumule +  (( 100 - Xrez-ozel-durum-car) * 100 )
                      else
                      move 0 to  top-kumule
                      move 0 to SON-KUMULE
                    end-if
                     if formul-ozl-kumule = 1
                         if SON-KUMULE = 0 then 
                         move  son-fiyat to SON-KUMULE                                    
                        end-if
                        move SON-KUMULE to son-fiyat2
                        else
                        move son-fiyat to son-fiyat2
                    end-if
                    end-if
                     if son-fiyat > 0 then 
                      if xrez-ozel-durum-car > 0
                         evaluate  xrez-ozel-tip 
                             WHEN "3"
                                 compute ara-fiyat rounded =   son-fiyat - 
                                         ( Xrez-ozel-durum-car / toplam-geceleme )
                             when "2"
                               compute ara-fiyat rounded =   son-fiyat - 
                                         ( Xrez-ozel-durum-car  )
                              when "1" 
                                  compute ara-fiyat rounded =   son-fiyat +
                                         ( Xrez-ozel-durum-car  )
                              when other
                              if acenta-gross-oran = 1
                                  compute  hesayr-ozl-tut rounded =  ( gham *
                                        (100 - Xrez-ozel-durum-car)  ) / 100  
                                 compute ara-fiyat = son-fiyat - hesayr-ozl-tut 
                              else
                                 compute ara-fiyat rounded =  son-fiyat - ( son-fiyat2 *
                                        (100 - Xrez-ozel-durum-car)  / 100  )
                              end-if
                          end-evaluate
                       
                          compute hesayr-ozl-tut  = son-fiyat - ara-fiyat
                         move xrez-ozel-durum-car to z-ind
                         if  xrez-ozel-tip = " " or "O"
                             compute hes-acik =  100 -  xrez-ozel-durum-car
                              move hes-acik to z-ind
                         end-if
                         move z-ind to hesayr-ozl-acik(2:) 
                         move xrez-ozel-tip to hesayr-ozl-acik(1:1) 
                         if  xrez-ozel-tip = " " or "O"
                                move "%" to hesayr-ozl-acik(1:1) 
                         end-if
                         

                         perform Od-formul-et-yaz

                      end-if

                    end-if
                      move yedek-REZ-OZEL-DURUM-CAR to xrez-ozel-durum-car
                 when   formul-aks1-sira
                  if  Maceanlas-aks-yok = 1 then exit paragraph    end-if
                   if formul-aks1-kumule = 1  
                       if (aks-bul1 = 1 or 2)  ||ramazan ekleme and (aks-bul1 = 1 or 2)
                          compute top-kumule = top-kumule +  ( (  aksiyhrk-ode of a1-rec)  * 100) 
                       end-if
                   else
                      move 0 to  top-kumule
                      move 0 to SON-KUMULE
                    end-if
                   
                    
                   if formul-aks1-kumule = 1
                        if SON-KUMULE = 0 then 
                         move  son-fiyat to SON-KUMULE
                       end-if
                        move SON-KUMULE to son-fiyat2
                        else  
                        move son-fiyat to son-fiyat2
                    end-if
       
                    if son-fiyat > 0 then 
                     if aks-bul1 = 1 or 2 then
                         if aksiyhrk-sondan of a1-rec  = 1  and aksiyhrk-gecele of a1-rec > 0 then 
                           move son-fiyat to hesayr-aksa-kadar
                           move 1 to son-aks-var
                           compute ara-fiyat rounded = son-fiyat - sondan-gunluk
                            move "S" to  hesayr-aks1-acik
                             move  aksiyhrk-ode of a1-rec to  z-gun
                             
                                  move z-gun  to hesayr-aks1-acik(2:2)
                                  move "/"  to hesayr-aks1-acik(4:1)
                                  move  aksiyhrk-gecele of a1-rec to z-gun
                                  move z-gun to hesayr-aks1-acik(5:2)

                                  perform ak1-formul-et-yaz
                                  initialize son-kumule  top-kumule
                         else
                           if aksiyhrk-gecele of a1-rec = 0 then 
                                compute ara-fiyat rounded = 
                                son-fiyat -(son-fiyat2 * ((  aksiyhrk-ode of a1-rec) / 100 ))
                                 if formul-aks1-kumule = 1
                                      compute ara-fiyat 
                                      rounded = son-fiyat2 -
                                      (son-fiyat2 * ( top-kumule  ) / 10000 )
                          
                                   end-if
                                   move  aksiyhrk-ode of a1-rec to z-ind
                                   move z-ind to hesayr-aks1-acik(2:)
                                   move "%" to  hesayr-aks1-acik(1:1)
                                   
                                   perform ak1-yuzde-formul-et-yaz

                             else
                               compute ara-fiyat rounded = son-fiyat2 * ( aksiyhrk-ode of a1-rec / 
                                  aksiyhrk-gecele of a1-rec )
                                  move  aksiyhrk-ode of a1-rec to  z-gun
                                  move z-gun  to hesayr-aks1-acik(2:2)
                                  move "/"  to hesayr-aks1-acik(4:1)
                                  move  aksiyhrk-gecele of a1-rec to z-gun
                                  move z-gun to hesayr-aks1-acik(5:2)
                                   initialize son-kumule  top-kumule
                                  perform ak1-formul-et-yaz
                            end-if
                         end-if
                             
                         compute hesayr-aks1-tut  = son-fiyat - ara-fiyat                            
                          move aksiyhrk-anah of a1-rec to hesayr-aks1-anah
                         
                     end-if
                     end-if
                 when   formul-aks2-sira
                  if  Maceanlas-aks-yok = 1 then exit paragraph    end-if
                 if formul-aks2-kumule = 1  
                    if (aks-bul2 = 1 or 2)   || ekleme ramazan and (aks-bul2 = 1 or 2)
                        compute top-kumule = top-kumule  + ( (  aksiyhrk-ode of a2-rec)  * 100)
                     end-if
                 else
                    move 0 to  top-kumule
                    move 0 to SON-KUMULE
                 end-if
                  if  Maceanlas-aks-yok = 1 then exit paragraph    end-if
                      if formul-aks2-kumule = 1
                         if SON-KUMULE = 0 then 
                         move  son-fiyat to SON-KUMULE
                       end-if
                        move SON-KUMULE to son-fiyat2
                        else
                        move son-fiyat to son-fiyat2
                    end-if
                     if aks-bul2 = 1 or 2 then
                         if aksiyhrk-sondan of a2-rec  = 1  and aksiyhrk-gecele of a2-rec > 0 then 
                           compute ara-fiyat rounded = son-fiyat - sondan-gunluk
                            move "S" to  hesayr-aks2-acik

                              perform ak2-formul-et-yaz    
                         else
                           if aksiyhrk-gecele of a2-rec = 0 then 
                                compute ara-fiyat rounded = son-fiyat - (son-fiyat2 * ((  aksiyhrk-ode of a2-rec) / 
                                   100 ))
                                   move  aksiyhrk-ode of a2-rec to z-ind
                                   move z-ind to hesayr-aks2-acik(2:)
                                   move "%" to  hesayr-aks2-acik(1:1)

                                   perform ak2-yuzde-formul-et-yaz
                             else
                               compute ara-fiyat rounded = son-fiyat2 * ( aksiyhrk-ode of a2-rec / 
                                  aksiyhrk-gecele of a2-rec )
                                  move  aksiyhrk-ode of a2-rec to  z-gun
                                  move z-gun  to hesayr-aks2-acik(2:2)
                                  move "/"  to hesayr-aks2-acik(4:1)
                                  move  aksiyhrk-gecele of a2-rec to z-gun
                                  move z-gun to hesayr-aks2-acik(5:2)
                                  
                                  perform ak2-formul-et-yaz 

                            end-if
                         end-if
                        
                         compute hesayr-aks2-tut  = son-fiyat - ara-fiyat
                         move aksiyhrk-anah of a2-rec to hesayr-aks2-anah 
                         
                     end-if
                 when  formul-so1-sira
            |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
                  if formul-so1-kumule = 1
                     compute top-kumule = top-kumule 
                       if aksiyhrk-so-yuzde-hes of a3-rec = 1
                           compute top-kumule = top-kumule  + ( (  aksiyhrk-ode of a3-rec)  * 100)
                       end-if 
                      else
                      move 0 to  top-kumule
                      move 0 to SON-KUMULE
                    end-if     
                  if  Maceanlas-spe-yok = 1 then exit paragraph    end-if
                  if formul-so1-kumule = 1  
                          if (aks-bul3 = 1 or 2)
                               if SON-KUMULE = 0 then 
                                 move  son-fiyat to SON-KUMULE
                               end-if
                                move SON-KUMULE to son-fiyat2
                          end-if
                   else
                       move son-fiyat to son-fiyat2
                   end-if
                 if son-fiyat > 0 then 
                     if aksiyhrk-k-bazli of a3-rec = 1  then 
                     continue
                     else
                      move toplam-geceleme to toplam-geceleme-kb3
                     end-if

                         
                     if  aksiyhrk-so-yuzde-hes of a3-rec = 1
                                          
                              compute aksiyhrk-ode-yeni of a3-rec rounded =
                             ( son-fiyat2 * aksiyhrk-ode of a3-rec ) / 100
                             +   ( aksiyhrk-ode-yuz of a3-rec * 100 )
                             move 7 to aksiyhrk-hes-tipi of a3-rec

                     else
                               compute aksiyhrk-ode-yeni of a3-rec rounded =
                               aksiyhrk-ode of a3-rec +    
                               ( aksiyhrk-ode-yuz of a3-rec * 100 )
                     end-if
                     if aks-bul3 = 1 or 2 then
                       if aksiyhrk-ekle of a3-rec = 1 then 
                            move -1 to special-eksi-car
                                else 
                             move 1 to special-eksi-car
                       end-if
                       move 1 to ss-carpan
                       if acenta-bonusda-ss = 1 then
                             if cast-buyuk = 1 then 
                               move 1.5 to ss-carpan
                             end-if

                       end-if
                      evaluate aksiyhrk-hes-tipi of a3-rec
                       when 1
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a3-rec) * ((cast-buyuk * ss-carpan ) + ( cast-kucuk / 2 ) ) / 
                                 toplam-geceleme-kb3)* special-eksi-car )
                       when 2
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a3-rec) * ((cast-buyuk * ss-carpan ) + ( cast-kucuk ) ) / toplam-geceleme-kb3)
                                  * special-eksi-car )
                       when 3
                      
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a3-rec) / toplam-geceleme-kb3)
                                  * special-eksi-car )
                       when 4
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a3-rec) * (cast-buyuk * ss-carpan ))
                                  * special-eksi-car )
                       when 5
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a3-rec) * ((cast-buyuk * ss-carpan ) + ( cast-kucuk / 2 ) ) )
                                  * special-eksi-car )
                       when 6
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a3-rec) * ((cast-buyuk * ss-carpan ) + ( cast-kucuk ) ) )
                                  * special-eksi-car )
                       when 7
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a3-rec))
                                  * special-eksi-car )
                       



                       when other
                            compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a3-rec) * (cast-buyuk * ss-carpan ) / toplam-geceleme-kb3)
                                  * special-eksi-car )
                      end-evaluate
                       compute hesayr-so1-tut  = son-fiyat - ara-fiyat
                       move aksiyhrk-ode-yeni of a3-rec to z2-ind

                       if  aksiyhrk-so-yuzde-hes of a3-rec = 1
                            move aksiyhrk-ode of a3-rec  to z2-ind
                            move "%" to z2-ind(1:1)
                       end-if


           


                       move z2-ind to hesayr-so1-acik 
                      

                       move aksiyhrk-anah of a3-rec to hesayr-so1-anah
 
                       perform spo-formul-et-yaz
                     end-if
                     end-if


                     |//////////////////////////////////////////////////////////////
             ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
                 when   formul-so2-sira
                 if formul-so2-kumule = 1
                     compute top-kumule = top-kumule 
                       if aksiyhrk-so-yuzde-hes of a4-rec = 1
                           compute top-kumule = top-kumule  + ( (  aksiyhrk-ode of a4-rec)  * 100)
                       end-if 
                 else
                      move 0 to  top-kumule
                      move 0 to SON-KUMULE
                    end-if  
                  if  Maceanlas-spe-yok = 1 then exit paragraph    end-if
               
                   if formul-so2-kumule = 1 
                      if (aks-bul4 = 1 or 2)
                        if SON-KUMULE = 0 then 
                         move  son-fiyat to SON-KUMULE
                        end-if
                        move SON-KUMULE to son-fiyat2
                      end-if
                   else
                        move son-fiyat to son-fiyat2
                   end-if

                  if  aksiyhrk-so-yuzde-hes of a4-rec = 1
                              compute aksiyhrk-ode-yeni of a4-rec rounded =   
                              ( son-fiyat2 * aksiyhrk-ode of a4-rec ) / 100 + 
                                  ( aksiyhrk-ode-yuz of a4-rec * 100 )

                                  move 7 to aksiyhrk-hes-tipi of a4-rec
                     else
                               
                           compute aksiyhrk-ode-yeni of a4-rec rounded = aksiyhrk-ode of a4-rec +    
                                  ( aksiyhrk-ode-yuz of a4-rec * 100 )
                   end-if
     

                 if formul-so2-kumule = 1
                        if SON-KUMULE = 0 then 
                         move  son-fiyat to SON-KUMULE
                       end-if
                        move SON-KUMULE to son-fiyat2
                        else
                        move son-fiyat to son-fiyat2
                    end-if
                 if son-fiyat > 0 then 
                       if aks-bul4 = 1 or 2 then
                       if aksiyhrk-ekle of a4-rec = 1 then 
                             move -1 to special-eksi-car
                                else 
                             move 1 to special-eksi-car
                       end-if

                        move 1 to ss-carpan
                       if acenta-bonusda-ss = 1 then
                             if cast-buyuk = 1 then 
                               move 1.5 to ss-carpan
                             end-if

                       end-if
                         evaluate aksiyhrk-hes-tipi of a4-rec
                       when 1
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a4-rec) * ((cast-buyuk * ss-carpan ) + ( cast-kucuk / 2 ) ) / 
                                 toplam-geceleme )
                                 * special-eksi-car )
                       when 2
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a4-rec) * ((cast-buyuk * ss-carpan ) + ( cast-kucuk ) ) / toplam-geceleme)
                                  * special-eksi-car )
                       when 3
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a4-rec) / toplam-geceleme)
                                  * special-eksi-car )
                       when 4
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a4-rec) * (cast-buyuk * ss-carpan ))
                                  * special-eksi-car )
                       when 5
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a4-rec) * ((cast-buyuk * ss-carpan ) + ( cast-kucuk / 2 ) ) )
                                  * special-eksi-car )
                       when 6
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a4-rec) * ((cast-buyuk * ss-carpan ) + ( cast-kucuk ) ) )
                                  * special-eksi-car )
                       when 7
                           compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a4-rec))
                                  * special-eksi-car )
        
                       when other
                            compute ara-fiyat rounded = son-fiyat - 
                                 (((aksiyhrk-ode-yeni of a4-rec) * cast-buyuk / toplam-geceleme)
                                  * special-eksi-car )
                      end-evaluate
                      compute hesayr-so2-tut  = son-fiyat - ara-fiyat
                       move aksiyhrk-ode-yeni of a4-rec to z2-ind
                    
                       if  aksiyhrk-so-yuzde-hes of a4-rec = 1
                            move aksiyhrk-ode of a4-rec  to z2-ind
                            move "%" to z2-ind(1:1)
                       end-if
                          move z2-ind to hesayr-so2-acik
                       move aksiyhrk-anah of a4-rec to hesayr-so2-anah 
                       perform spo-formul-et-yaz
                     end-if
                   end-if
                 when   formul-kkp-sira
                 if fiyatana-kkp-onbin = 1
                         move 10000  to kkp-oran
                      else 
                         move 1000  to kkp-oran
                      end-if
                      if konumind-var = 0
                         move FIYATANA-KICK-BACK2  to fiyatind-dizi-kkp(cast-fiyat-konumu)
                      end-if 
                 if formul-kkp-kumule = 1
                      if fiyatana-kkp-onbin = 1
                     compute top-kumule = top-kumule   + ( fiyatind-dizi-kkp(cast-fiyat-konumu) * 1) 
                     else
                        compute top-kumule = top-kumule   + ( fiyatind-dizi-kkp(cast-fiyat-konumu) * 10 ) 
                     end-if
                      else
                      move 0 to  top-kumule
                      move 0 to SON-KUMULE
                    end-if  
                 if formul-kkp-kumule = 1
                        if SON-KUMULE = 0 then 
                         move  son-fiyat to SON-KUMULE
                       end-if
                        move SON-KUMULE to son-fiyat2
                        else
                        move son-fiyat to son-fiyat2
                    end-if
                      
                      if  fiyatind-dizi-kkp(cast-fiyat-konumu) not = 0
                       if acenta-gross-oran = 1 
                                 compute hesayr-kkp-tut rounded = gham * ( fiyatind-dizi-kkp(cast-fiyat-konumu) ) / kkp-oran 
                                 compute  ara-fiyat =  son-fiyat -  hesayr-kkp-tut
                               else
                                 compute ara-fiyat rounded = son-fiyat -(son-fiyat2 * (fiyatind-dizi-kkp(cast-fiyat-konumu) ) / kkp-oran )
                                 if formul-kkp-kumule = 1
                                   compute ara-fiyat rounded = son-fiyat2 - (son-fiyat2 * ( top-kumule  ) / 10000 )
                                  
                                 end-if
                       end-if
                         compute hesayr-kkp-tut  = son-fiyat - ara-fiyat
                         move fiyatind-dizi-kkp(cast-fiyat-konumu) to z2-ind
                         move z2-ind to hesayr-kkp-acik 


                         PERFORM kkp-formul-et-yaz
                     end-if


                 when   formul-kom-sira 
                    move acenta-kom-orani to uygulanacak-kom||| rezervasyonun 1 periyodunda komisyon var diðerinde yok o yüzden eklendi.|RAMAZAN greenland
                    if formul-kom-kumule = 1 and Maceanlas-kom-yok not = 1
                     
                            compute top-kumule = top-kumule  
                            compute top-kumule = top-kumule  + (uygulanacak-kom  * 100)
                      else
                              move 0 to  top-kumule
                              move 0 to SON-KUMULE
                    end-if  
                    if formul-kom-kumule = 1
                         if SON-KUMULE = 0 then 
                         move  son-fiyat to SON-KUMULE
                       end-if
                        move SON-KUMULE to son-fiyat2
                        else
                        move son-fiyat to son-fiyat2
                    end-if
                    if uygulanacak-kom   > 0.01  and genel-kom-uygula = 1 
                           
                         if Maceanlas-kom-yok = 1 |||| adalya elite istek
                            move 0  to uygulanacak-kom
                         end-if  |||| adalya elite istek
*                    if  FIYATANA-Komisyon > 0.01
                         compute ara-fiyat rounded = son-fiyat - (son-fiyat2 * ( uygulanacak-kom ) / 100 )
                         compute hesayr-kom-tut  = son-fiyat - ara-fiyat
                         move uygulanacak-kom to z-ind
                         move z-ind to hesayr-kom-acik 
*                     end-if

                  end-if

                 when   formul-kb-sira 
                   if fiyatana-kick-onbin = 1
                         move 10000  to kick-oran
                      else 
                         move 1000  to kick-oran
                      end-if
                      if konumind-var = 0
                         move FIYATANA-KICK-BACK  to fiyatind-dizi-kb(cast-fiyat-konumu)
                      end-if
                  if formul-kb-kumule = 1
                      if fiyatana-kick-onbin = 1
                        compute top-kumule = top-kumule + ( fiyatind-dizi-kb(cast-fiyat-konumu) * 1 ) 
                     else
                        compute top-kumule = top-kumule + ( fiyatind-dizi-kb(cast-fiyat-konumu) * 10 ) 
                     end-if
                   else
                      move 0 to  top-kumule
                      move 0 to SON-KUMULE
                   end-if

                 if formul-kb-kumule = 1
                    if SON-KUMULE = 0 then 
                       move  son-fiyat to SON-KUMULE
                    end-if
                    move SON-KUMULE to son-fiyat2
                 else
                    move son-fiyat to son-fiyat2
                 end-if
                    
                        if  fiyatind-dizi-kb(cast-fiyat-konumu) not = 0
                               
                           if acenta-gross-oran = 1 
                              compute hesayr-kb-tut rounded = gham *
                              (fiyatind-dizi-kb(cast-fiyat-konumu)) / kick-oran
                              compute ara-fiyat = son-fiyat - hesayr-kb-tut
                           else
                              compute ara-fiyat rounded =  
                              son-fiyat -                                 
                              (son-fiyat2 * ( fiyatind-dizi-kb(cast-fiyat-konumu) ) / 
                              kick-oran)
                                 if formul-kb-kumule = 1
                                   compute ara-fiyat rounded = son-fiyat2 - (son-fiyat2 * ( top-kumule ) / 10000 )                                  
                                 end-if
                           end-if
                                 compute hesayr-kb-tut  = son-fiyat - ara-fiyat
                                 move fiyatind-dizi-kb(cast-fiyat-konumu) to z2-ind
                                 move z2-ind to hesayr-kb-acik 

                         PERFORM kck-formul-et-yaz
                        

                         end-if
                 when   formul-fm-sira 
                      move son-fiyat to hesayr-fm-tut
                 when   formul-mo-sira       
                       move son-fiyat to hesayr-mo-tut



            end-evaluate
            move ara-fiyat to son-fiyat .

*****
 fiyat-bul.
            
        initialize formul-text son-kumule 

        if takvim-anah = xrez-voucher-gir-tar and fiyatana-fiks = 1 
          move 1 to giris-takildi
        end-if
      
        move gham to son-fiyat
        move son-fiyat to hesayr-ham-fiyat
        move fiyatana-anah to hesayr-ham-anah
         if acenta-yfiyat = 1 then
        

           if webfiyat-ham-fiyat > gham
               
              move webfiyat-ham-fiyat to hesayr-ham-fiyat
            end-if
            if webfiyat-ham-fiyat = 0 then 
                move son-fiyat to hesayr-ham-fiyat
            end-if

               move webfiyat-anah to hesayr-ham-anah
        end-if
         if gham = 0 then 
           move 1 to hesayr-anl-yok
           move 1 to linkh-fiyat-yok
           else
           move 0 to hesayr-anl-yok
         end-if
        if grup-fiyati-uygulandi not = 1 then 
         move fiyatana-anah to hesayr-ham-anah
               perform varying ik from 1 by 1 until ik >13
                    perform sira-hesapla
                    
               end-perform 
       else
          move high-values to hesayr-ham-anah(1:1)
          move grupfiy-anahtar to hesayr-ham-anah(2:)
          initialize fiyatana-rec
           perform varying ik from 1 by 1 until ik >13
                    perform sira-hesapla
                    
               end-perform 
        end-if
       move son-fiyat to hesayr-basilacak-tut
*       if son-fiyat > 0 or grup-fiyati-uygulandi  = 1 then 
             move son-fiyat to son-bulunan-hesap
             
*       end-if
          
       if linkh-nereden > 0 and son-fiyat = 0  | sonradan > 2 denecek
         if  gham = 0  and takvim-anah < xrez-gir-tar
          
           if   tarih-tasi <= xrez-gir-tar and linkh-nereden <= 2
              display message box "Anlasma Fiyati bulunamadigindan dolayi " new-line
                               "Gec giristen dolayi double posting yapilmayacaktir..."  title "ANLASMA YOK" icon 1
             end-if
           else
          if  ode-posting not = "H"
            if son-bulunan-hesap > 0 then 
                move son-bulunan-hesap to hesayr-basilacak-tut  hesayr-ham-fiyat son-fiyat
              else
                move xrez-fiyati to hesayr-basilacak-tut  hesayr-ham-fiyat son-fiyat
            end-if
          end-if
          end-if
       end-if
       
      
         .
        
* 
 sira-at.
           
       move    formul-ind-sira    to     hesayr-ind-sira      
       move    formul-eb-sira     to     hesayr-eb-sira       
       move    formul-ug-sira     to     hesayr-ug-sira       
       move    formul-ozl-sira    to     hesayr-ozl-sira      
       move    formul-aks1-sira   to     hesayr-aks1-sira     
       move    formul-aks2-sira   to     hesayr-aks2-sira     
       move    formul-so1-sira    to     hesayr-so1-sira      
       move    formul-so2-sira    to     hesayr-so2-sira      
       move    formul-kkp-sira    to     hesayr-kkp-sira      
       move    formul-kom-sira    to     hesayr-kom-sira      
       move    formul-kb-sira     to     hesayr-kb-sira       
       move    formul-fm-sira     to     hesayr-fm-sira       
       move    formul-mo-sira     to     hesayr-mo-sira       
       







             


           
 


            .
*
 geceleme-bul.
      initialize takvim-rec
      move xrez-voucher-gir-tar to takvim-anah.
      start takvim key >= takvim-anah 
         invalid
           continue
         not invalid
            perform until fs-takvim = "10"
                read takvim next no lock 
                    end move "10" to fs-takvim
                    not end 
                      if takvim-anah >= xrez-cik-tar
                            move "10" to  fs-takvim
                        else
                           add 1 to toplam-geceleme
                      end-if
                end-read
             end-perform
       end-start

       .
*
*
 geceleme-bul-kb3.
       
      if aksiyhrk-parca-uygula = 1 
          move toplam-geceleme to toplam-geceleme-kb3
       else
       move xrez-voucher-gir-tar to sbas-tar
       if xrez-voucher-gir-tar  <  aksiyhrk-bas-tar of aksiyhrk-rec 
            move aksiyhrk-bas-tar of aksiyhrk-rec to sbas-tar
      end-if
       move  xrez-cik-tar to sbit-tar
       if aksiyhrk-bit-tar  of aksiyhrk-rec < sbit-tar
         move aksiyhrk-bit-tar  of aksiyhrk-rec to sbit-tar
         compute toplam-geceleme-kb3 = function INTEGER-OF-DATE(sbit-tar) - function INTEGER-OF-DATE(sbas-tar) + 1
       else 
         compute toplam-geceleme-kb3 = function INTEGER-OF-DATE(sbit-tar) - function INTEGER-OF-DATE(sbas-tar)
       end-if
         
       
       end-if 
       . 

yham-bul.
     initialize webfiyat-rec
     move takvim-anah to webfiyat-tarih
     move acenta-kodu to webfiyat-acenta
     move xrez-fiyat-konumu to webfiyat-konum
     read webfiyat no lock invalid 
         continue
           
         not invalid 
           move WEBFIYAT-FIYAT to gham 
     end-read
     .



ham-bul.
    
    if acenta-yfiyat = 1 then 
        perform yham-bul
        exit paragraph
    end-if
      initialize gfiyatlar ace-bitti.
       if genel-def-var = 1 or  acenta-def-var  = 1 
          if xrez-fix-anl = 1 
               move 1 to ace-bitti
           else
        initialize aceanlas-rec 
                     move xrez-rate-acenta       to aceanlas-acenta
                     move high-values            to aceanlas-anlasma-tar
                     start aceanlas key not > aceanlas-bul invalid
                           move 1 to ace-bitti
                    end-start
           end-if
       end-if
       if ode-posting = "H" then          
           move 0 to gham
           exit paragraph
        end-if
 
      if xrez-grup-no > 0 then
      move high-values to grupfiy-rec
      move xrez-grup-no     to grupfiy-kodu
      move xrez-fiyat-konumu  to grupfiy-konum
      move xrez-buyuk         to grupfiy-pax 
      
       start grupfiy key < grupfiy-anah2
          invalid  
            continue
          not invalid 
           perform until fs-grupfiy = "10"
               read grupfiy previous no lock end move "10" to fs-grupfiy
                  not end 
                  if grupfiy-kodu  not = xrez-grup-no 
                     exit perform
                  end-if
                  if xrez-grup-no       not =  grupfiy-kodu or
                      xrez-fiyat-konumu  not = grupfiy-konum   or
                      xrez-buyuk         not = grupfiy-pax  
                    exit perform
                 end-if
                 if grupfiy-child > 0 and xrez-kucuk = 0 
                      exit perform cycle
                 end-if 
                  if (takvim-anah >= grupfiy-bas-tarih or grupfiy-bas-tarih < "11111111" )  and 
                     (takvim-anah <= grupfiy-bit-tarih or grupfiy-bit-tarih < "11111111" )

                      move grupfiy-ayrilan-tutar to gham
                      if xrez-kucuk > 0 then 
                      | grup fiyatýna sea light için çocuk eklendi bunda sonra kullanmak isteyen çocuk fiyatý girecek
*                         if grupfiy-child not > 0
*                             move xrez-buyuk to grupfiy-pax 
*                             read grupfiy no lock invalid continue
*                                not invalid
*                                  compute  gham  = gham + ((grupfiy-ayrilan-tutar / 4) * xrez-kucuk )
*                             end-read
                      | grup fiyatýna sea light için çocuk eklendi bunda sonra kullanmak isteyen çocuk fiyatý girecek
*                         else
                            move xrez-kucuk to grupfiy-child
                            move xrez-buyuk to grupfiy-pax 
                            read grupfiy no lock invalid 
                               continue
                            not invalid
                               compute  gham  = grupfiy-ayrilan-tutar  
                            end-read
*                         end-if 
                      end-if   
                      move 1 to grup-fiyati-uygulandi
                       exit perform
                  end-if
              end-read
           end-perform 
      end-if

       if  grup-fiyati-uygulandi = 1 then 
            exit paragraph
       end-if
      
         move xrez-rate-acenta     to fiyat-acenta      
         move takvim-anah          to fiyat-tarih       
         move xrez-tipi            to fiyat-rez-tipi    
         move cast-pan-tipi        to fiyat-pan-tipi    
         move xrez-banka           to fiyat-banka      
         move xrez-doviz           to fiyat-doviz      
         move xrez-anlasma         to fiyat-anlasma     
         move cast-buyuk           to fiyat-buyuk       
         move cast-kucuk           to fiyat-kucuk  
       initialize  Maceanlas-aks-yok Maceanlas-spe-yok  Maceanlas-kom-yok
        if (genel-def-var   = 1 or  acenta-def-var  = 1) and  xrez-fix-anl not = 1 
  
         if ace-bitti not = 1  
          
             perform test after until gham > 0 or ace-bitti = 1  
       
                    initialize   fs-aceanlas
                     perform  until fs-aceanlas = "10"
                     read aceanlas previous no lock 
                        end move "10" to fs-aceanlas
                          move 1 to  ace-bitti   
                     not at end
                           if xrez-rate-acenta not =  aceanlas-acenta then
                               move "10" to fs-aceanlas 
                              move 1 to  ace-bitti   
                           else 
                              if genel2-aceanlas-referansli = 1    |||X firat ekleme 12/2/2021
                                 if onkpara-referans-var = 1 
                                    evaluate onkpara-referans-nerden
                                        when 1 
                                             open input konum 
                                             initialize konum-rec 
                                             move rez-fiyat-konumu to konum-anahtar 
                                             read konum no lock invalid
                                                  continue
                                             end-read 
                                             close konum
                                             if aceanlas-referans not = spaces and aceanlas-referans not = 0 
                                                if konum-ref not = aceanlas-referans
                                                   exit perform cycle
                                                end-if
                                             end-if 
                                        when 2
                                             open input odalar 
                                             initialize odalar-rec 
                                             move rez-odano to odalar-rec 
                                             read odalar no lock invalid
                                                  continue
                                             end-read 
                                             close odalar 
                                             if aceanlas-referans not = spaces and aceanlas-referans not = 0
                                                if odalar-referans not = aceanlas-referans
                                                   exit perform cycle
                                                end-if
                                             end-if
                                    end-evaluate 
                                 end-if
                              end-if   |||X
                            if aceanlas-tutar-sira > 0 and  aceanlas-tutar-sira <= 9
                                      if xkonum-tutar-sira(xrez-fiyat-konumu) not = aceanlas-tutar-sira
                                       exit perform  cycle
                                      end-if
                             end-if
                             if aceanlas-haftatek > "9" then 
                                   move 0 to    aceanlas-haftatek 
                             end-if
                             if aceanlas-sart-var = 1 or aceanlas-hs = 1 or 
                               aceanlas-min-max-var = 1 or aceanlas-haftatek > 0 then 
                                    perform ace-takvim
                             end-if                          
                             if xrez-al-tar <= aceanlas-kabul-bit and 
                                xrez-al-tar >= aceanlas-kabul-bas and
                                takvim-anah >= aceanlas-donem-bas and
                                takvim-anah <= aceanlas-donem-bit and 
                                (aceanlas-min-max-var not = 1 or                                
                                  (ace-top-gece >= aceanlas-min-gece and 
                                    ace-top-gece <= aceanlas-max-gece )                                  
                                    ) and 
                                ( aceanlas-hs not = 1  or ace-hs-var = 1  ) and 
                                 (aceanlas-sart-var not = 1 or 
                                  (ace-sart-gece >= aceanlas-sart-min-gece and 
                                    ace-sart-gece <= aceanlas-sart-max-gece ))  and 
                                    ( aceanlas-haftatek not > 0 or ( takvim-gun-adi = aceanlas-haftatek and 
                                       ace-top-gece = 1) )
                                                    move aceanlas-anlasma to fiyat-anlasma
                                                    move "10" to fs-aceanlas 
                
                                    end-if 
*/artemis ramazan                             if xrez-al-tar <= aceanlas-kabul-bit and 
*                                xrez-al-tar >= aceanlas-kabul-bas and
*                                takvim-anah >= aceanlas-donem-bas and
*                                takvim-anah <= aceanlas-donem-bit then 
*                                    move aceanlas-anlasma to fiyat-anlasma
*                                    move "10" to fs-aceanlas 
*                             end-if                          
                           end-if
                     end-read
                     end-perform
        
           if ace-bitti = 1   then 
               exit perform cycle 
           end-if
        
         move  aceanlas-aks-yok to  Maceanlas-aks-yok
         move  aceanlas-spe-yok to  Maceanlas-spe-yok
         move aceanlas-ace-kom-uygulama to  Maceanlas-kom-yok
         read fiyat no lock    invalid
                     move 0 to gham
              not invalid
                     move fiyat-acenta    to fiyatana-acenta 
                     move fiyat-bas-tarih to fiyatana-ilk-tarih
                     move fiyat-bit-tarih to fiyatana-son-tarih
                     move fiyat-rez-tipi  to fiyatana-rez-tipi 
                     move fiyat-pan-tipi  to fiyatana-pan-tipi 
                     move fiyat-banka     to fiyatana-banka 
                     move fiyat-doviz     to fiyatana-doviz 
                     move fiyat-anlasma   to fiyatana-anlasma
                     move fiyat-buyuk     to fiyatana-buyuk
                     move fiyat-kucuk     to fiyatana-kucuk

             read fiyatana no lock invalid 
                    display message box fiyat-acenta "-Acentasinda Fiyat Bakima ihtiyac vardir." new-line
                                                     "Fiyat Giris Ekraninda Sag alt da yer almaktadir."
                                    title "Uyari"
                                    icon 1
               not invalid

                    initialize fiyatind-rec 
                    move fiyatana-anah to fiyatind-anah
                    read fiyatind no lock invalid 
                         move 0  to konumind-var 
                    not invalid
                         move 1  to konumind-var 
                    end-read 

                    move fiyatana-oda-fiyati(cast-fiyat-konumu) to gham
                    if  fiyatana-fiks = 1 
                        if takvim-anah = xrez-voucher-gir-tar 
                                     continue
                              else
                                   move 0 to gham
                           end-if
                    end-if
                    if fiyatana-haftasonuvar = 1 and (takvim-gun-adi = 5 or 6 or 7) then
                          move fiyatana-oda-fiyati(cast-fiyat-konumu + 30 ) to gham
                          if gham not > 0 then 
                                move fiyatana-oda-fiyati(cast-fiyat-konumu) to gham
                          end-if
                    end-if

             end-read 
         end-read    
       end-perform 
       end-if
       else
           
         read fiyat no lock    invalid
                  move 0 to gham
              not invalid
                     move fiyat-acenta    to fiyatana-acenta 
                     move fiyat-bas-tarih to fiyatana-ilk-tarih
                     move fiyat-bit-tarih to fiyatana-son-tarih
                     move fiyat-rez-tipi  to fiyatana-rez-tipi 
                     move fiyat-pan-tipi  to fiyatana-pan-tipi 
                     move fiyat-banka     to fiyatana-banka 
                     move fiyat-doviz     to fiyatana-doviz 
                     move fiyat-anlasma   to fiyatana-anlasma
                     move fiyat-buyuk     to fiyatana-buyuk
                     move fiyat-kucuk     to fiyatana-kucuk

             read fiyatana no lock invalid 
                   display message box fiyat-acenta "Fiyat bakima ihtiyac var Fiyat girisinde sag altta"
               not invalid
                     
                    initialize fiyatind-rec 
                    move fiyatana-anah to fiyatind-anah
                    read fiyatind no lock invalid 
                         move 0  to konumind-var 
                    not invalid
                         move 1  to konumind-var 
                    end-read 
                
                    move fiyatana-oda-fiyati(cast-fiyat-konumu) to gham

                    if fiyatana-haftasonuvar = 1 and (takvim-gun-adi = 5 or 6 or 7) then
                          move fiyatana-oda-fiyati(cast-fiyat-konumu + 30 ) to gham
                          if gham not > 0 then 
                                move fiyatana-oda-fiyati(cast-fiyat-konumu) to gham
                          end-if
                    end-if
             end-read 
         end-read  
     
       end-if.

*
 cift-indirim-uyar.
     if (linkh-nereden < 3  )   and REZ-FIYAT-FIX  not = "E" 
     if xrez-ug-ind = 1 
       if not (fiyatana-ug-oran > 0 and toplam-geceleme >= fiyatana-ug-geceleme) 

*          display message box
*          " Uzun geceleme indirimini kapsamiyor ve kaldirilacak "
          move 0 to xrez-ug-ind
         
       end-if
    end-if
    if xrez-eb = "E" 
       if not (fiyatana-eb-oran > 0 )
*        if (linkh-nereden < 3  )
*          display message box
*             " EB indirimini kapsamiyor ve kaldirilacak "
*        end-if
         move "H" to xrez-eb
       end-if
    end-if
    end-if.
    .
    
*
 ug-varsa-uyar.
      if linkh-nereden >= 3
      if fiyatana-ug-oran > 0 and toplam-geceleme >= fiyatana-ug-geceleme 
         and xrez-ug-ind = 0 then 
              
                   move 1 to xrez-ug-ind
                 
      end-if
      end-if
     if ug-sorma not = 1
     if linkh-nereden <= 3
      if fiyatana-ug-oran > 0 and toplam-geceleme >= fiyatana-ug-geceleme 
         and xrez-ug-ind = 0 then 
         move 1 to  xrez-ug-ind
*             initialize mesaj-degiskenler
               
*                move " [ Uzun Geceleme Indirimini Kapsayan Rez ] " to mmesaj-title
*                move " Bu Rezervasyon Uzun Geceleme Indirimi Sartlarini Sagliyor  " to mmesaj-1
*                move " UZUN GECELEME SECENEGI CHECH EDILSIN MI ?? " to mmesaj-2 
*                move " ..... [ E->Check Et H->Check Iptal I->Iptal ]  ........ " to mmesaj-3 
*                move 4           to mmesaj-type
*                move 1           to mmesaj-icon
*                move 3           to mmesaj-default
*                perform mmesaj-ver
*                if donus-kodu = 1
*                   move 1 to xrez-ug-ind
*                   else
*                   move 1 to ug-sorma
*                end-if
      end-if
      end-if
      end-if.
*
 eb-varsa-uyar.
         if xREZ-FIYAT-FIX = "E" 
           exit paragraph
         end-if
         if linkh-nereden >= 3  and xrez-al-tar not < fiyatana-eb-bas-tarih  and
                xrez-al-tar not > fiyatana-eb-bit-tarih  and xrez-eb not = "E"
                      
                    move "E" to xrez-eb

         end-if 
        if eb-sorma not = 1 then 
        if linkh-nereden <= 3
         if fiyatana-eb-oran not = 0 
            and xrez-al-tar not < fiyatana-eb-bas-tarih  and
                xrez-al-tar not > fiyatana-eb-bit-tarih  and xrez-eb not = "E"
                 move "E" to xrez-eb
*                if linkh-nereden < 3
*                    initialize mesaj-degiskenler
*                    move " [ Early Booking Rezervasyon ] " to mmesaj-title
*                    move " GIRDIGINIZ RERVASYON BU TARIH ITIBARIYLE E/B ICERIYOR.. " to mmesaj-1
*                    move " EARLY BOOKING SECENEGI CHECH EDILSIN MI  ............?? " to mmesaj-2 
*                    move " ..... [ E->Check Et H->Check Iptal I->Iptal ]  ........ " to mmesaj-3 
*                    move 4           to mmesaj-type
*                    move 1           to mmesaj-icon
*                    move 3           to mmesaj-default
*                    perform mmesaj-ver
*                    if donus-kodu = 1
*                       move "E" to xrez-eb
*                       else
*                       move 1 to eb-sorma 
*                    end-if
*                  
*                end-if

         end-if
         end-if
         end-if


    . 
      

*
 mmesaj-ver.
      inspect mmesaj-1 replacing trailing spaces by low-values
      inspect mmesaj-2 replacing trailing spaces by low-values
      inspect mmesaj-3 replacing trailing spaces by low-values
      display message box mmesaj-1, new-line, mmesaj-2, new-line, mmesaj-3
              title   = mmesaj-title
              type    = mmesaj-type
              icon    = mmesaj-icon
              default = mmesaj-default
              returning donus-kodu.
*
 acenta-bakim.
       initialize fiyat-rec
       move acenta-kodu to fiyat-acenta
       start fiyat key not < fiyat-anah invalid 
              continue
           not invalid
           perform until fs-fiyat = "10"
                  read fiyat next no lock end 
                         move "10" to fs-fiyat
                      not at end
                        if fiyat-acenta = acenta-kodu
                               delete fiyat invalid stop " " end-delete
                         else
                            move "10" to fs-fiyat
                       end-if
                   end-read
          end-perform
      end-start
         initialize fiyat-rec fiyatana-rec 
       move acenta-kodu to fiyatana-acenta

    
        start fiyatana key not < fiyatana-anah invalid 
              continue
           not invalid
           perform until fs-fiyatana = "10"
                  read fiyatana next no lock end 
                         move "10" to fs-fiyatana
                      not at end
                      
                        if fiyatana-acenta = acenta-kodu
                          if fiyatana-buyuk not > 0 and FIYATANA-kucuk not > 0 then 
                             delete fiyatana invalid stop " " end-delete
                            else
                            perform fiyat-yaz
                          end-if
                         else
                            move "10" to fs-fiyatana
                       end-if
                   end-read
          end-perform
      end-start
      perform varying ig-h from 1 by 1 until ig-h > 6 
             evaluate ig-h 
                   when 1   move "A" to atipi-h
                   when 2   move "B" to atipi-h 
                   when 3   move "S" to atipi-h                  
                   when 4   move "K" to atipi-h 
                   when 5   move "O" to atipi-h 
                   when 6   move "P" to atipi-h 
                    
               end-evaluate
           initialize aksiyhrk-rec
          move atipi-h       to aksiyhrk-tipi  of aksiyhrk-rec
          move acenta-kodu to aksiyhrk-acenta  of aksiyhrk-rec

        start aksiyhrk key >= aksiyhrk-anah of aksiyhrk-rec
         invalid continue
         not invalid 
           perform until fs-aksiyhrk = "10" 
              read aksiyhrk next no lock end move "10" to fs-aksiyhrk
              not end
                if aksiyhrk-acenta of aksiyhrk-rec = acenta-kodu and aksiyhrk-tipi of aksiyhrk-rec = atipi-h then 
                   delete aksiyhrk invalid stop " "  end-delete
                  else
                   move "10" to fs-aksiyhrk
                   exit perform cycle
                 end-if
             end-read
           end-perform
         end-start


         initialize aksiyon-rec
          move atipi-h       to aksiyon-tipi
          move acenta-kodu to aksiyon-acenta

       start aksiyon key >= aksiyon-anah
         invalid continue
         not invalid 
           perform until fs-aksiyon = "10" 
              read aksiyon next no lock end move "10" to fs-aksiyon
              not end
                if aksiyon-acenta = acenta-kodu and aksiyon-tipi = atipi-h then 
                  continue
                  else
                   move "10" to fs-aksiyon
                   exit perform cycle
                 end-if
         initialize aksiyon2-rec 
          move aksiyon-anah to aksiyon2-anah
          read aksiyon2 no lock invalid continue
          end-read

        initialize takvim-rec
       move aksiyon-g-tarih   to takvim-anah
       start takvim key not < takvim-anah invalid
              continue
         not invalid
               move zeroes to fs-takvim
          perform with test after until fs-takvim = "10"
           read takvim next no lock end move "10" to fs-takvim
           not at end
               if takvim-anah > aksiyon-c-tarih
                  move "10" to fs-takvim
                  exit perform cycle
               end-if

           move aksiyon-tipi     to aksiyhrk-tipi  of aksiyhrk-rec
           move aksiyon-acenta   to aksiyhrk-acenta  of aksiyhrk-rec
           move aksiyon-bos to aksiyhrk-bos  of aksiyhrk-rec
           move aksiyon-pan-tipi to aksiyhrk-pan-tipi of aksiyhrk-rec
           move aksiyon-hes-tipi to aksiyhrk-hes-tipi  of aksiyhrk-rec
           move aksiyon-ekle     to aksiyhrk-ekle    of aksiyhrk-rec
           move takvim-anah      to aksiyhrk-tarih   of aksiyhrk-rec
           move aksiyon-gecele   to aksiyhrk-gecele  of aksiyhrk-rec
           move aksiyon-ebharic to aksiyhrk-ebharic of aksiyhrk-rec
           move aksiyon-k-bazli to aksiyhrk-k-bazli of aksiyhrk-rec
            compute  aksiyhrk-ode  of aksiyhrk-rec rounded =  aksiyon-ode +
                     ( aksiyon-ode-kusur / 100 ) 
           move AKSIYon-BOS to AKSIYHRK-BOS     of aksiyhrk-rec

            if aksiyon-ode-yuz > 0 and aksiyon-ode-yuz < 99
             continue
             else
             move 0 to  aksiyon-ode-yuz
          end-if
            move  aksiyon-ode-yuz to aksiyhrk-ode-yuz of aksiyhrk-rec
           compute aksiyhrk-ode-yeni of aksiyhrk-rec rounded = aksiyhrk-ode of aksiyhrk-rec +    
                          ( aksiyhrk-ode-yuz of aksiyhrk-rec * 100 )


           move aksiyon-sondan   to aksiyhrk-sondan of aksiyhrk-rec
           move aksiyon-ebharic  to aksiyhrk-ebharic  of aksiyhrk-rec
 
           if aksiyon-tipi = "S"
              initialize aksiyhrk-gecele of aksiyhrk-rec aksiyhrk-ode of aksiyhrk-rec  aksiyhrk-ebharic of aksiyhrk-rec 
           end-if 
            move AKSIYON2-rezal-tar1    to aksiyhrk-rezal-tar1   of aksiyhrk-rec
            move AKSIYON2-rezal-tar2    to aksiyhrk-rezal-tar2   of aksiyhrk-rec
            move AKSIYON-G-TARIH        to aksiyhrk-bas-tar      of aksiyhrk-rec
            move AKSIYON-C-TARIH       to aksiyhrk-bit-tar      of aksiyhrk-rec
            move aksiyon-konumlar      to aksiyhrk-konumlar     of aksiyhrk-rec
            move aksiyon-min-gece      to aksiyhrk-minimum      of aksiyhrk-rec
            move aksiyon-max-gece      to aksiyhrk-maximum      of aksiyhrk-rec 
            move aksiyon-parca-uygula  to aksiyhrk-parca-uygula of aksiyhrk-rec            
            move aksiyon-so-yuzde-hes  to aksiyhrk-so-yuzde-hes of aksiyhrk-rec
            move aksiyon-ug-uygulama   to aksiyhrk-ug-uygulama  of aksiyhrk-rec
            move aksiyon-hafta-gunleri to aksiyhrk-hafta-gunleri  of aksiyhrk-rec
            move aksiyon-oto-bil-dus to aksiyhrk-oto-bil-dus
           write aksiyhrk-rec invalid 
                 rewrite aksiyhrk-rec  
                end-rewrite continue
           end-write
           end-read
*               modify Form1-Gd-1, record-to-add (form1-gd-1-record)
          end-perform
         end-start
         end-read

         end-perform
         end-start
         end-perform
            display message box "Bakim Tamamlandi"
      .


 
      .
 fiyat-yaz .
    initialize takvim-rec
    move fiyatana-ilk-tarih to takvim-anah.
    start takvim key not < takvim-anah 
       invalid continue
       not invalid
      perform  until fs-takvim = "10",
         read takvim next no lock end,
              move "10" to fs-takvim
          not end,
          if takvim-anah > fiyatana-son-tarih
                    move "10" to fs-takvim,
          end-if,
             if takvim-anah not > fiyatana-son-tarih
               and  takvim-anah not < fiyatana-ilk-tarih
              initialize fiyat-rec
              move fiyatana-acenta           to fiyat-acenta
              move fiyatana-anlasma          to fiyat-anlasma
              move takvim-anah               to fiyat-tarih
              move fiyatana-banka            to fiyat-banka
              move fiyatana-doviz            to fiyat-doviz
              move fiyatana-pan-tipi         to fiyat-pan-tipi
              move fiyatana-rez-tipi         to fiyat-rez-tipi
              move fiyatana-buyuk            to fiyat-buyuk
              move fiyatana-kucuk            to fiyat-kucuk
              move fiyatana-ilk-tarih        to fiyat-bas-tarih
              move fiyatana-son-tarih        to fiyat-bit-tarih
              write fiyat-rec invalid
                    rewrite fiyat-rec invalid continue 
                    end-rewrite
              end-write

          end-if,
        end-read,
      end-perform
    end-start  .
 
*
 ace-takvim.
        open input takvim3
        initialize     ace-sart-gece  ace-hs-var  ace-top-gece
        move xrez-gir-tar to takvim3-anah 
        start takvim3 key >= takvim3-anah invalid continue
           not invalid 
           perform until fs-takvim3  = "10" 
                 read takvim3 next no lock end move "10" to fs-takvim3
                     not end 
                       if takvim3-anah >=  xrez-cik-tar
                           move "10" to fs-takvim3
                       else
                            add 1 to ace-top-gece                          
                            evaluate aceanlas-hs-gun(1:1) 
                            when 1
                                if takvim-anah = takvim3-anah and (takvim3-gun-adi = 5 or 6 or 7)then 
                                   move 1 to ace-hs-var 
                                end-if                                                             
                            when 2
                                if takvim-anah = takvim3-anah and (takvim3-gun-adi = 6 or 7) then 
                                   move 1 to ace-hs-var 
                                end-if                              

                            when other 
                                if  takvim-anah = takvim3-anah and (takvim3-gun-adi = 5 or 6) then 
                                   move 1 to ace-hs-var 
                                end-if                              
                            end-evaluate 

                            if takvim3-anah >= aceanlas-sart-bas and 
                               takvim3-anah <= aceanlas-sart-bit
                                  add 1 to ace-sart-gece                               
                            end-if
                       end-if
                 end-read
           end-perform
           if aceanlas-sart-haric = 1 then 
               compute ace-top-gece =  ace-top-gece  -  ace-sart-gece
           end-if
           if aceanlas-anlasma-oncelik > 0
               move ace-top-gece to ace-sart-gece
           end-if 


           

           close takvim3.
*
 formul-ekle-devam. 
        
          inspect for-det  replacing trailing spaces by low-values     
          inspect for-1 replacing trailing spaces by low-values
          inspect for-2 replacing trailing spaces by low-values
          inspect for-3 replacing trailing spaces by low-values
          inspect for-4 replacing trailing spaces by low-values
          inspect for-5 replacing trailing spaces by low-values
          inspect for-6 replacing trailing spaces by low-values
          inspect for-7 replacing trailing spaces by low-values
          inspect for-8 replacing trailing spaces by low-values
          inspect for-9 replacing trailing spaces by low-values

          initialize hes-formul
          inspect hes-formul  replacing trailing spaces by low-values

          string hes-formul  delimited by low-values
                 for-1       delimited by low-values
                 for-det     delimited by low-values
                 for-2       delimited by low-values
                 for-3       delimited by low-values
                 for-4       delimited by low-values
                 for-5       delimited by low-values
                 for-6       delimited by low-values
                 for-7       delimited by low-values
                 for-8       delimited by low-values
                 for-9       delimited by low-values
         into hes-formul
        
         if formul-text = spaces
              add 1 to sira
             
              move hesayr-gun to formul-text(1:2)
              move "/"        to formul-text(3:1) 
              move hesayr-AY  to formul-text(4:2)
              MOVE "/"        TO formul-text(6:1)
              MOVE hesayr-yil to formul-text(7:4)
 
              move gham    to z-tutarx 
              move z-tutarx to formul-text(15:)
 
              if gham not > 0
                    exit paragraph
              end-if
         end-if
         inspect formul-text replacing trailing spaces by low-values
         string formul-text
                hes-formul delimited by low-values
         into formul-text
         
         if sira > 1 
                    exit paragraph
         end-if
       |///  display message box formul-text
         .
* 
 spo-formul-et-yaz.
 |/////////////////////////SPECIAL OFFER 1 FORMUL///////////////////////////////////////////////
       
                      initialize for-tum
                      evaluate ik  of tum-wrk
                       when formul-so1-sira
                          move aksiyhrk-hes-tipi of a3-rec to thes-tipi 
                          move aksiyhrk-ode-yeni of a3-rec to tode-yeni 
                          move toplam-geceleme-kb3 to tgeceleme
                          move " SP1" TO FOR-DET
                       when formul-so2-sira
                          move aksiyhrk-hes-tipi of a4-rec to thes-tipi 
                          move aksiyhrk-ode-yeni of a4-rec to tode-yeni 
                          move toplam-geceleme to tgeceleme
                          move " SP2" TO FOR-DET
                      end-evaluate
                      
                      evaluate thes-tipi
                       when 1
                                 compute hes-say99 = cast-buyuk + ( cast-kucuk / 2 )
                                 move hes-say99 to z-say99  move z-say99  to for-6

                       when 2
                                 compute hes-say99 = cast-buyuk +  cast-kucuk 
                                 move hes-say99 to z-say99  move z-say99  to for-6
                       when 3
                                 continue
                       when 4
                                 compute hes-say99 = cast-buyuk
                                 move hes-say99 to z-say99  move z-say99  to for-6
                                                            
                       when 5
                                 compute hes-say99 = cast-buyuk + ( cast-kucuk / 2 ) 
                                 move hes-say99 to z-say99  move z-say99  to for-6
                       when 6
                                 compute hes-say99 = cast-buyuk + cast-kucuk
                                 move hes-say99 to z-say99  move z-say99  to for-6
                       when 7
                                  continue
                       when other
                                 compute hes-say99 = cast-buyuk
                                 move hes-say99 to z-say99  move z-say99  to for-6
                      end-evaluate

                      
                      if special-eksi-car < 0
                              move " + (" to for-1
                      else
                              move " - (" to for-1
                      end-if

                     | move son-fiyat to z-tutarx  move z-tutarx  to for-2
                                          

                      move tode-yeni to z-tutarx 
                                                  move z-tutarx  to for-4
                                                  move " *"     to for-5
                                  
                      if thes-tipi = 1 or
                         thes-tipi = 2 or
                         thes-tipi = 3 or
                         thes-tipi > 7 
                          if for-6 = spaces
                                 initialize for-5
                           end-if
                          if tgeceleme > 0 
                                  if for-6 = spaces
                                     move "   "    to for-3
                                     move " / "     to for-7
                                     move tgeceleme to z-say move z-say to for-8 
                                     move " ) "      to for-9
                                  else
                                     move "  ("    to for-3
                                     move " ) /"     to for-7
                                     move tgeceleme to z-say move z-say to for-8 
                                     move " )"      to for-9
                                  end-if
                                  
                          else
                                   move "  )"    to for-7
                          end-if
                      else
                                 if thes-tipi = 7
                                         initialize for-5  
                                 end-if
                              
                                  move "  )"    to for-7   
                     end-if
                     perform formul-ekle-devam.
*

 kkp-formul-et-yaz.
            compute h-binde  = fiyatind-dizi-kkp(cast-fiyat-konumu)  / kkp-oran 
            move h-binde     to z-binde-oran
            move son-fiyat2  to z-tutarx  
           
            move " - ("                  to for-1             
            move z-tutarx                 to for-2 
            move " * "                   to for-3
            move z-binde-oran            to for-4
            move " )"                    to for-5

            move " KKP" to for-det
            perform formul-ekle-devam.
*
 kck-formul-et-yaz.
             compute h-binde  = fiyatind-dizi-kb(cast-fiyat-konumu)  / kick-oran 
             move h-binde     to z-binde-oran
             move son-fiyat2  to z-tutarx  
            
             move " - ("                  to for-1             
             move z-tutarx                 to for-2 
             move " * "                   to for-3
             move z-binde-oran            to for-4
             move " )"                    to for-5

             move " KCK" to for-det
             perform formul-ekle-devam.
*
 eb-formul-et-yaz.
             compute h-yuzde  = eb-oran / 100 
             move h-yuzde to z-yuzde-oran
             move son-fiyat2 to z-tutarx  
           
             move " - ("         to for-1
             move z-tutarx        to for-2  
             move " * "          to for-3
             move z-yuzde-oran   to for-4
             move " )"           to for-5
        
             move " EB" to for-det
             perform formul-ekle-devam.           
*
 OI-formul-et-yaz.
              compute h-yuzde  = xREZ-NOR-INDIRIM / 100 
              move h-yuzde     to z-yuzde-oran
              move son-fiyat2  to z-tutarx  
              
              move " - ("                  to for-1             
              move z-tutarx                 to for-2 
              move " * "                   to for-3
              move z-yuzde-oran            to for-4
              move " )"                    to for-5

              move " OI" to for-det
              perform formul-ekle-devam.
*
 Ug-formul-et-yaz.
              compute h-yuzde  = ug-oran / 100 
              move h-yuzde     to z-yuzde-oran
              move son-fiyat2  to z-tutarx  
              
              move " - ("                  to for-1             
              move z-tutarx                 to for-2 
              move " * "                   to for-3
              move z-yuzde-oran            to for-4
              move " )"                    to for-5

              move " UG" to for-det
              perform formul-ekle-devam.
*
 Od-formul-et-yaz.
              compute h-yuzde  = (100 - xrez-ozel-durum-car ) / 100 
              move h-yuzde     to z-yuzde-oran
              move son-fiyat2  to z-tutarx  
             
              move " - ("                  to for-1             
              move z-tutarx                 to for-2 
              move " * "                   to for-3
              move z-yuzde-oran            to for-4
              move " )"                    to for-5

              move " OD" to for-det
              perform formul-ekle-devam.
*
 ak1-formul-et-yaz.   
 
               if aksiyhrk-sondan of a1-rec  = 1  and aksiyhrk-gecele of a1-rec > 0 then 
                     move toplam-dusulecek     to z-tutarx
                     move " - ("                  to for-1 
                     move z-tutarx                 to for-2
                     move " / "                  to for-5
                     move toplam-geceleme         to z-say
                     move z-say                   to for-6
                     move " )"                   to for-9
                     move " AK1"                     to for-det  
               else
                     move son-fiyat2            to z-tutarx
                     move " - ("                  to for-1 
                     move z-tutarx                 to for-2
                     move " - ("                  to for-3             
                     move z-tutarx                 to for-4 
                     move " * ("                  to for-5
                     move aksiyhrk-ode of a1-rec  to z-say
                     move z-say                   to for-6
                     move " / "                   to for-7
                     move aksiyhrk-gecele of a1-rec  to z-say
                     move z-say                      to for-8
                     move " ) ) )"                   to for-9
                     move " AK1"                     to for-det  
               end-if

                  

               perform formul-ekle-devam.
                                       
*
 ak1-yuzde-formul-et-yaz.
                compute h-yuzde  = aksiyhrk-ode of a1-rec / 100 
               move h-yuzde     to z-yuzde-oran
               move son-fiyat2  to z-tutarx  
               
               move " - ("                  to for-1             
               move son-fiyat2              to z-tutarx 
               move z-tutarx                 to for-2 
               move " * "                   to for-3
               move z-yuzde-oran            to for-4
               move " )"                    to for-5

               move " AK1" to for-det
               perform formul-ekle-devam.
*
 ak2-formul-et-yaz.

                move " - ("                  to for-1 
                move son-fiyat2              to z-tutarx 
                move z-tutarx                 to for-2
                move " - ("                  to for-3             
                move z-tutarx                 to for-4 
                move " * ("                  to for-5
                move aksiyhrk-ode of a2-rec  to z-say
                move z-say                   to for-6
                move " / "                   to for-7
                move aksiyhrk-gecele of a2-rec  to z-say
                move z-say                      to for-8
                move " ) )"                       to for-9
        
                move " AK2" to for-det
                perform formul-ekle-devam.
*
 ak2-yuzde-formul-et-yaz. 
              compute h-yuzde  = aksiyhrk-ode of a2-rec / 100 
              move h-yuzde     to z-yuzde-oran
              move son-fiyat2  to z-tutarx  
              
              move " - ("                  to for-1             
              move son-fiyat2              to z-tutarx 
              move z-tutarx                 to for-2 
              move " * "                   to for-3
              move z-yuzde-oran            to for-4
              move " )"                    to for-5

              move " AK2" to for-det
              perform formul-ekle-devam.

