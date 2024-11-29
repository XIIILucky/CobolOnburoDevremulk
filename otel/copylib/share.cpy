********************************************************
*
 share-koy-kont2.
     
****** kural .
****** kontrol edilecek rez kaydi cagrýlmadan okunmus ve kaydedilmis olmali
******* arez.lib acast.lib takvim2.lib sel tfd de olmali  rez acik olmali
       
       open i-o arez  acast  konu2
       open input takvim2
       initialize ana-oda-verildi arez-rec
        move "I" to arez-durumu
        move rez-sharenum to arez-sharenum
        move high-values to ilk-share-tar 
        move low-values  to son-share-tar
        initialize sodasay
 

      
       initialize ana-oda-verildi acast-rec  share-odalar
         move high-values to ilk-share-tar 
        move low-values  to son-share-tar
        initialize sodasay
        move rez-sharenum to acast-sharenum
        move tarih-tasi to acast-tarih

       start acast key >= acast-anah6 
               invalid continue
          not invalid
          perform until fs-acast = "10" 
              read acast next no lock end 
                     move "10" to fs-acast
                 not end
                    if rez-sharenum not = acast-sharenum 
                        move "10" to fs-acast
                        exit perform cycle
                    end-if
                    move acast-rez-no to arez-no 
                    read arez no lock invalid 
                          display message  box "Hata Bakim icin arayiniz Castttt "
                     end-read
                            if arez-durumu  = "S" then
                              exit perform cycle
                            end-if

                             if acast-tarih > son-share-tar
                                move  acast-tarih to son-share-tar
                             end-if
                              if acast-tarih < ilk-share-tar
                                move  acast-tarih to ilk-share-tar
                             end-if

                                perform varying ish from 1 by 1 until ish > sodasay or ish > 20 
                                    if share-oda(ish) = acast-oda-no
                                      exit perform 
                                    end-if
                                end-perform
                                 if ish > sodasay then 
                                     if ish >= 20 then
                                          display message box "20 den fazla oda bagladiniz"
                                       else
                                             move acast-oda-no to share-oda(ish)
                                             move ish to  sodasay
                                     end-if
                                 end-if
              end-read
          end-perform 
       end-start
       initialize fs-takvim2 takvim2-rec
       move ilk-share-tar to takvim2-anah 
       start takvim2 key >= takvim2-anah invalid continue
         not invalid 
         perform until fs-takvim2 = "10"
             read takvim2 next no lock end move "10" to fs-takvim2 
               not end
               if takvim2-anah > son-share-tar 
                   move "10" to fs-takvim2 
                   exit perform cycle
                end-if
             end-read
                perform varying ish  from 1 by 1 until ish > sodasay or ish > 20 
                  initialize ana-oda-verildi acast-rec   fs-acast
                  move takvim2-anah to acast-tarih
                  move rez-sharenum to acast-sharenum
                  move share-oda(ish) to acast-oda-no
                  move high-values to acast-fiyati  acast-buyuk

                  start acast key < acast-anah6 invalid 
                          continue
                     not invalid
                       perform until fs-acast = "10" 
                           read acast previous no lock  
                               end
                                move "10" to fs-acast
                                if ana-oda-verildi not = 1 
                                              move 1 to  ana-oda-verildi
                                               if  acast-share not = 0
                                                    move 0 to acast-share
                                                  rewrite acast-rec invalid stop " " end-rewrite
                                                  else
                                                  display message box "Hataaaaa"
                                               end-if
                                  end-if
                                not end
                                if   takvim2-anah not = acast-tarih  or
                                     rez-sharenum not = acast-sharenum  or
                                     share-oda(ish) not = acast-oda-no
                                       move "10" to fs-acast
                                        if ana-oda-verildi not = 1 
                                          read   acast next no lock 
                                          end   display message box "Hataaaaa"
                                          exit perform cycle
                                          end-read
                                              if   takvim2-anah not = acast-tarih  or
                                                     rez-sharenum not = acast-sharenum  or
                                                     share-oda(ish) not = acast-oda-no
