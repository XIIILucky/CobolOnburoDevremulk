**************************************************
********************LOG***************************
**************************************************
**F-ERRNO larý koymayý ve hatada errorloga yazmayý unutmaaaaaaaaaaa
**F-ERRNO larý koymayý ve hatada errorloga yazmayý unutmaaaaaaaaaaa
**F-ERRNO larý koymayý ve hatada errorloga yazmayý unutmaaaaaaaaaaa
*
********** CALL DOSYA ISLEMLERI *************
*
 log-call-proc.
*      exit paragraph 
      if log-isyeri-adres-tasi = spaces 
         move isyeri-adres-tasi         to log-isyeri-adres-tasi
      end-if
      if log-program-modul = spaces
         move program-modul             to log-program-modul
      end-if
      move function length(call-rec)    to log-index-record-size
                                           log-dest-size
      set log-dest-addr                 to address of log-kayit-alani
      move "Write"                      to log-last-op
      move all low-values               to log-dir-file
      string log-dir-file,
             "/asya/ytl/data/"       delimited by low-values,
             log-program-modul           delimited by low-values,
             "/"                     delimited by low-values,
             log-isyeri-adres-tasi       delimited by low-values,
             "/"                     delimited by low-values,
             calling-dosya-adi       delimited by low-values
             into log-dir-file.

      inspect log-dir-file
              replacing all spaces by low-values
      perform log-set-addr.
      perform log-no-al.
      open i-o log-index.
      perform log-index-write.
      close log-index.
      if log-transaction-durum <> 1 
         perform log-data-write-proc.

      initialize log-program-modul log-isyeri-adres-tasi.
             
********** DOSYA ISLEMLERI *************
 log-proc.
*       exit paragraph 
*      if k-kodu-tasi = "ASYA" stop " " end-if
      if log-sistemi-devrede = 0
         exit paragraph.


      if log-isyeri-adres-tasi = spaces 
         move isyeri-adres-tasi         to log-isyeri-adres-tasi
      end-if
      if log-program-modul = spaces
         move program-modul             to log-program-modul
      end-if

****** Index cakismasini onlemek icin koydummm
      if log-numara-durum <> "E" 
         move "E" to log-numara-durum
         initialize log-numara-numara
         move function random(10000) to log-numara-random
         compute log-numara-random = log-numara-random * 10000
         move log-numara-random      to log-numara-numara
      end-if
      add 1 to log-numara-numara
******
      move log-source-size          to log-index-record-size
                                       log-dest-size
      set log-dest-addr             to address of log-kayit-alani.
      call "c$getlastfileop" using log-last-op.
      call "c$rerrname"      using log-dir-file.
      perform log-set-addr.

      perform log-ayikla.
      if log-seviye-kontrol <> 9 
         exit paragraph.

      perform log-no-al.
      open i-o log-index.
*/ log sistemi tcp-ip bloklarinda tasma (OVERFLOW-HANDSHAKING) old. zaman
      if fs-log-index = "98"
         exit paragraph.
      perform log-index-write.
      close log-index.
      if log-transaction-durum <> 1 
         perform log-data-write-proc.
*
 log-set-addr.
      perform log-file-parse.
      move low-values                    to log-index-adres
                                            log-data-adres.
      string log-index-adres,
             "/asya/ytl/log/"       delimited by low-values,
             log-program-modul          delimited by low-values,
             "/"                    delimited by low-values,
             log-isyeri-adres-tasi      delimited by low-values,
             "/"                    delimited by low-values,
             log-file               delimited by low-values
             into log-index-adres.
      string log-data-adres,
             "/asya/ytl/log/"       delimited by low-values,
             log-program-modul          delimited by low-values,
             "/"                    delimited by low-values,
             log-isyeri-adres-tasi      delimited by low-values,
             "/"                    delimited by low-values,
             log-file               delimited by low-values,
             ".log"                 delimited by low-values,
             into log-data-adres.
*
 log-file-parse.
      inspect log-dir-file   
              replacing trailing spaces 
              by low-values
      initialize log-ii
      inspect log-dir-file
              tallying log-ii
              for all low-values
      compute log-ii = function length(log-dir-file) - log-ii
      perform varying log-i 
              from log-ii
              by -1
              until log-i = 0
              if log-dir-file(log-i:1) = "/" or "\"
                 add 1 to log-i
                 exit perform
              end-if
      end-perform.
      move log-dir-file(log-i:) to log-file.

* nokta ile ayrilmissa onuda ucur
      perform varying log-i
              from 1
              by 1
              until log-i > 20
              if log-file(log-i:1) = "."
                 move all spaces to log-file(log-i:)
                 exit perform
              end-if
      end-perform.

      inspect log-file 
              replacing trailing spaces
              by low-values.
