*
 uyruk-kontrol.
       open input uyruk uyrukkbs
       move polisxml-uyruk to uyruk-kodu
       read uyruk no lock invalid
              move 1 to polisxml-prb
       end-read
       initialize uyrukkbs-rec
       move polisxml-uyruk to uyrukkbs-kodu
       read uyrukkbs no lock invalid
              continue
       end-read
       close uyruk uyrukkbs.
*
 kbs-exe-baglan.        
       initialize exe-donus-kodu 
       initialize liste-txt-rec belge-no onbkodlar10-rec
       move "01"                       to onbkodlar10-kodu1
       move "KB"                       to onbkodlar10-tipi
       read onbkodlar10 no lock invalid 
           if p-kontrol = 1 
              move "SORGU"       to liste-txt-giris-cikis 
              move 0 to  girisler cikislar                 
           end-if
           move detaylar  to liste-txt-rec
           move X"0D0A"   to liste-txt-rec(998:2)
           write liste-txt-rec  with no control end-write 
       not invalid 
           move onbkodlar10-adi         to liste-txt-id |liste-txt-mail-adres                                      
           move onbkodlar10-aciklama-1  to liste-txt-pw |liste-txt-mail-sifre

           if konuk-odano = spaces
              move polisxml-odano       to liste-txt-oda  
           else
              move konuk-odano          to liste-txt-oda  
           end-if
    
           if polisxml-tckimlikno > 0
              move polisxml-tckimlikno to liste-txt-tckimlik belge-no
              move polisxml-adi        to liste-txt-adi
              move polisxml-soyadi     to liste-txt-soyad                  
              initialize liste-txt-pass-no
           else
              move polisxml-kseri      to liste-txt-pass-no belge-no
              move polisxml-adi        to liste-txt-adi
              move polisxml-soyadi     to liste-txt-soyad                  
              initialize liste-txt-tckimlik
           end-if                                                                                                                                
           move polisxml-babaadi to liste-txt-baba                                            
           move polisxml-anaadi  to liste-txt-ana                                             
***       move polisxml-dog-tar to liste-txt-d-tar                                           

           move polisxml-dog-gun  to agy-gun
           move polisxml-dog-ay   to agy-ay
           move polisxml-dog-yil  to agy-yil
           move agy               to liste-txt-d-tar
           
           move polisxml-dyeri    to liste-txt-d-yer  
           perform uyruk-kontrol                                                  
           move uyrukkbs-kbs-kodu to liste-txt-uyruk
           if genel-kbs-bolgesi = "J"
              move polisxml-uyruk to liste-txt-uyruk
           end-if
           move polisxml-plaka    to liste-txt-plaka 
           if girisler = 1                                                                                  
              move "GIRIS"        to liste-txt-giris-cikis 
              move 0 to  cikislar                  
           end-if 
           if cikislar = 1
              move "CIKIS"        to liste-txt-giris-cikis                                     
           end-if 
*           move rc-oda            to liste-txt-odadegis-oda
           move konuk-git-tar     to liste-txt-cik-tar
           move konuk-gel-tar     to liste-txt-gir-tar
           if polisxml-cinsiyet = "E"
              move 1              to liste-txt-cinsiyet
           else
              move 2              to liste-txt-cinsiyet
           end-if 
 
                                        
           move detaylar  to liste-txt-rec
           move X"0D0A"   to liste-txt-rec(998:2)
           write liste-txt-rec  with no control end-write 
       end-read
       . 
*
 kbs-exe-islem-basla.
           initialize git-adres  don-adres exe-param-gonder exe-param-gonderx
           move all low-values to git-adres don-adres exe-param-gonder exe-param-gonderx
           inspect islem-anahtar replacing trailing spaces by low-values

 
           string git-adres
               "@[DISPLAY]:\acucorp\acucbl701\acugt\bin\" delimited by low-values
                islem-anahtar                             delimited by low-values
                "kisibilgi.txt"                           delimited by low-values
           into git-adres

           string don-adres
               "@[DISPLAY]:\acucorp\acucbl701\acugt\bin\" delimited by low-values
                islem-anahtar                             delimited by low-values
                "kisidonus.txt"                           delimited by low-values
           into don-adres

 
