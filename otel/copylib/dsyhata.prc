*
*/
 adresleri-tasi.
    if dokumer-external-sifirla = "1"
       continue
    else
       initialize dokumer-islem-tipi fiyat-ref-external oda-ref-external 
    end-if.
    if isyeri-adres-tasi = spaces or       isyeri-adres-tasi = low-values
       display message box
               "Programin calistirilabilmesi icin yetersiz parametre !",
               title "Yetersiz parametre",
               icon mb_error_icon
               goback
    end-if.
*-----------<GECICI OLARAK YERLESTIRILDI>---------------*
*    move "ASYA"       to k-kodu-tasi.
*    move "otel2002"   to isyeri-adres-tasi.
    set turkce        to true.
*    move 11           to gun-tasi
*    move 03           to ay-tasi
*    move 2003         to yil-tasi.
*    move 01           to isyeri-no-tasi.

*-------------------------------------------------------*
    move isyeri-adres-tasi     to acast-dosya-adres  istdatatop-dosya-adres bsirunv-dosya-adres                                                     
         genel-dosya-adres     genelfis-dosya-adres  takvim-dosya-adres     onay-dosya-adres   
         takvim3-dosya-adres   kasagir-dosya-adres   plaka-dosya-adres      bavfat-dosya-adres 
         konum-dosya-adres     odalar-dosya-adres    ulke-dosya-adres       onodeme-dosya-adres
         banka-dosya-adres     doviz-dosya-adres     dagilim-dosya-adres    gidenbav-dosya-adres
         acenta-dosya-adres    acebavel-dosya-adres  acenhrk-dosya-adres    webbanka-dosya-adres 
         kontrat-dosya-adres   bavelsir-dosya-adres  tezkod02-dosya-adres   kolbant-dosya-adres
         fiyatana-dosya-adres  fiyat-dosya-adres     aksiyon-dosya-adres    bantstok-dosya-adres
         aksiyhrk-dosya-adres  bilbord-dosya-adres   rez-dosya-adres        aceuyruk-dosya-adres
         cast-dosya-adres      turizm-dosya-adres    istdata-dosya-adres    carpan-dosya-adres 
         konuk-dosya-adres     ozluk-dosya-adres     uzatma-dosya-adres     odalate-dosya-adres
         odadegis-dosya-adres  depkod-dosya-adres    postkod-dosya-adres    ckodlar-dosya-adres
         extpost-dosya-adres   romhrk-dosya-adres    exthrk-dosya-adres     webkont-dosya-adres 
         silhrk-dosya-adres    cektr-dosya-adres     fatura-dosya-adres     blok-dosya-adres   
         acenfat-dosya-adres   onkasa-dosya-adres    kur-dosya-adres        dys-dosya-adres    
         dov-boz-dosya-adres   onavans-dosya-adres   kodlar02-dosya-adres   donem-dosya-adres  
         teknik-dosya-adres    halk-dosya-adres      detist-dosya-adres     donem2-dosya-adres 
         cevap1-dosya-adres    cevap2-dosya-adres    soru-dosya-adres       taksit-dosya-adres                    
         telkod-dosya-adres    teldata-dosya-adres   telkim-dosya-adres     danisman-dosya-adres   
         tel-err-dosya-adres   kategori-dosya-adres  depozit-dosya-adres    devaracl-dosya-adres                                      
         ajanda-dosya-adres    fihrist-dosya-adres   santral-dosya-adres    sayac-dosya-adres                     
         karalist-dosya-adres  polisxml-dosya-adres  uyruk-dosya-adres      odemeler-dosya-adres
         grup-dosya-adres      butce-dosya-adres     gerfat-dosya-adres     odemetip-dosya-adres
         reztop-dosya-adres    casttop-dosya-adres   takvimtop-dosya-adres  cek-dosya-adres    
         detisttop-dosya-adres turizmtop-dosya-adres sayachrk-dosya-adres   arez-dosya-adres
         yanrez-dosya-adres    onkasar-dosya-adres   ozluk2-dosya-adres     onbkodlar10-dosya-adres
         takvim2-dosya-adres   calling-dosya-adres   not-dosya-adres        castdev-dosya-adres                  
         takip-dosya-adres     matura-dosya-adres    cast2-dosya-adres      webflog-dosya-adres                    
         grrez-dosya-adi       telayar-dosya-adres   telayarq-dosya-adres   rezweb-dosya-adres     
         depkod2-dosya-adres   fatdetay-dosya-adres  fatdetayek-dosya-adres   sehir-dosya-adres      sejkar-dosya-adres                                      
         skonuk-dosya-adres    callhrk-dosya-adres   callsil-dosya-adres    demihk-dosya-adres                                      
         kodlar10-dosya-adres  basbut-dosya-adres    aceanlas-dosya-adres   konumek-dosya-adres                  
         turizmr-dosya-adres   istdatar-dosya-adres  detistr-dosya-adres    onrezhrk-dosya-adres         
         takvimr-dosya-adres   gelist-dosya-adres    telkont-dosya-adres    donhrk2-dosya-adres
         musteri-dosya-adres   gelist2-dosya-adres   uyrukkbs-dosya-adres   blokd-dosya-adres  
         sprohrk-dosya-adres   prohrk-dosya-adres    firma-dosya-adres      bupgfiy-dosya-adres
         konu2-dosya-adres     restrez-dosya-adres   hrk2-dosya-adres       gala-dosya-adres   
         folref-dosya-adres    konu3-dosya-adres     odalar2-dosya-adres    fcari-dosya-adres  
         route-dosya-adres     otomail-dosya-adres   castdon-dosya-adres    konstop-dosya-adres
         yromhrk-dosya-adres   rezek-dosya-adres     acesch-dosya-adres     rezodablok-dosya-adres                     
         mailtipi-dosya-adres  acenfat2-dosya-adres  mailkime-dosya-adres   pachrk-dosya-adres                         
         mailhtml-dosya-adres  maildata-dosya-adres  soutof-dosya-adres     webfiyat-dosya-adres                       
         aksiyon2-dosya-adres  outof-dosya-adres     butcegir-dosya-adres   weblog-dosya-adres                         
         cast3-dosya-adres     hesayr-dosya-adres    formul-dosya-adres     sejkkod-dosya-adres                        
         lapkont-dosya-adres   lpsentgr-dosya-adres  rezdigtar-dosya-adres  sozhrk-dosya-adres                         
         karttip-dosya-adres   fatdetay2-dosya-adres  fatdetayek2-dosya-adres hediyhrk-dosya-adres   blokupg-dosya-adres                        
         malzeme-dosya-adres   hediye-dosya-adres    gruplar-dosya-adres    ldevremulk-dosya-adres                     
         grupfiy-dosya-adres   break-dosya-adres     gruplog-dosya-adres    pasoru-dosya-adres                       
         olay-dosya-adres      bloklog-dosya-adres   wakeup-dosya-adres     pahrk-dosya-adres                        
         telayaru-dosya-adres  olayhrk-dosya-adres   backup-dosya-adres     vipistek-dosya-adres                     
         devremulk-dosya-adres yassinir-dosya-adres  demi-dosya-adres       webklog-dosya-adres                      
         prim-dosya-adres      donhrk-dosya-adres    gorev-dosya-adres      formulhes-dosya-adres                    
         odemesil-dosya-adres  primhrk-dosya-adres   devarac-dosya-adres    soztar-dosya-adres                       
         fatdokum-dosya-adres  devfiyat-dosya-adres  smsliste-dosya-adres   earsbil-dosya-adres                      
         uyrukweb-dosya-adres  smstan-dosya-adres    pacevap-dosya-adres    fiyatind-dosya-adres                                         
         bupgind-dosya-adres   santkont-dosya-adres  beklerez-dosya-adres   fcarihrk-dosya-adres  
         bantlog-dosya-adres   demihktan-dosya-adres genel2-dosya-adres     useinbox-dosya-adres
         odatemiz-dosya-adres  beklelog-dosya-adres  ulkeek-dosya-adres     hessorgu-dosya-adres
         kdata-dosya-adres     kvkksoru-dosya-adres  esletab-dosya-adres    istek-dosya-adres
          fatdetayek-dosya-adres
         if yardim-gonder(30:1) = 1
            move "standart"  to musteri-dosya-adres prohrk-dosya-adres sprohrk-dosya-adres
         end-if 
          move "standart"  to baglanti-dosya-adres