*
 log-index-write.
      initialize log-index-rec
      move tarih-tasi                    to log-index-cal-tarih
      move log-data-anah                 to log-index-islem-no
      move log-numara-numara             to log-index-sirket
      evaluate log-last-op
      when "Delete"
           set log-index-islem-delete    to true
      when "Write"
           set log-index-islem-write     to true
      when "Rewrite"
           set log-index-islem-rewrite   to true
      end-evaluate
      move k-kodu-tasi                   to log-index-kullanici
      accept log-index-sys-tarih         from century-date
      accept log-index-sys-zaman         from time.
      move terminal-name                 to log-index-terminal-name
      move user-id                       to log-index-user-id       
      move station-id                    to log-index-station-id    
      move client-machine-name           to log-index-client-machine-name
      move log-source-size               to log-index-record-size
      call "c$myfile" using 
              log-index-program-name
      end-call

      write log-index-rec 
            invalid 
                move 1 to log-transaction-durum
                display message box
                        "Log index yazilamadi ...."
      end-write.
*
 log-data-write-proc.
     perform log-data-open-proc.
     if f-errno = 0
         continue
         perform log-data-write
        if f-errno <> 0
            continue
*           display message box "hata ",f-errno
        end-if
        perform log-data-close
     end-if.

*
 log-data-open-proc.
     perform log-data-open.
     if return-code = zeroes
        evaluate true
        when e-missing-file
             perform log-data-create
             perform log-data-open
        when e-broken
             display message box 
                     log-data-adres,
                     " dosya index yapisi bozulmus ...."
                     icon mb_error_icon
                     title "Hata"
        when other 
             display message box 
                     Log-data-adres," hata kodu : ",f-errno
                     icon mb_Error_icon
                     title "Log hatasi"
        end-evaluate.

     move return-code     to filesys-file-handle.

*
 log-data-open.
     inspect log-data-adres
             replacing trailing spaces by low-values
     set Fio           to true
     set open-function to true
     call "i$io" using io-function,
                       log-data-adres,
                       open-mode,
                       filesys-logical-info
     end-call.

*
 log-data-write.
     add 10                        to log-dest-size
     call "m$copy" using log-dest-addr,
                         log-source-addr,
                         log-source-size.
     move log-data-anah to log-kayit-alani(log-source-size + 1:)
     set write-function to true
     call "i$io" using io-function
                       filesys-file-handle,
                       log-kayit-alani
                       log-dest-size.
*
 log-data-close.
      set close-function to true
      call "i$io" using io-function
                        filesys-file-handle.
*
 log-data-create.
     inspect log-dir-file
             replacing trailing spaces by low-values
     set Finput        to true
     set open-function to true
     call "i$io" using io-function,
                       log-dir-file,
                       open-mode,
                       filesys-logical-info
     end-call
     if return-code = zeroes
        display message box 
        log-dir-file," dosyasi acilamiyor... Hata : ",f-errno
        icon mb_Error_icon
        title "Log hatasi"
        exit paragraph.

     move return-code       to log-source-file-handle.
     set info-function      to true
     move 0                 to info-mode
     call "i$io" using io-function,
                       log-source-file-handle,
                       info-mode,
                       key-info,
     end-call.

*
* Anahtar saha 2 tane birinci no duplicate ve benim
* anahtar saham 
* 2.ncisi gercek anahtar saha ama alt anahtar 
     move log-source-size   to max-rec-size min-rec-size log-i
     add 10                 to max-rec-size min-rec-size
     move 2                 to num-keys
     move 1                 to dups-allowed
     add 1                  to num-segs
     move all low-values    to log-keys-area
     string log-keys-area,
            "01,0,10,"       delimited by low-values
            log-source-size  delimited by low-values,
            ","              delimited by low-values,
            key-info         delimited by low-values
            into log-keys-area.

     inspect log-keys-area replacing trailing spaces by low-values

     string log-keys-area,
            ",10,"            delimited by low-values,
            log-source-size  delimited by low-values
            into log-keys-area.

     set make-function      to true
     call "i$io" using io-function
                       log-data-adres,
                       log-dusunce,
                       null,
                       filesys-logical-info
                       log-keys-area,
                       null.


      set close-function to true
      call "i$io" using io-function
                        log-source-file-handle.
      
*
 log-no-al.
      if log-program-modul = "muha"
         perform muhasebe-genelfis-oku
         exit paragraph
      end-if

      perform genelfis-oku.

*
 muhasebe-genelfis-oku.
      open i-o muhasebe-genelfis.
      move 1 to muhasebe-genelfis-anahtar
      read muhasebe-genelfis no lock invalid
           continue
      end-read
      if muhasebe-genelfis-log-no not numeric
         move 1 to muhasebe-genelfis-log-no
      end-if
      add 1 to muhasebe-genelfis-log-no
      rewrite muhasebe-genelfis-rec invalid
              write muhasebe-genelfis-rec end-write
      end-rewrite
      close muhasebe-genelfis.
      move muhasebe-genelfis-log-no       to log-data-anah.