*           string exe-param-gonder
*               "@[DISPLAY]:C:\acucorp\acucbl701\acugt\bin\kbsie.exe " delimited by low-values   |07/10/2019 yeni exe icin degisti..
*                islem-anahtar                                         delimited by low-values
*           into exe-param-gonder

           string exe-param-gonder
                  "@[DISPLAY]:C:\acucorp\acucbl701\acugt\bin\webdri.exe " delimited by low-values
                  islem-anahtar                                           delimited by low-values
           into exe-param-gonder
    

            call "c$copy" using liste-txt-dosya-adres, git-adres
                 giving donus-code
                                                          
            if donus-code = 0 
               continue
*              call "c$copy" using "/asya/ytl/exe/kbsie.exe",            |07/10/2019 yeni exe icin degisti..
*              "@[DISPLAY]:\acucorp\acucbl701\acugt\bin\kbsie.exe"
*                
                
*              call "c$copy" using "/asya/ytl/exe/webdri.exe",           |02/02/2021 kopyalama iþlemi exe update den dolayý kapatýrldý fýrat selim
*              "@[DISPLAY]:\acucorp\acucbl701\acugt\bin\webdri.exe"

********************************************************              call "c$system" using exe-param-gonder, 384   
            else
              display message box "Kisi Listesi Kopyalanamadi.."
            end-if 
            
            if p-kontrol not = 1
               initialize donus-hedef  
               inspect file-zaman  replacing trailing spaces by low-values
               accept file-zaman from time
               string  "/asya/ytl/liste/" delimited by size
                      file-zaman delimited by low-values
                      ".txt" delimited by size
                 into donus-hedef                 
                   
               call "c$copy" using don-adres , donus-hedef 
                   giving donus 
               if donus = 0
                  perform dosya-donus-oku 
                  delete file fidetext
               else
                  string "Dosya Kopyalanamadi-> "
                         donus-kaynak delimited by size 
                         donus-hedef delimited by size
                    into exe-donus-kodu
               end-if 
*            else
*               perform excel2takas
            end-if
            close liste-txt.   
*
 takas-olustur.
           open i-o genelfis
           initialize genelfis-rec
           move 1 to genelfis-anahtar 
           read genelfis no lock invalid continue not invalid 
              add 1 to ekran-fis-1
              rewrite genelfis-rec end-rewrite 
           end-read 
           close genelfis
           move ekran-fis-1  to liste-txt-no
           move k-kodu-tasi  to liste-txt-k-kodu
           open output liste-txt.      
*
 yedek.
           stop " "
    set shell32-dll-uzak to true
    set shell-execute-uzak to true

    call shell32-dll on exception 
         display message box
                "shell32.dll dosyasi bulunamiyor ....",x"0a0d",
                "Excel dosyaniz otomatik olarak acilmayacaktir",x"0a0d",
                "Kaydettiginiz dosyaya cift tiklayarak acabilirsiniz ... !"
                icon mb_error_icon 
                title "Hata"
         exit paragraph.

     |"C:\acucorp\acucbl701\acugt\bin\webdri.exe",                                           
    call shell-execute using by value 0,
                             by reference ac-komut
                             by reference "C:\acucorp\acucbl701\acugt\bin\webdri.exe", 
                             null
                             null
                             by value SW_SHOW
     on exception
         display message box
                "ShellExecute Proseduru bulunamiyor ....",x"0a0d",
                "Excel dosyaniz otomatik olarak acilmayacaktir",x"0a0d",
                "Kaydettiginiz dosyaya cift tiklayarak acabilirsiniz ... !"
                icon mb_error_icon 
                title "Hata"
         cancel shell32-dll
         exit paragraph
    end-call.
    cancel shell-execute.
    cancel shell32-dll.
    .
*
 liste-doldur.