*         trkod-dosya-adres      polihrk1-dosya-adres polihrk2-dosya-adres
*         mail-dosya-adres
*         harf-dosya-adres
*         karalist-dosya-adres
*         stopsale-dosya-adres stophrk-dosya-adres
         .

*genel-oku.
*    open input genel
*    move 1 to genel-anahtar
*    read genel no lock invalid continue
*         not invalid
*         move calis-yil   to yil-tasi
*         move calis-ay    to  ay-tasi
*         move calis-gun   to gun-tasi
*    end-read
*    close genel.

*/Home ve end tuslari numaraya baglaniyor ...
    call "c$keymap" using "1".
    set environment
        "keystroke" TO "Edit=Home      Exception=500 kh",
        "keystroke" TO "Edit=End       Exception=501 KE",
        "KEYSTROKE" TO "Edit=Left      Exception=202 kl",
        "KEYSTROKE" TO "Edit=Right     Exception=201 kr"  
     
    if hangi-ref-secildi > 0
       move hangi-ref-secildi  to oda-ref
    end-if.
*** 
 kullandi.
*       if k-param-sifre-ara not > 1   move 999 to   k-param-sifre-ara   end-if
*       if k-param-ara not > 1   move 999 to   k-param-ara   end-if
*       if k-param-ara2 not > 1   move 999 to   k-param-ara2   end-if
       accept k-zaman from time
        
      if k-son-islem not > 100 then 
         compute k-son-islem =  k-zaman
         initialize k-ara-verdi k-uzun-ara-verdi 
      end-if
      if k-son-sifre not > 100 then 
         compute k-son-sifre =  k-zaman
      end-if 
      if k-zaman <  k-son-islem 
        initialize k-son-islem k-son-sifre
      end-if

      compute  k-zaman-say  =  (function numval(k-zaman(1:2)) * 60 * 60  ) +
        (function numval(k-zaman(3:2)) * 60   )  +
        (function numval(k-zaman(5:2))  )
      compute  k-zaman-say2  =  (function numval(k-son-islem(1:2)) * 60 * 60  ) +
        (function numval(k-son-islem(3:2)) * 60   )  +
        (function numval(k-son-islem(5:2))  )


     compute  k-zaman-fark-islem  =  k-zaman-say - k-zaman-say2
      move    k-zaman-fark-islem to k-zaman-fark
      compute  k-zaman-fark-sifre  =  k-zaman-say - k-zaman-say2
      if k-zaman-fark-islem >  k-param-ara 
        move 1 to k-ara-verdi                              
