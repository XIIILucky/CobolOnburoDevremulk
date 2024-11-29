*
*
 tek-rez-duzelt.
            move rez-acenta           to prohrk-acenta
            move rez-gir-tar          to prohrk-gel-tar
            move rez-cik-tar          to prohrk-git-tar
            move rez-banka            to prohrk-banka
            move rez-doviz            to prohrk-doviz
            move rez-pan-tipi         to prohrk-pans
            move rez-ulke             to prohrk-ulke
            move rez-voucher          to prohrk-voucher
            move rez-odano            to prohrk-odano
            move rez-anlasma          to prohrk-anlasma
            move rez-durumu           to prohrk-rez-durumu
            move rez-folio            to prohrk-r-folio
            if rez-gir-tar < tarih-tasi and rez-folio not > 0
               move "S"          to prohrk-rez-durumu
            end-if 
            if prohrk-rez-durumu not = "S"
                perform yromhrk-bul     

               move oda-hesabi           to prohrk-t-oda-fiyati
               move extra-hesabi         to prohrk-t-ext-fiyati
             
                        
                    initialize kur-rec
                    move rez-gir-tar  to gercek-tarih kur-tarih
                    move "01"       to kur-banka
                    move onkpara-doviz       to kur-doviz
                    read kur no lock invalid                  
                        move 1      to doviz-alis
                      
                    end-read 
                        if doviz-alis < 1.50 or doviz-alis > 4
                           move 2          to doviz-alis
                       
                        end-if 
                           compute prohrk-t-oda-fiyati rounded = oda-hesabi / doviz-alis 
                           compute prohrk-t-ext-fiyati rounded = extra-hesabi / doviz-alis 
            
            end-if       
            compute s1  = function INTEGER-OF-DATE(gercek-tarih) 
            move rez-cik-tar  to gercek-tarih
            compute s2  = function INTEGER-OF-DATE(gercek-tarih) 
            compute geceleme = s2 - s1
            move geceleme        to prohrk-geceleme
            rewrite prohrk-rec invalid 
                stop " "
            end-rewrite
             . 
             



*
*
 yromhrk-bul.
        initialize xprohrk-e-folio xprohrk-r-folio

        initialize yromhrk-rec oda-hesabi extra-hesabi
        move rez-folio            to yromhrk-folio
        start yromhrk key not < yromhrk-anah invalid 
              continue 
        not invalid 
        perform with test after until fs-yromhrk = "10"
        read yromhrk next no lock end move "10"  to fs-yromhrk
        not at end 
               if yromhrk-folio not = rez-folio
                   exit perform 
               end-if 
               if yromhrk-depkod = onkpara-city-ledger
                  compute oda-hesabi = oda-hesabi + yromhrk-tl-tutar
               end-if
               if yromhrk-depkod = ONKPARA-OUTLET-CASH
                     compute extra-hesabi = extra-hesabi + yromhrk-tl-tutar
               end-if 
               if yromhrk-depkod = ONKPARA-KREDI-KARTI
                     compute extra-hesabi = extra-hesabi + yromhrk-tl-tutar
               end-if 
               move yromhrk-folio              to xprohrk-r-folio
        end-read 
        end-perform
        end-start.
* 
 puan-hesapla.
     if transferden = 0 then 
      initialize genelfis-rec 
      move 1 to genelfis-anahtar
      read genelfis no lock invalid  
        continue
      not invalid
          add 1 to ekran-fis-1
          move ekran-fis-1 (2:3) to tprohrk-dno
          rewrite genelfis-rec end-rewrite
      end-read
 
      move k-kodu-tasi to tprohrk-k
      else
           move ekran-fis-1 (2:3) to tprohrk-dno

            move k-kodu-tasi to tprohrk-k
      end-if

      open output tprohrk close tprohrk open i-o tprohrk
       initialize prohrk-rec puanhes-toplam-puan
        move mis-no            to prohrk-profil-no
        move mis-sirket        to prohrk-profil-sirket
        start prohrk key not < prohrk-anah invalid
              continue
        not invalid
        perform with test after until fs-prohrk = "10"
        read prohrk next no lock end move "10"   to fs-prohrk
        not at end
               if prohrk-profil-no <> mis-no or
                  prohrk-profil-sirket <> mis-sirket
                     move "10"   to fs-prohrk
                     exit perform
               end-if
                if prohrk-rez-no = rez-no and 
                    prohrk-rez-sirket = isyeri-adres-tasi
                    perform tek-rez-duzelt
                end-if