*       stop " " 
       perform kbs-kullanici-al
       initialize liste-txt-rec belge-no onbkodlar10-rec
       move kbs-id           to liste-txt-id                                      
       move kbs-pw           to liste-txt-pw
       move kbs-yetkili-tc   to liste-txt-yetkili-tc
       if genel-kbs-bolgesi = "J" and
          tesiskodu > 0
          move tesiskodu to liste-txt-tesis
       end-if

       evaluate gonderim-tipi
           when "G"
                move "GIRIS"              to liste-txt-giris-cikis
           when "C"
                move "CIKIS"              to liste-txt-giris-cikis
           when "R"
                move "GIRIS"              to liste-txt-giris-cikis

                open i-o odadegis 
                initialize odadegis-rec 
                move konuk-folio to odadegis-folio 
                start odadegis key not < odadegis-fol invalid 
                      continue 
                not invalid 
                perform with test after until fs-odadegis = "10"
                read odadegis next no lock end move "10" to fs-odadegis 
                not at end   
                    if konuk-folio <> odadegis-folio
                       exit perform
                    end-if

                    move odadegis-yeni-oda to tmp-yeni-oda
                    move odadegis-eski-oda to tmp-eski-oda
                end-read 
                end-perform 
                end-start 
                close odadegis 
      
                move tmp-yeni-oda         to liste-txt-oda

                if rc-cikis = 1
                   move "CIKIS"           to liste-txt-giris-cikis
                   move tmp-eski-oda      to liste-txt-oda
*                   move 0                 to rc-cikis
                end-if

           when "S"
                move "SORGU"              to liste-txt-giris-cikis
                move detaylar             to liste-txt-rec
                move X"0D0A"              to liste-txt-rec(998:2)
                write liste-txt-rec  with no control end-write 
                exit paragraph
       end-evaluate 

       if gonderim-tipi not = "R" 
          if konuk-odano = spaces
             move polisxml-odano       to liste-txt-oda  
          else
             move konuk-odano          to liste-txt-oda  
          end-if
       end-if

       if polisxml-tckimlikno > 0
          move polisxml-tckimlikno to liste-txt-tckimlik belge-no
          move polisxml-adi        to liste-txt-adi
          move polisxml-soyadi     to liste-txt-soyad                  
          initialize liste-txt-pass-no
       else
          move polisxml-kseri      to liste-txt-pass-no belge-no
          move polisxml-adi        to liste-txt-adi
          move polisxml-soyadi     to liste-txt-soyad                  
          initialize liste-txt-tckimlik
       end-if                                                                                                                                
       move polisxml-babaadi  to liste-txt-baba                                            
       move polisxml-anaadi   to liste-txt-ana                                             
       move polisxml-dog-gun  to agy-gun
       move polisxml-dog-ay   to agy-ay
       move polisxml-dog-yil  to agy-yil
       move agy               to liste-txt-d-tar
       
       move polisxml-dyeri    to liste-txt-d-yer                                           
       perform uyruk-kontrol                                                  
       move uyrukkbs-kbs-kodu to liste-txt-uyruk
       if genel-kbs-bolgesi = "J"
          move polisxml-uyruk to liste-txt-uyruk
       end-if

       move polisxml-plaka    to liste-txt-plaka 
 
       initialize gunfark gunfark-girgun gunfark-bugun
       move tarih-tasi    to gunfark-bugun
       move konuk-gel-tar to gunfark-girgun     

       compute gunfark = function integer-of-date(gunfark-bugun) - 
                         function integer-of-date(gunfark-girgun)
                         
       if gunfark > 2 
          move gun-tasi          to agy-gun
          move ay-tasi           to agy-ay
          move yil-tasi          to agy-yil
       else
          move konuk-gel-gun     to agy-gun
          move konuk-gel-ay      to agy-ay
          move konuk-gel-yil     to agy-yil
       end-if
       move agy                  to liste-txt-gir-tar


       move konuk-git-gun        to agy-gun
       move konuk-git-ay         to agy-ay
       move konuk-git-yil        to agy-yil
       move agy                  to liste-txt-cik-tar



       if polisxml-cinsiyet = "E"
          move 2201           to liste-txt-cinsiyet
       else
          move 2202           to liste-txt-cinsiyet
       end-if 
       if polisxml-medeni = "B" |||medeni-hal  2301 B 2302 E           
          move 2301           to liste-txt-medeni-hal
       else
          move 2302           to liste-txt-medeni-hal
       end-if
       move 3101              to liste-txt-konak-tip

       move polisxml-anah     to liste-txt-polisxml-anah
          initialize acenta-rec
       move konuk-acenta to acenta-anahtar
       read acenta no lock invalid continue
         not invalid 
           if ACENTA-UNVANI(1:10) = "DEPREMZEDE"  then
                  move "True" to      liste-txt-yetkili-depremzedemi
                  else 
                  move spaces to    liste-txt-yetkili-depremzedemi
           end-if
      end-read

       move detaylar          to liste-txt-rec
       move X"0D0A"           to liste-txt-rec(998:2)
       write liste-txt-rec  with no control end-write 
       . 