||||        display message box k-zaman-fark "  "  k-param-ara
      end-if
      if k-zaman-fark-islem >  k-param-ara * 5
          move 1 to  k-uzun-ara-verdi
      end-if
       
      if  k-zaman-fark-sifre >  k-param-ara2 and k-aktif-sifre = 1 
        
          if m-menu not = 0 and m-menu not = null and m-form not = 0  and m-form not = null | and m-menu not = 538976288 and m-form not = 538976288 
              perform with test after until m-gec-gecme  = 0   
                    call "/asya/ytl/obj/otel/menuta22.asy" using m-gec-gecme
                                                       
                    on exception
                         perform callerr-proc
                         exit paragraph
                    not on exception
                        cancel "/asya/ytl/obj/otel/menuta22.asy"
                    end-call
              end-perform
             
                 
               call "/asya/ytl/obj/otel/menutaze.asy" using m-menu
                                                       m-form
                    on exception
                         perform callerr-proc
                         exit paragraph
                    not on exception
                        cancel "/asya/ytl/obj/otel/menutaze.asy"
                    end-call
               perform sifre-gecti


          end-if
      end-if

         .
***
 sifre-gecti.
      accept k-zaman from time
      move k-zaman to  k-son-sifre  k-son-islem 
      initialize k-ara-verdi k-uzun-ara-verdi 
      .

******
 fileerr-proc.
    if  fs-grrez> "00" or fs-grtumrez > "00" or fs-kart > "00" then 
       move 1 to onb-hata 
       exit paragraph
    end-if
    
    call "c$rerr" using extend-stat text-message 1.
    move extend-stat       to fileerr-linkage-hata-no.
    move Secondary-Error   to fileerr-linkage-secondary-hata-no.

    call "c$rerrname" using fileerr-linkage-dosya-adi.
    call "/asya/ytl/obj/otel/fileerr.asy" using fileerr-linkage-bilgiler
         on exception
            perform callerr-proc
    not on exception
         cancel "/asya/ytl/obj/otel/fileerr.asy"
    end-call.
*/ Log sistemi tcp-ip paketlerinde problem olduðu zaman
    if fs-log-index = "98"
       exit paragraph
    end-if
    perform destroy-window-proc.
    if fs-esbilbord = "39" or fs-grrez > "00" then 
      move 1 to onb-hata 
      else

    goback
    end-if.

 callerr-proc.
    call "c$callerr" using fileerr-linkage-hata-no.