*               if tarih-tasi >= prohrk-gel-tar and
*                  tarih-tasi <= prohrk-git-tar 
*                    exit perform cycle 
*               end-if 
               move prohrk-anah    to tprohrk-anah
               move prohrk-gel-tar to tprohrk-gel-tar



               write tprohrk-rec invalid rewrite tprohrk-rec end-write
        end-read 
        end-perform 
        end-start


        open input pformul  takvim
    
        initialize prohrk-rec  ger-sayi 
                   cari-tutar tahsilat-tutar pformul-rec tprohrk-rec 
        start pformul key > pformul-anahtar invalid 
              continue
        end-start    
        read pformul next no lock end 
             move "10" to fs-pformul
        end-read    
        move 0                 to sayi
        move mis-no            to tprohrk-profil-no
        move mis-sirket        to tprohrk-profil-sirket
        start tprohrk key not < tprohrk-gel-anah invalid
              continue
        not invalid
        perform with test after until fs-tprohrk = "10"
        read tprohrk next no lock end move "10"   to fs-tprohrk
        not at end
               if tprohrk-profil-no <> mis-no or
                  tprohrk-profil-sirket <> mis-sirket
                     move "10"   to fs-tprohrk
                     exit perform
               end-if

               move tprohrk-anah to prohrk-anah
               read prohrk no lock invalid 
                    stop " " 
               end-read
                 
               if prohrk-git-tar > pformul-tarih
                  perform until fs-pformul = "10" 
                      read pformul next no lock 
                        end move "10" to fs-pformul
                        not end 
                          if prohrk-git-tar <= pformul-tarih
                           move "10" to fs-pformul
                          end-if
                      end-read
                  end-perform
               end-if
               add 1                        to sayi   

               perform varying si 
                       from 1 
                       by 1 
                       until si > 50
                  if  pformul-ust-sinir(si) >= sayi 
                       exit perform 
                  end-if
               end-perform 
               if si < 1 or
                  si > 50
                    move 1 to si
               end-if 
*               if pformul-gec-carpan = 0
*                  move 100   to pformul-gec-carpan pformul-gel-carpan
*               end-if 
               if pformul-ust-carpan(si) = 0
                  move 1  to pformul-ust-carpan(1)
               end-if 
               if pformul-tut-carpan = 0
                  move 1  to pformul-tut-carpan
               end-if
               if isyeri-adres-tasi = "otel2018"
                  initialize prohrk-t-oda-fiyati prohrk-t-ext-fiyati
               end-if 
               compute  prohrk-puan =( pformul-gel-carpan + 
                    ( prohrk-geceleme * pformul-gec-carpan )
                    + ((prohrk-t-oda-fiyati + prohrk-t-ext-fiyati ) 
                    *  pformul-tut-carpan))
                    * pformul-ust-carpan(si)
               if prohrk-rez-sira not = 1
                  initialize prohrk-puan
               end-if
             
              if  duzenleme-yaz    = 1 
                 if sadece-bu-rez not = prohrk-rez-no and sadece-bu-rez > 0 
                      continue
                  else
                      accept  prohrk-duz-tarih from century-date
                   
                end-if

              end-if
               rewrite prohrk-rec invalid continue end-rewrite
               COMPUTE puanhes-toplam-puan = puanhes-toplam-puan + prohrk-puan
        end-read
        end-perform
        end-start
        close pformul  takvim tprohrk.