******************************************************             display message box "Hataaaaa25666"
                                                   exit perform cycle
                                             end-if
                                              move 1 to  ana-oda-verildi
                                               if  acast-share not = 0
                                                    move 0 to acast-share
                                                  rewrite acast-rec invalid stop " " end-rewrite
                                                  else
                                                  display message box "Hataaaaa"
                                               end-if
                                         end-if
                                       exit perform cycle
                                end-if
                                move acast-rez-no to arez-no
                                move acast-rez-no to arez-no 
                                    read arez no lock invalid 
                                      display message  box "Hata Bakim icin arayiniz Castttt "
                                          end-read
                                            if arez-durumu  = "S" then
                                                  display message box "Silinmis Share gorunuyor"
                                                  exit perform cycle
                                                  
                                            end-if
                                   if arez-cik-tar <= acast-tarih
                                       if  acast-share not = 1
                                            move 1 to acast-share
                                            rewrite acast-rec invalid stop " " end-rewrite
                                       end-if
                                    else
                                        if ana-oda-verildi not = 1 
                                              move 1 to  ana-oda-verildi
                                               if  acast-share not = 0
                                                    move 0 to acast-share
                                                  rewrite acast-rec invalid stop " " end-rewrite
                                              end-if
                                        else
                                                 if  acast-share not = 1
                                                       move 1 to acast-share
                                                      rewrite acast-rec invalid stop " " end-rewrite
                                                 end-if
                                  end-if
                             end-if

                           end-read
                       end-perform
                  end-start
                end-perform 
        end-perform
      end-start
      initialize arez-rec fs-arez

        move "I" to arez-durumu
        move rez-sharenum to arez-sharenum
       start arez key >= aREZ-anah-share invalid continue
          not invalid
          perform until fs-arez = "10" 
              read arez next no lock end 
                       
                     move "10" to fs-arez
                 not end
                    if rez-sharenum not = arez-sharenum  
                     
                            move "10" to fs-arez
                        exit perform cycle
                    end-if
                    if  arez-durumu not = "I"
                       exit perform cycle
                    end-if
                    if arez-cik-tar < tarih-tasi 
                         exit perform cycle
                    end-if
                    if arez-gir-tar <= tarih-tasi
                       move   tarih-tasi to acast-tarih
                       move   arez-no   to  acast-rez-no
                       read acast no lock invalid 
                                   display message  box "Hata Bakim icin arayiniz Cast444tt "
                             not invalid 
                             if acast-share not = arez-share 
                                     move acast-share to arez-share
                                     rewrite arez-rec invalid stop " " end-rewrite
                             end-if
                             if arez-folio > 0 then 
                                       move arez-folio to konu2-folio
                                       read konu2 no lock invalid continue
                                       not invalid
                                          move acast-share to konu2-share
                                          rewrite konu2-rec invalid continue end-rewrite
                                       end-read

                                     end-if
                       end-read
                        else
                        move   arez-gir-tar  to acast-tarih
                         move   arez-no        to  acast-rez-no
                       read acast no lock invalid 
                                   display message  box "Hata Bakim icin arayiniz Cast444tt "
                             not invalid 
                             if acast-share not = arez-share 
                                     move acast-share to arez-share
                                     rewrite arez-rec invalid stop " " end-rewrite
                             end-if
                       end-read


                   end-if
              end-read
          end-perform 
       end-start
    

     close arez acast takvim2 konu2. 

*********************************
**
********************************************************

********************************************************
*
 share-sil-kont2.
****** kural eski-sharenum dolu olamli .
****** kontrol edilecek rez kaydi cagrýlmadan okunmus ve kaydedilmis olmali rez-sharenum tabiiki bos
******* arez.lib acast.lib takvim2.lib sel tfd de olmali  rez acik olmali
   
****** kontrol edilecek rez kaydi cagrýlmadan okunmus ve kaydedilmis olmali
******* arez.lib acast.lib takvim2.lib sel tfd de olmali  rez acik olmali
       
       open i-o arez  acast  konu2
       open input takvim2
       initialize ana-oda-verildi arez-rec
        move "I" to arez-durumu
        move eski-sharenum to arez-sharenum
        move high-values to ilk-share-tar 
        move low-values  to son-share-tar
        initialize sodasay
 

      
       initialize ana-oda-verildi acast-rec  share-odalar
         move high-values to ilk-share-tar 
        move low-values  to son-share-tar
        initialize sodasay   acast-rec fs-acast
        move eski-sharenum to acast-sharenum
        move tarih-tasi to acast-tarih

       start acast key >= acast-anah6 
               invalid continue
          not invalid
          perform until fs-acast = "10" 
              read acast next no lock end 
                     move "10" to fs-acast
                 not end
                    if eski-sharenum not = acast-sharenum 
                        move "10" to fs-acast
                        exit perform cycle
                    end-if
                    move acast-rez-no to arez-no 
                    read arez no lock invalid 
                          display message  box "Hata Bakim icin arayiniz Castttt "
                     end-read
                            if arez-durumu  = "S" then
                              exit perform cycle
                            end-if

                             if acast-tarih > son-share-tar
                                move  acast-tarih to son-share-tar
                             end-if
                              if acast-tarih < ilk-share-tar
                                move  acast-tarih to ilk-share-tar
                             end-if

                                perform varying ish from 1 by 1 until ish > sodasay or ish > 20 
                                    if share-oda(ish) = acast-oda-no
                                      exit perform 
                                    end-if
                                end-perform
                                 if ish > sodasay then 
                                     if ish >= 20 then
                                          display message box "20 den fazla oda bagladiniz"
                                       else
                                             move acast-oda-no to share-oda(ish)
                                             move ish to  sodasay
                                     end-if
                                 end-if
              end-read
          end-perform 
       end-start
       initialize takvim2-rec fs-takvim2
       move ilk-share-tar to takvim2-anah 
       start takvim2 key >= takvim2-anah invalid continue
         not invalid 
         perform until fs-takvim2 = "10"
             read takvim2 next no lock end move "10" to fs-takvim2 
               not end
               if takvim2-anah > son-share-tar 
                   move "10" to fs-takvim2 
                   exit perform cycle
                end-if
             end-read
                perform varying ish  from 1 by 1 until ish > sodasay or ish > 20 
                  initialize ana-oda-verildi acast-rec   fs-acast
                  move takvim2-anah to acast-tarih
                  move eski-sharenum to acast-sharenum
                  move share-oda(ish) to acast-oda-no
                  move high-values to acast-fiyati  acast-buyuk

                  start acast key < acast-anah6 invalid 
                          continue
                     not invalid
                       perform until fs-acast = "10" 
                           read acast previous no lock  
                               end
                                move "10" to fs-acast
                                if ana-oda-verildi not = 1 
                                              move 1 to  ana-oda-verildi
                                               if  acast-share not = 0
                                                    move 0 to acast-share
                                                  rewrite acast-rec invalid stop " " end-rewrite
                                                  else
                                                  display message box "Hataaaaa"
                                               end-if
                                  end-if
                                not end
                                if   takvim2-anah not = acast-tarih  or
                                     eski-sharenum not = acast-sharenum  or
                                     share-oda(ish) not = acast-oda-no
                                       move "10" to fs-acast
                                        if ana-oda-verildi not = 1 
                                          read   acast next no lock 
                                          end   display message box "Hataaaaa"
                                          exit perform cycle
                                          end-read
                                              if   takvim2-anah not = acast-tarih  or
                                                     eski-sharenum not = acast-sharenum  or
                                                     share-oda(ish) not = acast-oda-no