*
 kbs-kullanici-al.
       initialize kbs-id kbs-pw kbs-yetkili-tc
      | if k-kodu-tasi = "ASYA" stop " " end-if
       evaluate genel-kbs-bolgesi
           when "J"
                if onkpara-referans-var = 0 
                   move genel-jandarma-tcno  to kbs-id
                   move genel-jandarma-sifre to kbs-pw
                   
                   move genel-tesis-kodu     to tesiskodu
                       
                   if genel-tesis-kodu-ek <> spaces             |xiii 1/4/2019
                      move genel-tesis-kodu-ek to tes-ek
                      compute tesiskodu = tesiskodu * 10
                      compute tesiskodu = tesiskodu + tes-ek
                      if tesiskodu < 100000 then
                         display message box "Onburo calisma",
                         " parametrelerinden tesis Kodunu giriniz"
                      end-if
                   else
                      if tesiskodu < 10000 then
                         display message box "Onburo calisma",
                         " parametrelerinden tesis Kodunu giriniz"
                      end-if
                   end-if
                else 
                   initialize onbkodlar10-rec 
                   move "KB"        to onbkodlar10-tipi
                   move oda-ref     to onbkodlar10-kodu1
                   read onbkodlar10 no lock invalid 
                        continue
                   end-read 

                   move onbkodlar10-aciklama-2(1:11) to kbs-id
                   move onbkodlar10-aciklama-1       to kbs-pw
                   move onbkodlar10-adi(1:6)         to tesiskodu 
                end-if

           when "P"
                initialize onbkodlar10-rec

              if onkpara-referans-var = 0 
                     move "01"                 to onbkodlar10-kodu1
                      else
               
                 move oda-ref to   s-ref99
                 move s-ref99 to onbkodlar10-kodu1
                end-if
                move "KB"                 to onbkodlar10-tipi
                read onbkodlar10 no lock invalid 
                    display message box  onbkodlar10-kodu1 " kodlu KBS Kullanici bilgileri tanimsiz"
                     continue
                not invalid 
                    move onbkodlar10-adi         to kbs-id                                      
                    move onbkodlar10-aciklama-1  to kbs-pw
                    move onbkodlar10-aciklama-2  to kbs-yetkili-tc
                end-read 
       end-evaluate 
       .
*
 polis-exe-calistir.
       initialize git-adres don-adres exe-param-gonder exe-param-gonderx

       move all low-values to git-adres exe-param-gonderx |excel-adres-anah
                              don-adres exe-param-gonder  

       inspect islem-anahtar replacing trailing spaces by low-values