*
 genelfis-oku.
      open i-o genelfis.
      move 1 to genelfis-anahtar
      read genelfis no lock invalid
           continue
      end-read
      if genelfis-log-no not numeric
         move 1 to genelfis-log-no
      end-if
      add 1 to genelfis-log-no
      rewrite genelfis-rec invalid
              write genelfis-rec end-write
      end-rewrite
      close genelfis.
      move genelfis-log-no       to log-data-anah.
*
 logview-call.
      call "/asya/ytl/obj/otel/logview.asy" using 
                  link-logview-link,
      on exception 
         perform callerr-proc
      not on exception
         cancel "/asya/ytl/obj/otel/logview.asy"
      end-call.

*
 log-ayikla.
* ilyaz hoca istedi
* yapildi ... :)
      initialize log-seviye-kontrol.
      inspect log-file replacing all low-values by spaces
      evaluate program-modul

      when "otel"
           evaluate log-file
              when "acenta"   move 1 to log-seviye-kontrol
              when "firma"    move 1 to log-seviye-kontrol
              when "aksiyon"  move 1 to log-seviye-kontrol
              when "banka"    move 1 to log-seviye-kontrol
              when "cevap1"   move 2 to log-seviye-kontrol
              when "cevap2"   move 2 to log-seviye-kontrol
              when "dagilim"  move 1 to log-seviye-kontrol
              when "depkod"   move 1 to log-seviye-kontrol
              when "depozit"  move 2 to log-seviye-kontrol
              when "doviz"    move 1 to log-seviye-kontrol
              when "extpost"  move 1 to log-seviye-kontrol
              when "fihrist"  move 2 to log-seviye-kontrol
              when "fihrist1" move 2 to log-seviye-kontrol
              when "fiyatana" move 1 to log-seviye-kontrol
              when "genel"    move 1 to log-seviye-kontrol
              when "genelfis" move 1 to log-seviye-kontrol
              when "halk"     move 1 to log-seviye-kontrol
              when "kat"      move 1 to log-seviye-kontrol
              when "kategori" move 1 to log-seviye-kontrol
              when "kodlar02" move 1 to log-seviye-kontrol
              when "kontrat"  move 1 to log-seviye-kontrol
              when "konuk"    move 1 to log-seviye-kontrol
              when "konum"    move 1 to log-seviye-kontrol
              when "kur"      move 1 to log-seviye-kontrol
              when "odalar"   move 1 to log-seviye-kontrol
              when "onavans"  move 1 to log-seviye-kontrol
              when "ozluk"    move 1 to log-seviye-kontrol
              when "postkod"  move 1 to log-seviye-kontrol
              when "rez"      move 1 to log-seviye-kontrol
              when "aceanlas" move 1 to log-seviye-kontrol
              when "cast"     move 2 to log-seviye-kontrol
              when "soru"     move 1 to log-seviye-kontrol
              when "telkim"   move 2 to log-seviye-kontrol
              when "telkod"   move 1 to log-seviye-kontrol
              when "ulke"     move 1 to log-seviye-kontrol
              when "polisxml" move 2 to log-seviye-kontrol
              when "karalist" move 1 to log-seviye-kontrol
              when "grup"     move 1 to log-seviye-kontrol
              when "uyruk"    move 1 to log-seviye-kontrol
              when "yrez"     move 1 to log-seviye-kontrol
              when "isyeri"   move 1 to log-seviye-kontrol
              when "kllnc"    move 1 to log-seviye-kontrol
              when "prosif"   move 1 to log-seviye-kontrol
              when "prtler"   move 1 to log-seviye-kontrol
              when "devmulk"  move 1 to log-seviye-kontrol
              when "odemeler" move 1 to log-seviye-kontrol
              when "taksit"   move 1 to log-seviye-kontrol
              when "odemetip" move 1 to log-seviye-kontrol
              when "prim"     move 1 to log-seviye-kontrol
              when "gorev"    move 1 to log-seviye-kontrol
              when "primhrk"  move 1 to log-seviye-kontrol
              when "danisman" move 1 to log-seviye-kontrol
              when "cek"      move 1 to log-seviye-kontrol
              when "donhrk"   move 1 to log-seviye-kontrol
              when "donem"    move 1 to log-seviye-kontrol
              when "donem2"   move 1 to log-seviye-kontrol
              when "romhrk"   move 1 to log-seviye-kontrol
              when "exthrk"   move 1 to log-seviye-kontrol
              when "kart"     move 1 to log-seviye-kontrol
              when "takip"    move 1 to log-seviye-kontrol
              when "formul"   move 1 to log-seviye-kontrol
      when other 
           move 1 to log-seviye-kontrol
           end-evaluate
      end-evaluate.
      inspect log-file replacing all spaces by low-values

      if log-sistem-seviyesi = 1 or 2 
         continue
      else
         move 1 to log-sistem-seviyesi
      end-if.

      if log-seviye-kontrol >= log-sistem-seviyesi
         move 9 to log-seviye-kontrol
      else
         move 0 to log-seviye-kontrol
      end-if.