*    move all low-values to fileerr-linkage-dosya-adi.
    evaluate fileerr-linkage-hata-no
         when "01"  move "Program Bulunamadi                                  " to fileerr-linkage-dosya-adi(1:19)
         when "02"  move "Cagrilan Program Asya-Soft Program Formatinda Degil " to fileerr-linkage-dosya-adi(1:52)
         when "03"  move "Cagrilan Program  Istenilen Yapida Degil            " to fileerr-linkage-dosya-adi(1:52)
         when "04"  move "Programin Yuklenmesi Icin Hafiza Yetersiz           " to fileerr-linkage-dosya-adi(1:52)
         when "05"  move "Program Versiyonu Uymuyor                           " to fileerr-linkage-dosya-adi(1:52)
         when "06"  move "Hafizada Calisan Program Tekrar Yuklenemez          " to fileerr-linkage-dosya-adi(1:52)
         when "07"  move "Hata Kodu : 07 Bilinmeyen Hata                      " to fileerr-linkage-dosya-adi(1:52)
         when "08"  move "Program Yapisi Istenilen Formatta Degil             " to fileerr-linkage-dosya-adi(1:52)
         when "09"  move "Ag Ortami Icin Share.exe Calistirilmali             " to fileerr-linkage-dosya-adi(1:52)
         when "14"  move "Japonya Runtime Sistemi Desteklenmiyor              " to fileerr-linkage-dosya-adi(1:52)
         when other move "Bilinmeyen Hata Kodu ->                             " to fileerr-linkage-dosya-adi(1:52)
                    move fileerr-linkage-hata-no                                to fileerr-linkage-dosya-adi(26:2)
    end-evaluate.
    inspect fileerr-linkage-dosya-adi replacing trailing spaces by low-values
    display message box
        
            "Hata kodu : [",fileerr-linkage-hata-no,"]",x"0a0d",
            "Aciklama  :  ",fileerr-linkage-dosya-adi,x"0a0d",
            "PROGRAM  :  ", hatali-program-adi ,x"0a0d",
            "Lutfen Ant-Bim Bilgisayari Arayiniz",
            title "Program Cagirma Hatasi"
            icon mb_error_icon,
            type mb_ok.

 mesaj-ver.
    call "/asya/ytl/obj/otel/mesaj.asy" using mesaj-link on exception
         display message box
                 "Mesaj Programi Bulunamadi",
                 x"0a0d"
                 "Lutfen Mesaji Ant-Bim Bilgisayara Iletiniz"
                 icon mb_error_icon
                 title "Hata",
                 type mb_ok
    not on exception
         cancel "/asya/ytl/obj/otel/mesaj.asy"
    end-call.

 kaydet-soru.
      display message box
              "Degisiklikler kaydedilsin mi ? "
              icon mb_default_icon
              type mb_yes-no
              default 1
              title "Kayit onayi"
              returning soru-donus.
 sil-soru.
       display message box
              "Kayit silinsin mi ?"
              icon mb_warning_icon
              type mb_yes-no
              default 2
              title "Silme onayi"
              returning soru-donus.
*
*
 oda-kisalt.
      move o-uzun to o-kisa
      if genel-uzun-oda-no-kullanilsin = 1 
         
         move o-uzun        to   odalar2-uzun-no
         read odalar2 no lock invalid 
              continue
         not invalid
             move odalar2-no to o-kisa
         end-read
      end-if

     .
*
 oda-uzat.
      move o-kisa to o-uzun
      if genel-uzun-oda-no-kullanilsin = 1 
                        
                                 move o-kisa        to  odalar2-no 
                                 read odalar2 no lock key odalar2-anah1  invalid continue
                                 not invalid
                                 move odalar2-uzun-no to o-uzun
                                  end-read
                         
                     end-if

     .

*
 dosya-kayit-sayisi-bul.
*/ filesys-filename'e dosya adi yollanir
*/ filesys-record-count'ta kayit sayisi olur.
*       inspect filesys-filename replacing trailing spaces by low-values
*       set finput to true
*       set open-function to true
*       call "i$io" using io-function,filesys-filename,open-mode,filesys-logical-info.
*       if return-code = zeroes
*          display message box "Can't get file record count"
*                  title "Error",icon mb_Error_icon
*          exit paragraph.
*       move return-code to filesys-file-handle.
*       set info-function to true
*       set get-record-count to true
*       call "i$io" using io-function,filesys-file-handle,info-mode,filesys-record-count-info.
*       set close-function to true
*       call "i$io" using io-function,filesys-file-handle.
*
           COPY "logsys.prc".

           copy "dilayar.prc".