*       string excel-adres-anah
*            islem-anahtar                             delimited by low-values
*            ".xls"                                    delimited by low-values
*       into excel-adres-anah

       string git-adres
           "@[DISPLAY]:\acucorp\acucbl701\acugt\bin\" delimited by low-values
            islem-anahtar                             delimited by low-values
            "kisibilgi.txt"                           delimited by low-values
       into git-adres

       string don-adres
           "@[DISPLAY]:\acucorp\acucbl701\acugt\bin\" delimited by low-values
            islem-anahtar                             delimited by low-values
            "kisidonus.txt"                           delimited by low-values
       into don-adres

 
       string exe-param-gonder
              "@[DISPLAY]:C:\acucorp\acucbl701\acugt\bin\webdri.exe " delimited by low-values
              islem-anahtar                                           delimited by low-values
       into exe-param-gonder
    
       call "c$copy" using liste-txt-dosya-adres, git-adres
            giving donus-code
                                                     
       if donus-code = 0   
          call "c$copy" using "/asya/ytl/exe/webdri.exe",
          "@[DISPLAY]:\acucorp\acucbl701\acugt\bin\webdri.exe"

          call "c$system" using exe-param-gonder, 384                 || gonder gitsin dayýjým
       else
         display message box "Kisi Listesi Kopyalanamadi.."
       end-if 
                                                                     || gonderim bitti donuse basla
       initialize donus-hedef  
       inspect file-zaman replacing trailing spaces by low-values
       accept file-zaman from time
       string "/asya/ytl/liste/" delimited by size
              file-zaman delimited by low-values
              ".txt" delimited by size
         into donus-hedef                 
           
       call "c$copy" using don-adres , donus-hedef 
           giving donus 
       if k-kodu-tasi = "ASYA" stop " " end-if
       if donus = 0
          perform dosya-donus-oku 
          delete file fidetext
          perform gonderim-durumu-yaz
       else
          string "Dosya Kopyalanamadi-> "
                 donus-kaynak delimited by size 
                 donus-hedef delimited by size
            into exe-donus-kodu
       end-if 

       close liste-txt.                               
*
 jandarma-exe-calistir.
           initialize git-adres  don-adres exe-param-gonder exe-param-gonderx
           move all low-values to git-adres don-adres exe-param-gonder exe-param-gonderx |excel-adres-anah
           inspect islem-anahtar replacing trailing spaces by low-values

 
*           string excel-adres-anah
*                islem-anahtar                             delimited by low-values
*                ".csv"                                    delimited by low-values
*           into excel-adres-anah

           string git-adres
               "@[DISPLAY]:\acucorp\acucbl701\acugt\bin\" delimited by low-values
                islem-anahtar                             delimited by low-values
                "kisibilgi.txt"                           delimited by low-values
           into git-adres

           evaluate gonderim-tipi
               when "G"
               when "C"
               when "R"
                    string don-adres
                        "@[DISPLAY]:\acucorp\acucbl701\acugt\bin\" delimited by low-values
                         islem-anahtar                             delimited by low-values
                         "kisidonus.txt"                           delimited by low-values
                    into don-adres
               when "S"
                    string don-adres
                        "@[DISPLAY]:\acucorp\acucbl701\acugt\bin\" delimited by low-values
                         islem-anahtar                             delimited by low-values
                         "inhouse.txt"                           delimited by low-values
                    into don-adres
           end-evaluate 
 
           string exe-param-gonder
                  "@[DISPLAY]:C:\acucorp\acucbl701\acugt\bin\janpol.exe " delimited by low-values
                  islem-anahtar                                           delimited by low-values
           into exe-param-gonder
    

            call "c$copy" using liste-txt-dosya-adres, git-adres
                 giving donus-code
                                                          
            if donus-code = 0   
              call "c$copy" using "/asya/ytl/exe/janpol.exe",
              "@[DISPLAY]:\acucorp\acucbl701\acugt\bin\janpol.exe"
              call "c$copy" using "/asya/ytl/exe/janpol.exe.config",
              "@[DISPLAY]:\acucorp\acucbl701\acugt\bin\janpol.exe.config"
*              if testmi = 0
                 call "c$system" using exe-param-gonder, 384                 || gonder gitsin dayýjým
*              end-if
            else
              display message box "Kisi Listesi Kopyalanamadi.."
            end-if 

*            stop " "                                                               || gonderim bitti donuse basla
            initialize donus-hedef  
            inspect file-zaman replacing trailing spaces by low-values
            accept file-zaman from time
            string "/asya/ytl/liste/" delimited by size
                   file-zaman delimited by low-values
                   ".txt" delimited by size
              into donus-hedef                 
            

            call "c$copy" using don-adres , donus-hedef 
                giving donus 

            if donus = 0
               perform dosya-donus-oku 
               delete file fidetext
               if gonderim-tipi <> "S"
                  perform gonderim-durumu-yaz
               end-if
            else
               string "Dosya Kopyalanamadi-> "
                      donus-kaynak delimited by size 
                      donus-hedef delimited by size
                 into exe-donus-kodu
            end-if 

            close liste-txt.                               