************************************************** display message box "Hataaaaa25666"
                                                   exit perform cycle
                                             end-if
                                              move 1 to  ana-oda-verildi
                                               if  acast-share not = 0
                                                    move 0 to acast-share
                                                  rewrite acast-rec invalid stop " " end-rewrite
                                                  else
                                                  display message box "Hataaaaa"
                                               end-if
                                         end-if
                                       exit perform cycle
                                end-if
                                move acast-rez-no to arez-no
                                move acast-rez-no to arez-no 
                                    read arez no lock invalid 
                                      display message  box "Hata Bakim icin arayiniz Castttt "
                                          end-read
                                            if arez-durumu  = "S" then
                                                  display message box "Silinmis Share gorunuyor"
                                                  exit perform cycle
                                                  
                                            end-if
                                   if arez-cik-tar <= acast-tarih
                                       if  acast-share not = 1
                                            move 1 to acast-share
                                            rewrite acast-rec invalid stop " " end-rewrite
                                       end-if
                                    else
                                        if ana-oda-verildi not = 1 
                                              move 1 to  ana-oda-verildi
                                               if  acast-share not = 0
                                                    move 0 to acast-share
                                                  rewrite acast-rec invalid stop " " end-rewrite
                                              end-if
                                        else
                                                 if  acast-share not = 1
                                                       move 1 to acast-share
                                                      rewrite acast-rec invalid stop " " end-rewrite
                                                 end-if
                                  end-if
                             end-if

                           end-read
                       end-perform
                  end-start
                end-perform 
        end-perform
      end-start
      initialize arez-rec fs-arez
       move "I" to arez-durumu
        move eski-sharenum to arez-sharenum
         
       start arez key >= aREZ-anah-share invalid continue
          not invalid
          perform until fs-arez = "10" 
              read arez next no lock end 
                       
                     move "10" to fs-arez
                 not end
                    if eski-sharenum not = arez-sharenum or 
                       arez-durumu not = "I"
                            move "10" to fs-arez
                        exit perform cycle
                    end-if
                    if arez-cik-tar < tarih-tasi 
                         exit perform cycle
                    end-if
                    if arez-gir-tar <= tarih-tasi
                       move   tarih-tasi to acast-tarih
                       move   arez-no   to  acast-rez-no
                       read acast no lock invalid 
                                   display message  box "Hata Bakim icin arayiniz Cast444tt "
                             not invalid 
                             if acast-share not = arez-share 
                                     move acast-share to arez-share
                                     rewrite arez-rec invalid stop " " end-rewrite

                             end-if
                             if arez-folio > 0 then 
                                       move arez-folio to konu2-folio
                                       read konu2 no lock invalid continue
                                       not invalid
                                          move acast-share to konu2-share
                                          rewrite konu2-rec invalid continue end-rewrite
                                       end-read

                               end-if
                       end-read
                        else
                        move   arez-gir-tar  to acast-tarih
                         move   arez-no        to  acast-rez-no
                       read acast no lock invalid 
                                   display message  box "Hata Bakim icin arayiniz Cast444tt "
                             not invalid 
                             if acast-share not = arez-share 
                                     move acast-share to arez-share
                                     rewrite arez-rec invalid stop " " end-rewrite
                             end-if
                       end-read


                   end-if
              end-read
          end-perform 
       end-start
      

     close arez acast takvim2 konu2. 