*
 dosya-donus-oku.
           initialize fidetext-adi u belge-no-donus exe-donus-kodu ana-dizi
           string file-zaman delimited by low-values
                  ".txt" delimited by size                                                       
           into fidetext-adi
           open input fidetext               
           open i-o tedev
           perform until fs-fidetext = "10"
           initialize fidetext-rec    
           read fidetext next no lock end move "10" to fs-fidetext
           not end          
               unstring fidetext-rec 
                        delimited by "|"
               into val-1  val-2  val-3  val-4  val-5
                    val-6  val-7  val-8  val-9  val-10 
                    val-11 val-12 val-13 val-14 val-15 
                    val-16 val-17 val-18 val-19 val-20 
                    val-21 val-22 val-23 val-24
               add 1            to u

               evaluate gonderim-tipi
                   when "G"
                   when "C"
                        move val-6       to alt-tc(u)                
                        move val-5       to alt-seri(u)                
                        move val-8       to alt-odano(u)                
                        move val-9       to alt-madi(u)                                                         
                        move val-10      to alt-msoy(u)                                                         
                        move val-13      to alt-dogtar(u)                                                       
                        move val-20      to alt-gircik(u)                                                       
                        move val-22(1:3) to alt-durum-kodu(u)                                                   
                        move val-23      to alt-durum(u)
                        move val-24      to alt-polisxml-anah(u)
                   when "S"
                        initialize tedev-rec 
                        move function numval(val-4) to tedev-tcno
                        move val-5                  to tedev-pass
                        read tedev no lock invalid
                             continue
                        end-read 
                        move val-1       to tedev-odano
                        move val-2       to tedev-adi
                        move val-3       to tedev-soyadi
                        move val-6(1:10) to tedev-kyt-tar  |kayit tarihi geliyor
                        move val-7       to tedev-ulke     |ulkesi geliyor
                        write tedev-rec invalid
                              stop " "
                        end-write 
               end-evaluate 

           end-read 
           end-perform        
           close fidetext tedev.
*
 gonderim-durumu-yaz.
       perform varying u
       from 1
       by 1 
       until u > 1000
          if alt-tc(u) = spaces and
             alt-seri(u) = spaces 
             exit perform 
          end-if

          if alt-polisxml-anah(u) = spaces
             exit perform cycle
          end-if
          initialize polisxml-rec 
          move alt-polisxml-anah(u) to polisxml-anah
          read polisxml no lock invalid
               exit perform cycle
          end-read 

          if (alt-tc(u) not = spaces and alt-seri(u) = spaces and
             polisxml-tckimlikno = function numval(alt-tc(u))) or
             (alt-tc(u) = spaces and alt-seri(u) not = spaces and 
             polisxml-kseri = alt-seri(u)) or 
             (alt-tc(u) not = spaces and alt-seri(u) not = spaces and 
             polisxml-tckimlikno = function numval(alt-tc(u))) 
             evaluate gonderim-tipi
             when "G"
                  evaluate genel-kbs-bolgesi 
                  when "J"   
                       evaluate polisxml-kbs-gonderildi 
                       when 0
                       when space
                            if function numval(alt-durum-kodu(u)(1:3)) = 100 or 107
                               move 1 to polisxml-kbs-gonderildi
                               if function numval(alt-durum-kodu(u)(1:3)) = 107 
                                  if alt-durum(u)(1:34) not = "Musteri Tesiste Zaten Kayitli.<br>"
                                     move 0 to polisxml-kbs-gonderildi
                                  end-if
                               end-if
                            else 
                               move 0 to polisxml-kbs-gonderildi
                            end-if
                       end-evaluate 
                  when "P"
                       evaluate polisxml-kbs-gonderildi 
                       when 0
                       when space
                            if function numval
                               (alt-durum-kodu(u)(1:1)) = 2 or 4
                               move 1 to polisxml-kbs-gonderildi
                            else 
                               move 0 to polisxml-kbs-gonderildi
                            end-if
                       end-evaluate 
                  end-evaluate 
             when "C"
                  evaluate genel-kbs-bolgesi 
                      when "J"   
                           evaluate polisxml-kbs-gonderildi 
                           when 0
                           when 1
                           when spaces 
                                if function numval
                                   (alt-durum-kodu(u)(1:3)) = 100 or 107
                                   move 2 to polisxml-kbs-gonderildi
                                else 
                                   move 1 to polisxml-kbs-gonderildi
                                end-if
                           end-evaluate 
                      when "P"
                           evaluate polisxml-kbs-gonderildi 
                           when 0
                           when 1
                           when spaces 
                                if function numval
                                   (alt-durum-kodu(u)(1:1)) = 1 or 2 or 4
                                   move 2 to polisxml-kbs-gonderildi
                                else 
                                   move 1 to polisxml-kbs-gonderildi
                                end-if
                           end-evaluate 
                  end-evaluate 
             end-evaluate 

             rewrite polisxml-rec invalid
                     stop " " 
             end-rewrite 
          end-if
       end-perform 
       .  
*
 polisxml-kayit-bul-start.
          start polisxml key not < polisxml-anah invalid
                continue
          not invalid
          perform with test after until fs-polisxml = "10"
          read polisxml next no lock end move "10" to fs-polisxml
          not at end   
              if alt-tc(u) not = spaces and
                 polisxml-tckimlikno = zero
                 exit perform cycle
              end-if

              if alt-seri(u) not = spaces and
                 polisxml-kseri = zero
                 exit perform cycle
              end-if

              if (alt-tc(u) not = spaces and alt-seri(u) = spaces and
                 polisxml-tckimlikno = function numval(alt-tc(u))) or
                 (alt-tc(u) = spaces and alt-seri(u) not = spaces and 
                 polisxml-kseri = alt-seri(u)) or 
                 (alt-tc(u) not = spaces and alt-seri(u) not = spaces and 
                 polisxml-tckimlikno = function numval(alt-tc(u))) 
                 evaluate gonderim-tipi
                     when "G"
                          evaluate genel-kbs-bolgesi 
                              when "J"   
                                   evaluate polisxml-kbs-gonderildi 
                                       when 0
                                       when space
                     if function numval(alt-durum-kodu(u)(1:3)) = 100 or 107
                        move 1 to polisxml-kbs-gonderildi
                        if function numval(alt-durum-kodu(u)(1:3)) = 107 
                           if alt-durum(u)(1:30) not = "Musteri Tesiste Zaten Kayitli."
                              move 0 to polisxml-kbs-gonderildi
                           end-if
                        end-if
                     else 
                        move 0 to polisxml-kbs-gonderildi
                     end-if
                                   end-evaluate 
                              when "P"
                                   evaluate polisxml-kbs-gonderildi 
                                       when 0
                                       when space
                                            if function numval(alt-durum-kodu(u)(1:1)) = 4
                                               move 1 to polisxml-kbs-gonderildi
                                            else 
                                               move 0 to polisxml-kbs-gonderildi
                                            end-if
                                   end-evaluate 
                          end-evaluate 
                     when "C"
                          evaluate genel-kbs-bolgesi 
                              when "J"   
                                   evaluate polisxml-kbs-gonderildi 
                                       when 1
                                            if function numval(alt-durum-kodu(u)(1:3)) = 100
                                               move 2 to polisxml-kbs-gonderildi
                                            else 
                                               move 1 to polisxml-kbs-gonderildi
                                            end-if
                                   end-evaluate 
                              when "P"
                                   evaluate polisxml-kbs-gonderildi 
                                       when 1
                                            if function numval(alt-durum-kodu(u)(1:1)) = 4
                                               move 2 to polisxml-kbs-gonderildi
                                            else 
                                               move 0 to polisxml-kbs-gonderildi
                                            end-if
                                   end-evaluate 
                          end-evaluate 
                 end-evaluate 

                 rewrite polisxml-rec invalid
                         stop " " 
                 end-rewrite 
*                 exit perform 
              end-if

          end-read 
          end-perform 
          end-start
      .                

