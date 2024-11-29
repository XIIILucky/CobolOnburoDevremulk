*{Bench}prg-comment
* trlog.cbl
* trlog.cbl is generated from D:\asya\acugt.ytl\otel\trlog.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. trlog.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:04:07.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
        alphabet turkce-alfabe 1 thru 256. 
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
         COPY "genel.sel".
         COPY "genelfis.sel".
         COPY "takvim.sel".
         COPY "errorlog.sel".                                                    
         COPY "logindex.sel".                                                         
         copy "devremulk.sel".
         copy "kllnc.sel".
            copy "odalar.sel".  

**************LOG REZ SEL**************
       SELECT REZ-log ASSIGN RANDOM,REZ-log-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS rez-log-fis
           alternate record key REZ-log-alt = REZ-log-anah, REZ-log-fis duplicates
           STATUS FS-REZ-log.

       SELECT genel-log ASSIGN RANDOM,genel-log-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS genel-log-fis
           alternate record key genel-log-alt = genel-log-anahtar, genel-log-fis duplicates
           STATUS FS-genel-log.


       SELECT eREZ-log ASSIGN RANDOM,eREZ-log-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS erez-log-fis 
           alternate record key eREZ-log-alt = eREZ-log-anah, EREZ-log-fis duplicates

           STATUS FS-eREZ-log.

********************************************
**************LOG KONUK SEL**************
       SELECT KONUK-log ASSIGN RANDOM,KONUK-log-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS KONUK-log-fis
           alternate record key KONUK-log-alt = KONUK-log-anah, KONUK-log-fis duplicates

           STATUS FS-KONUK-log.


       SELECT eKONUK-log ASSIGN RANDOM,eKONUK-log-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS eKONUK-log-fis 
           alternate record key eKONUK-log-alt = eKONUK-log-anah, EKONUK-log-fis duplicates

           STATUS FS-eKONUK-log.

********************************************
********************************************
**************CAST LOG SEL**************
       SELECT CAST-log ASSIGN RANDOM,CAST-log-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS CAST-log-fis
           alternate record key CAST-log-alt = CAST-log-anah, CAST-log-fis duplicates

           STATUS FS-CAST-log.


       SELECT eCAST-log ASSIGN RANDOM,eCAST-log-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS eCAST-log-fis 
           alternate record key eCAST-log-alt = eCAST-log-anah, ECAST-log-fis duplicates

           STATUS FS-eCAST-log.

********************************************

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         COPY "genel.lib".
         COPY "genelfis.lib".
         COPY "takvim.lib".
         COPY "errorlog.lib".                                                    
         COPY "logindex.lib".                                                         
         copy "devremulk.lib".
         copy "kllnc.lib".
            copy "odalar.lib".  

 FD GENEL-log LABEL RECORD STANDARD.
 01 genel-log-REC.
          
          02 genel-log-ANAHTAR        PIC 9.

          02 DONEM-log-BASI.
             03 DONEM-log-BASI-YIL    PIC 9(04).
             03 DONEM-log-BASI-AY     PIC 9(02).
             03 DONEM-log-BASI-GUN    PIC 9(02).
          02 DONEM-log-SONU.
             03 DONEM-log-SONU-YIL    PIC 9(04).
             03 DONEM-log-SONU-AY     PIC 9(02).
             03 DONEM-log-SONU-GUN    PIC 9(02).
          02 BAKIM-log-BASI-TARIH.
             03 BAKIM-log-BASI-YIL    PIC 9(04).
             03 BAKIM-log-BASI-AY     PIC 9(02).
             03 BAKIM-log-BASI-GUN    PIC 9(02).
          02 BAKIM-log-SONU-TARIH.
             03 BAKIM-log-SONU-YIL    PIC 9(04).
             03 BAKIM-log-SONU-AY     PIC 9(02).
             03 BAKIM-log-SONU-GUN    PIC 9(02).
          02 CALISMA-log-TARIHI.
             03 CALIS-log-YIL         PIC 9(04).
             03 CALIS-log-AY          PIC 9(02).
             03 CALIS-log-GUN         PIC 9(02).
          02 SIRKET-log-ADRESKERI.
             03 OTEL-log-SIRKETI      PIC X(08).
             03 MUHA-log-SIRKETI      PIC X(08).
             03 STOK-log-SIRKETI      PIC X(08).
             03 COST-log-SIRKETI      PIC X(08).
             03 PERS-log-SIRKETI      PIC X(08).
             03 POSA-log-SIRKETI      PIC X(08).
             03 XXX1-log-SIRKETI      PIC X(08).
             03 XXX2-log-SIRKETI      PIC X(08).
             03 XXX3-log-SIRKETI      PIC X(08).
          02 SCRSAVER-log             PIC X.
*    02 SCR-ZAMAN            PIC 9(10).
*    02 TEXT-ADRES           PIC X(30).
          02 genel-log-max-sifre-ara   pic 9(3).
          02 genel-log-max-dok-ara     pic 9(3).
          02 genel-log-max-rez-kat     pic 9.
          02 genel-log-max-dok-ara2    pic 9(3).
          02 genel-log-aktif-sifre     pic 9.
          02 genel-log-netsis-earsiv   pic 9.
          02 genel-log-depozit-oto-sil  pic 9.
          02 genel-log-eski-on-odeme-devrede pic 9 .
          02 genel-log-ODA-KIRLETME-DEVREDe pic 9.
          02 genel-log-filler-bos2 pic x(05).
          02 genel-log-filler-bos3 pic x(10).
          02 genel-log-online-onek  pic x(7).
          02 genel-log-konum-upgrade-devrede pic 9.
          02 genel-log-fiks-yok   pic 9.
          02 genel-log-dusuk-yok   pic 9.

          02 EKRAN-log-SEKME-SAYISI   PIC 9(02).
          02 genel-log-AJANDA-CALIS   PIC X(01).
          02 genel-log-PRINTER-FILTRE PIC X.
          02 genel-log-HIST-OZ-FIH    PIC 9.
             88 HIST-log-OZ-FIH-COK   VALUE IS 0.
             88 HIST-log-OZ-FIH-TEK   VALUE IS 1.
          02 genel-log-TESIS-KODU     PIC X(05).
          02 genel-log-MALI-ESAS      PIC 9.
          02 genel-log-LOG            PIC 9.
             88 genel-log-LOG-VAR     VALUE 1.
          02 genel-log-LOG-SEVIYE     PIC 9.
          02 genel-log-OTO-PERYOT     PIC X.
          02 genel-log-sirket-grup    PIC 9(02). 
          02 genel-log-DIL            PIC X(01).
             88 genel-log-TURKCE    VALUE " ","T".
          02 genel-log-onodeme-odano pic xxxx.
          02 genel-log-proformali-calisma          PIC 9.
          02 genel-log-REZPARA.
             03 REZPARA-log-BANKA             PIC 99.
             03 REZPARA-log-DOVIZ             PIC 99.
             03 REZPARA-log-PAN-TIPI          PIC XX.
             03 REZPARA-log-ODEME-TIPI        PIC XX.
             03 REZPARA-log-ULKE              PIC XXX.
             03 REZPARA-log-AYGUN             PIC X.
             03 REZPARA-log-K-G-B             PIC X.
             03 REZPARA-log-ADI-BOSGEC        PIC X.
             03 REZPARA-log-SOYADI-BOSGEC     PIC X.
             03 REZPARA-log-SHORT-UYARI       PIC X.
             03 REZPARA-log-SHORT-GECSIN      PIC X.
             03 REZPARA-log-STOPS-UYARI       PIC X.
             03 REZPARA-log-STOPS-GECSIN      PIC X.
             03 REZPARA-log-ESKIMUS-ARA       PIC X.
             03 REZPARA-log-MUKERRER-ARA      PIC X.
             03 REZPARA-log-MUKERRER-NASIL    PIC X.
                88 REZPARA-log-VOUCHERDEN-ARA VALUE "V".
                88 REZPARA-log-ISIMDEN-ARA    VALUE "I".
                88 REZPARA-log-TUMUNDE-ARA    VALUE "T".
             03 REZPARA-log-MUKERRER-GECSIN   PIC X.
             03 REZPARA-log-DETAY-ALSIN       PIC X.
             03 REZPARA-log-BLOKAJ            PIC X.
             03 REZPARA-log-FIS-SOR           PIC X.
             03 REZPARA-log-DUZ-FIS           PIC X.
             03 REZPARA-log-BLOKAJ-FARKLI     PIC X.
             03 REZPARA-log-CIFTE-BLOKAJ      PIC X.
             03 REZPARA-log-ANLASMA           PIC XX.
             03 REZPARA-log-KONT-UYARI        PIC X.
             03 REZPARA-log-KONT-GECSIN       PIC X.
             03 REZPARA-log-KONT-TIPI         PIC 9.
             03 REZPARA-log-PAZAR             PIC X(02).
             03 REZ-PARA-ISL-SISTEMDEN    PIC 9.
             03 REZPARA-log-TRACE             PIC 9.
********** REZPARA-log-TRACE = 1 Ise Kisi sayilari ve fiyatlari rezden degil
**********                 Cast tan alinacak demektir.
             03 REZPARA-log-eskimus-soyad     Pic 9.
             03 REZPARA-log-sifir-pax         pic 9.
             03 REZPARA-log-ortak-profil      pic 9.
             03 rez-para-profil-yok       pic 9.
             03 rez-para-share-yok        pic 9.
             03 REZPARA-log-web-ulke          pic xxx.
             03 genel-log-muha-refk           pic 9(3).
************/antalya source birlesmede kullanildi             
*/***********  03 genel-log-REZ-BOS             PIC X(06).
          02 genel-log-CINPARA.
             03 CINPARA-log-log-EXT-FOLIO.
*********C-In Esnasinda Extra Foliolar Icin bu Bolum Uygulanacak ise extra folio
*********aciksin mi? Acilaceksa kac adet acilsin ve bunlara ait bilgiler.....
*********Ayni Durum Telefon Foliosu Icin de gecerlidir.......................
*********Breakdown Uygulamasi yapilacakmi? yapilacak ise rez fiyati dagilimdan
*********kucuk olursa c-ine devam etsin mi programdan mi ciksin?
*********Dolu odaya c-in yapsin mi..Musteri listesi koduna ne atsin...?
                04 CINPARA-log-EXT-UYGULA    PIC X.
                04 CINPARA-log-EXT-FOL-AC    PIC X.
                04 CINPARA-log-EXT-FOL-ADET  PIC 9.
                04 CINPARA-log-EXT-FOL-BANKA PIC 99.
                04 CINPARA-log-EXT-FOL-DOVIZ PIC 99.
                04 CINPARA-log-EXT-FOL-PAN   PIC XX.
                04 CINPARA-log-EXT-FOL-ODE   PIC XX.
                04 CINPARA-log-EXT-FOL-ULKE  PIC XXX.
                04 CINPARA-log-EXT-FOL-AYGUN PIC X.
             03 CINPARA-log-TEL-FOLIO.
                04 CINPARA-log-TEL-UYGULA    PIC X.
                04 CINPARA-log-TEL-FOL-AC    PIC X.
                04 CINPARA-log-TEL-FOL-ADET  PIC 9.
                04 CINPARA-log-TEL-FOL-BANKA PIC 99.
                04 CINPARA-log-TEL-FOL-DOVIZ PIC 99.
             03 ONKPARA-log-log-duzeltme-dep   PIC XXX.
             03 genel-log-peryot-ayirma   PIC 9.
             03 ONKPARA-log-log-oda-post-dep  PIC XXX.
             03 genel-log-trace-acik             PIC 9.
             03 CINPARA-log-BREAKDOWN        PIC X.
             03 CINPARA-log-BREAKDOWN-CIK    PIC X.
             03 CINPARA-log-DOLU-ODAYA       PIC X.
             03 CINPARA-log-MUSTERI-KODU     PIC X.
             03 CINPARA-log-FARKLI-KONUMA-CIN PIC X.
             03 CINPARA-log-OTO-SLIP          PIC X.
             03 CINPARA-log-MUS-KDV           PIC 99.
             03 CINPARA-log-BANKA             PIC 99.
             03 CINPARA-log-DOLU-ODA-CHG      PIC X.
             03 CINPARA-log-FARKLI-KONUM-CHG  PIC X.
             03 CINPARA-log-SHORTTA-UZAT      PIC X.
             03 CINPARA-log-TUMTAR-UZAT       PIC X.
             03 CINPARA-log-CIN-HOUSE         PIC XX.
             03 CINPARA-log-KUR-DUZELT        PIC X.
             03 CINPARA-log-PERYOT-KURU       PIC X.
             03 CINPARA-log-REG-VARMI         PIC X.
             03 CINPARA-log-REG-FIS           PIC X.
             03 CINPARA-log-PAX-DEGIS         PIC X.
             03 CINPARA-log-BOS-ODALAR-CIKSIN PIC X.
             03 CINPARA-log-DAG-KOMISYONDAN   PIC X.
             03 CINPARA-log-EXTRA-MANUEL      PIC X.
             03 CINPARA-log-TASTIKLI-BAS-BOS  PIC 9(2).
             03 CINPARA-log-TASTIKLI-KAYIT-SAYI PIC 9(2).
             03 CINPARA-log-TASTIKLI-ACENTA-UNVAN PIC 9.
             03 CINPARA-log-SIFIR-PAX-OLSUN   PIC 9. 
             03 CINPARA-log-TASTIKLI-SAGDAN-SAYI  PIC 99. 
             03 CINPARA-log-kartsiz-pos        pic 9.
             03 CINPARA-log-TASTIKLI-0-ciksin  PIC 9.
             03 genel-log-devremulk           PIC 9.
             03 genel-log-oto-kapi             pic 9.
        
          02 genel-log-ONKPARA.
             03 ONKPARA-log-BANKA             PIC 99.
             03 ONKPARA-log-DOVIZ             PIC 99.
             03 ONKPARA-log-D-E               PIC X.
             03 ONKPARA-log-A-S               PIC X.
             03 ONKPARA-log-REOPEN            PIC X.
             03 ONKPARA-log-IPT-POST-YAZ      PIC X.
             03 ONKPARA-log-CORR-ARTI         PIC 999.
             03 ONKPARA-log-CORR-EKSI         PIC 999.
             03 ONKPARA-log-PAID-OUT          PIC 999.
             03 ONKPARA-log-GUEST-REFUND      PIC 999.
             03 ONKPARA-log-OUTLET-CASH       PIC 999.
             03 ONKPARA-log-DEPOZIT           PIC 999.
             03 ONKPARA-log-DISCOUNT          PIC 999.
             03 ONKPARA-log-MUHTELIF          PIC 999.
             03 ONKPARA-log-KREDI-KARTI       PIC 999.
             03 ONKPARA-log-CITY-LEDGER       PIC 999.
             03 ONKPARA-log-DIGER1            PIC 999.
             03 ONKPARA-log-DIGER2            PIC 999.
             03 ONKPARA-log-COT-HOUSE         PIC XX.
*/
             03 ONKPARA-log-MAIL-DEP          PIC 9(03).
             03 ONKPARA-log-MAIL-BOL          PIC 9.
             03 ONKPARA-log-MAIL-FIS          PIC X.
             03 ONKPARA-log-MAIL-gun          PIC 99.
             03 ONKPARA-log-MAIL-DOV          PIC XX.
*/
             03 ONKPARA-log-KART-ODENMEZ-YARAT  PIC X.
             03 ONKPARA-log-DOV-BOZ-TLDEN       PIC X.
             03 ONKPARA-log-FOLIO-DEP-TOPLAM    PIC X.
             03 ONKASA-log-SIFIR-GECELEME-LISTE PIC 9.
             03 ONKPARA-log-REFERANS-VAR        PIC 9.
             03 ONKPARA-log-MERKEZ-BANKA-KODU   PIC 99.
             03 ONKPARA-log-fatura-tahsilatda   pic 9.
             03 fatura-log-tahsilden-hesapla    pic 9.
             03 ONKPARA-log-referans-nerden     pic 9.
             03 ONKPARA-log-FOLIO-KDV-TOPLAM    pic 9.
          02 genel-log-HOUSE-TEKNIK.
             03 genel-log-HOUSE-TEKNIK-KAYIT-BELIRLE-BP   PIC 9(3).
             03 genel-log-HOUSE-TEKNIK-KAYIT-BELIRLE-AU   PIC 9(3).
             03 genel-log-HOUSE-TEKNIK-KAYIT-SABIT-KOSUL  PIC X(4).
             03 genel-log-HOUSE-TEKNIK-ODA-NO-BP          PIC 9(3).
             03 genel-log-HOUSE-TEKNIK-ODA-NO-AU          PIC 9(3).
             03 genel-log-HOUSE-TEKNIK-ODA-DURUM-KODU-BP  PIC 9(3).
$XFD NAME=genel-log-H-TEK-ODA-DURUM-KODU-AU
             03 genel-log-HOUSE-TEKNIK-ODA-DURUM-KODU-AU  PIC 9(3).
             03 genel-log-HOUSE-TEKNIK-MAID-KODU-BP       PIC 9(3).
             03 genel-log-HOUSE-TEKNIK-MAID-KODU-AU       PIC 9(3).
             03 genel-log-muha-uzak-ip                    pic x(15).
             03 genel-log-muha-ref                        pic 9(03).
             03 ONKPARA-log-kredi-kilit                  PIC 9.

          02 genel-log-TELPARA.
             03 TELPARA-log-C-MALIYET      PIC 9(12)V99.
             03 TELPARA-log-C-SATIS        PIC 9(12)V99.
             03 TELPARA-log-DEPKOD         PIC 999.
             03 TELPARA-log-FOL-TIPI       PIC X.
             03 TELPARA-log-ODA.
                04 TELPARA-log-ODA-BAS     PIC 999.
                04 TELPARA-log-ODA-HANE    PIC 9.
             03 TELPARA-log-KONTUR.
                04 TELPARA-log-KON-BAS     PIC 999.
                04 TELPARA-log-KON-HANE    PIC 9.
             03 TELPARA-log-TELNO.
                04 TELPARA-log-TEL-BAS     PIC 999.
                04 TELPARA-log-TEL-HANE    PIC 99.
             03 TELPARA-log-FIS            PIC X.
             03 TELPARA-log-DAKIKA         PIC 99.
             03 TELPARA-log-AKTAR-ENGELLE  PIC 9.
             03 TELPARA-log-KONTURSUZ-CIK  PIC 9.
             03 TELPARA-log-ODA-OKEY-EH    PIC X.
             03 TELPARA-log-LOCK-KONTROL            PIC X(01).
          02 HOUSE-log-PARAM.
             03 HOUSE-log-BT            PIC X(02).
             03 HOUSE-log-BK            PIC X(02).
             03 HOUSE-log-DT            PIC X(02).
             03 HOUSE-log-DK            PIC X(02).
             03 HOUSE-log-CI            PIC X(02).
             03 HOUSE-log-CO            PIC X(02).
             03 HOUSE-log-AO            PIC X(02).
             03 HOUSE-log-RE            PIC X(02).
             03 HOUSE-log-PS            PIC X(02).
             03 HOUSE-log-SO            PIC X(02).
          02 genel-log-EXCEL            PIC X(06).
          02 genel-log-filler-bos4  pic x(10).
          02 genel-log-filler-bos5  pic x(7).
          02 genel-log-extrapos-coutbos  pic 9.
          02 genel-log-folfatta-def-arsiv  pic 9.
          02 genel-log-dis-cikmasin   pic 9.
          02 genel-log-konum-upgrade-sifresi  pic x(10).  
          02 genel-log-e-arsiv-gecis-tarihi.  
             03 genel-log-e-arsiv-yil   pic 9(4).
             03 genel-log-e-arsiv-ay    pic 9(2).
             03 genel-log-e-arsiv-gun   pic 9(2).
          02 genel-log-br-ayir-cikma    pic 9.
          02 genel-log-bavel-fat-kes-tar pic 9.
          02 genel-log-oda-disi-fatura-aciklama  pic x(12).
           02 genel-log-resmi-muha   pic x(8).
           02 genel-log-resmi-ref    pic 999.
           02 HOUSE-log-ok           PIC X(02).
          02 ONKPARA-log-eski-folio-lst pic 9.
          02 ONKPARA-log-dovboz-elle    pic 9.
          02 genel-log-bavel-adres      pic x(20).
          02 ONKPARA-log-dovboz-komisyon-bas    pic 9.
          02 ONKPARA-log-dovboz-kom-dep         pic 9(3).
          02 ONKPARA-log-dovboz-kom-tah-dep     pic 9(3).
          02 genel-log-MINIBAR.
             03 genel-log-MINIBAR-KAYIT-BELIRLE-BP   PIC 9(3).
             03 genel-log-MINIBAR-KAYIT-BELIRLE-AU   PIC 9(3).
             03 genel-log-MINIBAR-KAYIT-SABIT-KOSUL  PIC X(4).
             03 genel-log-MINIBAR-ODA-NO-BP          PIC 9(3).
             03 genel-log-MINIBAR-ODA-NO-AU          PIC 9(3).
             03 genel-log-MINIBAR-UCRET-BP           PIC 9(3).
             03 genel-log-MINIBAR-UCRET-AU           PIC 9(3).
             03 genel-log-MINIBAR-DEVREDE            PIC X.
             03 genel-log-MINIBAR-ONB-DEP            PIC X(3).
             03 genel-log-MINIBAR-COST-ANA-DEP       PIC X(2).
             03 genel-log-MINIBAR-COST-ALT-DEP       PIC X(3).
             03 genel-log-MINIBAR-DOVIZ-TL           PIC X(1).
             03 genel-log-MINIBAR-POS-DEP            pic x(2).
             03 genel-log-MINIBAR-KONT               pic x(2).
            

          02 genel-log-WORD             PIC X(9).
          02 genel-log-devre-tatil-aktif   pic 9.
          02 genel-log-devremulk-cakisma-yok  PIC 9. 
          02 genel-log-PROFIL-GONDER      pic 9 .
          02 genel-log-efat2onb-okuma   PIC 9.
          02 genel-log-netsis-cari-al   pic 9.
          02 genel-log-onburo-temizlemez pic 9.
          02 genel-log-paylas-oda    pic 9.
          02 genel-log-dosya-kilit-devrede pic 9.
          02 genel-log-fatura-oto-cari  pic 9.
          02 genel-log-folfat-kdv-yuvarlama pic 9.
          02 genel-log-voucher-zorunlu    pic 9.
          02 genel-log-dolu-pm-cin-kontrol pic 9.
          02 genel-log-oto-sant-kapat    pic 9.
          02 genel-log-4ipnet-devrede   pic 9.
          02 genel-log-acik-hesap-aktif pic 9.
          02 genel-log-AKBS-adres       PIC X(39).
          02 TELPARA-log-dishat-ac-kapa-dahili pic 9.
          02 genel-log-taksilattan-muhasebe  pic 9.
          02 genel-log-RES-ADRES        PIC X(38).

           02 genel-log-fol-fat-no2           pic 9(06) .
           02 genel-log-fol-fat-no3           pic 9(06) .
           02 genel-log-fol-fat-no4           pic 9(06) .
           02 genel-log-fol-fat-no5           pic 9(06) .

           02 genel-log-efol-fat-no           pic 9(06) .
           02 genel-log-acen-fat-no           pic 9(06). 
           02 genel-log-eacen-fat-no          pic 9(06). 

          02 genel-log-karsi-muha       pic x(8).
          02 genel-log-kom-uygula       pic 9.
          02 genel-log-bas-tar          pic x(8).
          02 genel-log-rezde-profil-gec pic 9.
          02 genel-log-rezidance        pic 9.
          02 genel-log-DIGPARA.
             03 TELPARA-log-GER-ZAMAN.
                04 TELPARA-log-GER-SAAT-BAS  PIC 999.
                04 TELPARA-log-GER-SAAT-HANE PIC 99.
             03 genel-log-YILBASI               PIC X. 
             03 genel-log-Y-CASH              PIC 9(3).
             03 genel-log-NOKTA-VIRGUL        PIC X.
             03 genel-log-fol-fat-no            pic 9(08) comp-3.
             03 TELPARA-log-dishat-ac-kapa    pic 9.
             03 telpar-log-sure-bas          pic 999.
             03 telpara-log-sure-hane         pic 9.
             03 TEL-log-PARA-KONTROLLU        Pic 9.
             03 ONKPARA-log-Dolar             pic 99.
             03 ONKPARA-log-cift              pic 9.
             03 grupda-log-share-yok          pic 9.
             03 ONKPARA-log-yeni-fatura       pic 9.
             03 genel-log-transfer-kopya      pic 9.
             03 TELPARA-log-dishat-ac-kapa-ignore    pic 9.
            
             03 genel-log-def-var             pic 9.
             03 ONKPARA-log-cout-kuru         pic 9.
          02 genel-log-STAF                   PIC X(04).
          02 genel-LOG-fis                pic 9(10).

       

 FD EREZ-LOG LABEL RECORD STANDARD.
 01 EREZ-LOG-REC.
          02 EREZ-LOG-ANAH.
             03 EREZ-LOG-NO             PIC 9(08).
          02 EREZ-LOG-TIPI              PIC 9.
          02 EREZ-LOG-DURUMU            PIC X.
          02 EREZ-LOG-ACEN-ANAH.
             03 EREZ-LOG-ACENTA         PIC X(4).
             03 EREZ-LOG-GIR-TAR.
                04 EREZ-LOG-GIR-YIL     PIC 9999.
                04 EREZ-LOG-GIR-AY      PIC 99.
                04 EREZ-LOG-GIR-GUN     PIC 99.
             03 EREZ-LOG-CIK-TAR.
                04 EREZ-LOG-CIK-YIL     PIC 9999.
                04 EREZ-LOG-CIK-AY      PIC 99.
                04 EREZ-LOG-CIK-GUN     PIC 99.
          02 EREZ-LOG-ADI               PIC X(20).
          02 EREZ-LOG-SOYADI            PIC X(20).
          02 EREZ-LOG-BANKA             PIC 99.
          02 EREZ-LOG-DOVIZ             PIC 99.
          02 EREZ-LOG-ANLASMA           PIC XX.
          02 EREZ-LOG-ODEME-TIPI        PIC XX.
          02 EREZ-LOG-PAN-TIPI          PIC XX.
          02 EREZ-LOG-ULKE              PIC X(03).
          02 EREZ-LOG-VOUCHER           PIC X(10).
          02 EREZ-LOG-KUR-AYGUN         PIC X.
          02 EREZ-LOG-K-G-B             PIC X.
          02 EREZ-LOG-VIP               PIC X.
          02 EREZ-LOG-KOMISYON          PIC 99.
          02 EREZ-LOG-NOR-INDIRIM       PIC 99V99.
          02 EREZ-LOG-C-IN              PIC X.
          02 EREZ-LOG-FOLIO             PIC 9(08).
          02 EREZ-LOG-ODANO             PIC X(04).
          02 EREZ-LOG-S-D-T-G           PIC 9.
          02 EREZ-LOG-ODA-KONUMU        PIC 99.
          02 EREZ-LOG-KISI.
             03 EREZ-LOG-BUYUK          PIC 9(02).
             03 EREZ-LOG-KUCUK          PIC 9(02).
             03 EREZ-LOG-BEBEK          PIC 9(01).
             03 EREZ-LOG-FREE           PIC 9(01).
          02 EREZ-LOG-FIYATI            PIC 9(12)V99 COMP-3.
          02 EREZ-LOG-ISL-TAR.
             03 EREZ-LOG-ISL-YIL        PIC 9999.
             03 EREZ-LOG-ISL-AY         PIC 99.
             03 EREZ-LOG-ISL-GUN        PIC 99.
          02 EREZ-LOG-AL-TAR.
             03 EREZ-LOG-AL-YIL         PIC 9999.
             03 EREZ-LOG-AL-AY          PIC 99.
             03 EREZ-LOG-AL-GUN         PIC 99.
          02 EREZ-LOG-OPS-TAR.
             03 EREZ-LOG-OPS-YIL        PIC 9999.
             03 EREZ-LOG-OPS-AY         PIC 99.
             03 EREZ-LOG-OPS-GUN        PIC 99.
          02 EREZ-LOG-GEL-ZAMAN.
             03 EREZ-LOG-GEL-SAAT       PIC 99.
             03 EREZ-LOG-GEL-DAK        PIC 99.
          02 EREZ-LOG-GIT-ZAMAN.
             03 EREZ-LOG-GIT-SAAT       PIC 99.
             03 EREZ-LOG-GIT-DAK        PIC 99.
          02 EREZ-LOG-GENEL-BILGI.
             03 EREZ-LOG-GRUP-ANAH.
                04 EREZ-LOG-GRUP-NO     PIC 9(06).
                04 EREZ-LOG-GRUP-ADI    PIC X(13).
             03 EREZ-LOG-ADRES1         PIC X(20).
             03 EREZ-LOG-ADRES2         PIC X(14).
             03 EREZ-LOG-AKSIYON2-EH    pic 9.
             03 EREZ-LOG-SPECIAL2-EH     pic 9.
             03 EREZ-LOG-statu          pic x.
             03 EREZ-LOG-iptal          pic 9.
             03 EREZ-LOG-sil-sebeb      pic x(2).
             03 EREZ-LOG-NOT1           PIC X(20).
             03 EREZ-LOG-NOT2           PIC X(18).
             03 EREZ-LOG-eski-alan.
               05 EREZ-LOG-bavel  PIC X(15).
               05 filler      pic x.
             03 EREZ-LOG-gel-sirket     PIC X(02).
             03 EREZ-LOG-git-sirket     PIC X(02).
             03 EREZ-LOG-operator       pic x(02).
             03 EREZ-LOG-E-MAIL         PIC X(01).
             03 EREZ-LOG-gr-olabilir    pic 9.
             03 EREZ-LOG-voucher-gir-tar.
                04 EREZ-LOG-voucher-GIR-YIL     PIC 9999.
                04 EREZ-LOG-voucher-GIR-AY      PIC 99.
                04 EREZ-LOG-voucher-GIR-GUN     PIC 99.
             03 EREZ-LOG-gr-status      pic x.
             03 EREZ-LOG-kaynak-1       pic x(02).
             03 EREZ-LOG-kaynak-2       pic x(02).
             03 EREZ-LOG-kaynak-3       pic x(02).
             03 EREZ-LOG-firma          pic x(05).
             03 EREZ-LOG-extra-kart2    pic x(7).
          02 EREZ-LOG-EXTRA-KART        PIC X(7).
          02 EREZ-LOG-LATE-ZAMAN.
             03 EREZ-LOG-LATE-GEL-SAAT  PIC 99.
             03 EREZ-LOG-LATE-GEL-DAK   PIC 99.
          02 EREZ-LOG-ON-ODEME          PIC 9(12)V99 COMP-3.
          02 EREZ-LOG-ON-DOVIZ          PIC 9(02).
          02 EREZ-LOG-PAZAR             PIC X(02).
          02 EREZ-LOG-EB                PIC X.
          02 EREZ-LOG-FIYAT-FIX         PIC X.   
          02 EREZ-LOG-FIYAT-KONUMU      PIC 99.
          02 EREZ-LOG-AKSIYON-EH        PIC X.
          02 EREZ-LOG-BILBORD-EH        PIC X.
          02 EREZ-LOG-UG-IND            PIC 9.
          02 EREZ-LOG-CIN-KURU          PIC 999V99999.
          02 EREZ-LOG-ODA-TIPI          PIC XX.
          02 EREZ-LOG-SPECIAL-EH        PIC 9.
          02 EREZ-LOG-OZEL-DURUM-CAR    PIC 999V9999999.
          02 EREZ-LOG-OZEL-DURUM        PIC 99.
          02 EREZ-LOG-TITLE             PIC X(09).
          02 EREZ-LOG-gec               pic 9.
          02 EREZ-LOG-plan              pic 9.
          02 EREZ-LOG-rehber            pic x(2).
          02 EREZ-LOG-FIYAT-FLAG.
             05 EREZ-LOG-AKSIYON-FLAG   PIC 9.
             05 EREZ-LOG-renk           PIC 9.
             05 EREZ-LOG-SPECIAL-FLAG   PIC 9.
          02 EREZ-LOG-ODA-TIPI2         PIC XX.
          02 EREZ-LOG-ODA-TIPI3         PIC XX.
          02 EREZ-LOG-TIKLER.
             05 EREZ-LOG-ozel-tip       PIC x.
             05 EREZ-LOG-tam-blok       PIC 9.
             05 EREZ-LOG-share          PIC 9.
          02 EREZ-LOG-STAF              PIC X(04).
          02 EREZ-LOG-fis                pic 9(10).

 FD REZ-LOG LABEL RECORD STANDARD.
 01 REZ-LOG-REC.
          02 REZ-LOG-ANAH.
             03 REZ-LOG-NO             PIC 9(08).
          02 REZ-LOG-TIPI              PIC 9.
          02 REZ-LOG-DURUMU            PIC X.
          02 REZ-LOG-ACEN-ANAH.
             03 REZ-LOG-ACENTA         PIC X(4).
             03 REZ-LOG-GIR-TAR.
                04 REZ-LOG-GIR-YIL     PIC 9999.
                04 REZ-LOG-GIR-AY      PIC 99.
                04 REZ-LOG-GIR-GUN     PIC 99.
             03 REZ-LOG-CIK-TAR.
                04 REZ-LOG-CIK-YIL     PIC 9999.
                04 REZ-LOG-CIK-AY      PIC 99.
                04 REZ-LOG-CIK-GUN     PIC 99.
          02 REZ-LOG-ADI               PIC X(20).
          02 REZ-LOG-SOYADI            PIC X(20).
          02 REZ-LOG-BANKA             PIC 99.
          02 REZ-LOG-DOVIZ             PIC 99.
          02 REZ-LOG-ANLASMA           PIC XX.
          02 REZ-LOG-ODEME-TIPI        PIC XX.
          02 REZ-LOG-PAN-TIPI          PIC XX.
          02 REZ-LOG-ULKE              PIC X(03).
          02 REZ-LOG-VOUCHER           PIC X(30).
          02 REZ-LOG-KUR-AYGUN         PIC X.
          02 REZ-LOG-K-G-B             PIC X.
          02 REZ-LOG-VIP               PIC X.
          02 REZ-LOG-KOMISYON          PIC 99.
          02 REZ-LOG-NOR-INDIRIM       PIC 99V99.
          02 REZ-LOG-C-IN              PIC X.
          02 REZ-LOG-FOLIO             PIC 9(08).
          02 REZ-LOG-ODANO             PIC X(04).

          02 REZ-LOG-S-D-T-G           PIC 9.
          02 REZ-LOG-ODA-KONUMU        PIC 99.
          02 REZ-LOG-KISI.
             03 REZ-LOG-BUYUK          PIC 9(02).
             03 REZ-LOG-KUCUK          PIC 9(02).
             03 REZ-LOG-BEBEK          PIC 9(01).
             03 REZ-LOG-FREE           PIC 9(01).
          02 REZ-LOG-FIYATI            PIC 9(12)V99 COMP-3.
          02 REZ-LOG-ISL-TAR.
             03 REZ-LOG-ISL-YIL        PIC 9999.
             03 REZ-LOG-ISL-AY         PIC 99.
             03 REZ-LOG-ISL-GUN        PIC 99.
          02 REZ-LOG-AL-TAR.
             03 REZ-LOG-AL-YIL         PIC 9999.
             03 REZ-LOG-AL-AY          PIC 99.
             03 REZ-LOG-AL-GUN         PIC 99.
          02 REZ-LOG-OPS-TAR.
             03 REZ-LOG-OPS-YIL        PIC 9999.
             03 REZ-LOG-OPS-AY         PIC 99.
             03 REZ-LOG-OPS-GUN        PIC 99.
          02 REZ-LOG-GEL-ZAMAN.
             03 REZ-LOG-GEL-SAAT       PIC 99.
             03 REZ-LOG-GEL-DAK        PIC 99.
          02 REZ-LOG-GIT-ZAMAN.
             03 REZ-LOG-GIT-SAAT       PIC 99.
             03 REZ-LOG-GIT-DAK        PIC 99.
          02 REZ-LOG-GENEL-BILGI.
             03 REZ-LOG-GRUP-ANAH.
                04 REZ-LOG-GRUP-NO     PIC 9(06).
                04 REZ-LOG-GRUP-ADI    PIC X(13).
             03 REZ-LOG-ADRES1         PIC X(20).
             03 REZ-LOG-ADRES2         PIC X(14).
             03 REZ-LOG-AKSIYON2-EH    pic 9.
             03 REZ-LOG-SPECIAL2-EH     pic 9.
             03 REZ-LOG-statu          pic x.
             03 REZ-LOG-iptal          pic 9.
             03 REZ-LOG-sil-sebeb      pic x(2).
             03 REZ-LOG-NOT1           PIC X(100).
             03 REZ-LOG-NOT2           PIC X(100).
             03 REZ-LOG-eski-alan.
               05 REZ-LOG-bavel-eski  PIC X(15).
               05 filler      pic x.
             03 REZ-LOG-gel-sirket     PIC X(02).
             03 REZ-LOG-git-sirket     PIC X(02).
             03 REZ-LOG-operator       pic x(02).
             03 REZ-LOG-E-MAIL         PIC X(01).
             03 REZ-LOG-gr-olabilir    pic 9.
             03 REZ-LOG-voucher-gir-tar.
                04 REZ-LOG-voucher-GIR-YIL     PIC 9999.
                04 REZ-LOG-voucher-GIR-AY      PIC 99.
                04 REZ-LOG-voucher-GIR-GUN     PIC 99.
             03 REZ-LOG-gr-status      pic x.
             03 REZ-LOG-kaynak-1       pic x(02).
             03 REZ-LOG-kaynak-2       pic x(02).
             03 REZ-LOG-kaynak-3       pic x(02).
             03 REZ-LOG-firma          pic x(05).
             03 REZ-LOG-extra-kart2    pic x(7).
          02 REZ-LOG-EXTRA-KART        PIC X(7).
          02 REZ-LOG-LATE-ZAMAN.
             03 REZ-LOG-LATE-GEL-SAAT  PIC 99.
             03 REZ-LOG-LATE-GEL-DAK   PIC 99.
          02 REZ-LOG-ON-ODEME          PIC 9(12)V99 COMP-3.
          02 REZ-LOG-ON-DOVIZ          PIC 9(02).
          02 REZ-LOG-PAZAR             PIC X(02).
          02 REZ-LOG-EB                PIC X.
          02 REZ-LOG-FIYAT-FIX         PIC X.  
          02 REZ-LOG-FIYAT-KONUMU      PIC 99.
          02 REZ-LOG-AKSIYON-EH        PIC X.
          02 REZ-LOG-BILBORD-EH        PIC X.
          02 REZ-LOG-UG-IND            PIC 9.
          02 REZ-LOG-CIN-KURU          PIC 999V99999.
          02 REZ-LOG-ODA-TIPI          PIC XX.
          02 REZ-LOG-SPECIAL-EH        PIC 9.
          02 REZ-LOG-OZEL-DURUM-CAR    PIC 999V9999999.
          02 REZ-LOG-OZEL-DURUM        PIC 99.
          02 REZ-LOG-TITLE             PIC X(09).
          02 REZ-LOG-gec               pic 9.
          02 REZ-LOG-plan              pic 9.
          02 REZ-LOG-rehber            pic x(2).
          02 REZ-LOG-FIYAT-FLAG.
             05 REZ-LOG-AKSIYON-FLAG   PIC 9.
             05 REZ-LOG-renk           PIC 9.
             05 REZ-LOG-SPECIAL-FLAG   PIC 9.
          02 REZ-LOG-ODA-TIPI2         PIC XX.
          02 REZ-LOG-ODA-TIPI3         PIC XX.
          02 REZ-LOG-TIKLER.
             05 REZ-LOG-ozel-tip       PIC x.
             05 REZ-LOG-tam-blok       PIC 9.
             05 REZ-LOG-share          PIC 9.
          02 REZ-LOG-staf-bos       pic x(04).
          02 REZ-LOG-sharenum       pic 9(8).
          02 REZ-LOG-sil-tar         pic x(8).
          02 REZ-LOG-rate-kodu       pic x(8).
          02 REZ-LOG-extra-ind       pic 999v99.
          02 REZ-LOG-NO-POST          pic 9.
          02 REZ-LOG-dev-uye-no      pic 9(8).
          02 REZ-LOG-RATE-ACENTA     Pic xxxx.
          02 REZ-LOG-room-kdv-yok    pic x.
          02 REZ-LOG-extra-kdv-yok   pic x.
          02 REZ-LOG-telefon-no      pic x(15).
          02 REZ-LOG-bavel           pic x(15).
          02 REZ-LOG-VIP-turu        pic x.
          02 REZ-LOG-blok-tip        pic 9. |0-ac²k 1-kitli blokaj 2-pre cIN
          02 REZ-LOG-onodeme-var     pic 9. 
          02 REZ-LOG-cin-kur-tar.
             03 REZ-LOG-cin-kur-yil  pic 9(4).
             03 REZ-LOG-cin-kur-ay   pic 9(2).
             03 REZ-LOG-cin-kur-gun  pic 9(2).
          02 REZ-LOG-kredi-kart.
             03 REZ-LOG-kart-tipi     pic x.
             03 REZ-LOG-kart-no1      pic x(04).
             03 REZ-LOG-kart-no2      pic x(04).
             03 REZ-LOG-kart-no3      pic x(04).
             03 REZ-LOG-kart-no4      pic x(04).
             03 REZ-LOG-cvv-kodu      pic x(03).
             03 REZ-LOG-onay-kodu     pic x(15).
             03 REZ-LOG-onay-tutar    pic 9(7)v99.
             03 REZ-LOG-onay-doviz    pic x(02).
             03 REZ-LOG-kart-sahibi   pic x(50).
             03 REZ-LOG-kart-son-ay   pic 9(2).
             03 REZ-LOG-kart-son-yil  pic 9(2).
             03 REZ-LOG-provizyon-notu pic x(20).

          02 REZ-LOG-bosv9           pic x(811). 
          02 REZ-LOG-STAF              PIC X(04).
          02 REZ-LOG-FIS             PIC 9(10).
**********konuk.lib
 FD KONUK-log LABEL RECORD STANDARD.
 01 konuk-log-REC.
          02 konuk-log-ANAH.
             03 konuk-log-FOLIO         PIC 9(08).
          02 konuk-log-DURUMU           PIC X.
          02 konuk-log-FOL-KODU         PIC X.
          02 konuk-log-ADI              PIC X(20).
          02 konuk-log-SOYADI           PIC X(20).
          02 konuk-log-S-D-T-G          PIC 9.
          02 konuk-log-ODA-KONUMU       PIC 99.
          02 konuk-log-ODEME-TIPI       PIC XX.
          02 konuk-log-ODANO            PIC X(04).
          02 konuk-log-REZ-NO           PIC 9(08).
          02 konuk-log-ULKE             PIC XXX.
          02 konuk-log-KISI.
             03 konuk-log-BUYUK         PIC 9(02).
             03 konuk-log-KUCUK         PIC 9(02).
             03 konuk-log-BEBEK         PIC 9(01).
             03 konuk-log-FREE          PIC 9(01).
          02 konuk-log-ACENTA           PIC X(04).
          02 konuk-log-mini-ok          pic 9.
          02 konuk-log-plan             pic 9.
          02 konuk-log-duzeltme         pic 9.
          02 konuk-log-bos3             PIC X(01).
          02 konuk-log-VOUCHER          PIC X(30).
          02 konuk-log-NOR-INDIRIM      PIC 99V99.
          02 konuk-log-PAN-TIPI         PIC XX.
          02 konuk-log-REZ-TIPI         PIC 9.
          02 konuk-log-BANKA            PIC 99.
          02 konuk-log-DOVIZ            PIC 99.
          02 konuk-log-ANLASMA          PIC XX.
          02 konuk-log-KUR-AYGUN        PIC X.
          02 konuk-log-FATURA           PIC X.
          02 konuk-log-CIK-CIKMA        PIC X.
          02 konuk-log-ERKEN-CIK        PIC X.
          02 konuk-log-UZATMA           PIC X.
          02 konuk-log-POSTING          PIC X.
          02 konuk-log-VIP              PIC X.
          02 konuk-log-ODADEGIS         PIC X.
          02 konuk-log-ACIK-KAPALI      PIC X.
          02 konuk-log-GEL-TAR.
             03 konuk-log-GEL-YIL       PIC 9999.
             03 konuk-log-GEL-AY        PIC 99.
             03 konuk-log-GEL-GUN       PIC 99.
          02 konuk-log-GIT-TAR.
             03 konuk-log-GIT-YIL       PIC 9999.
             03 konuk-log-GIT-AY        PIC 99.
             03 konuk-log-GIT-GUN       PIC 99.
          02 konuk-log-GEL-ZAMAN.
             03 konuk-log-GEL-SAAT      PIC 99.
             03 konuk-log-GEL-DAKIKA    PIC 99.
             03 konuk-log-GEL-SANIYE    PIC 99.
          02 konuk-log-GIT-ZAMAN.
             03 konuk-log-GIT-SAAT      PIC 99.
             03 konuk-log-GIT-DAKIKA    PIC 99.
             03 konuk-log-GIT-SANIYE    PIC 99.
          02 konuk-log-ODA-TUTAR        PIC s9(12)V99   COMP-3.
          02 konuk-log-EXTBED-TUTAR     PIC s9(12)V99   COMP-3.
          02 konuk-log-KAHVALTI-TUTAR   PIC s9(12)V99   COMP-3.
          02 konuk-log-OGLE-TUTAR       PIC s9(12)V99   COMP-3.
          02 konuk-log-AKSAM-TUTAR      PIC s9(12)V99   COMP-3.
          02 konuk-log-ICECEK-TUTAR     PIC s9(12)V99   COMP-3.
          02 konuk-log-EXTRA-TUTAR      PIC s9(12)V99   COMP-3.

          02 konuk-log-TOP-BORC         PIC S9(12)V99  COMP-3.
          02 konuk-log-TOP-ALAC         PIC S9(12)V99  COMP-3.
          02 konuk-log-KUR-DEGERI       PIC 9(9)V9(05) COMP-3.
          02 konuk-log-DV-DEGERI        PIC 9(12)V99   COMP-3.

          02 konuk-log-ACIK.
             03 konuk-log-ACIK-1        PIC X(100).
             03 konuk-log-ACIK-2        PIC X(100).
          02 konuk-log-KARTNO           PIC X(07).
          02 konuk-log-REOPEN           PIC X.
          02 konuk-log-OPERATOR         PIC X(02).
          02 konuk-log-GRUP-NO          PIC 9(06).
          02 konuk-log-al-tar.
             05 konuk-log-al-yil        pic 99.
             05 konuk-log-al-ay         pic 99.
             05 konuk-log-al-gun        pic 99.
          02 konuk-log-PAZAR            PIC X(02).
          02 konuk-log-EB               PIC X.
          02 konuk-log-FIYAT-FIX        PIC X.
          02 konuk-log-GELIS-SAYISI     PIC 9(2).
          02 konuk-log-FIYAT-KONUMU     PIC 99.
          02 konuk-log-GEC-GIRIS        PIC 9.
          02 konuk-log-FAT-NO           PIC 9(06).
          02 konuk-log-UG-INDIRIMI      PIC 9.
          02 konuk-log-BILBORD-EH       PIC X.
          02 konuk-log-EXTRA-REZ-NO     PIC 9(08).
          02 konuk-log-TITLE            PIC X(3).
          02 konuk-log-profil-no        pic 9(8).
          02 konuk-log-rehber           pic x(2).
          02 konuk-log-SAFE             PIC 9.
          02 konuk-log-ANAHTAR          PIC 9.
          02 konuk-log-LATE-ZAMAN.
            03 konuk-log-LATE-GEL-SAAT  PIC 99.
            03 konuk-log-LATE-GEL-DAK   PIC 99.
          02 konuk-log-AKSIYON-EH       PIC X.
          02 konuk-log-share            pic 9.
          02 konuk-log-SPECIAL-EH         pic 9.
          02 konuk-log-sehir            pic xxx.
          02 konuk-log-firma            PIC X(05).
          02 konuk-log-stafbos          pic x(4).
          02 konuk-log-sharenum         pic 9(8).
          02 konuk-log-acik-hesap       pic 9.
          02 konuk-log-kapat-tarih.
              05 konuk-log-kapat-yil    pic 9999.
              05 konuk-log-kapat-ay     pic 99.
              05 konuk-log-kapat-gun    pic 99.
          02 konuk-log-kapat-zaman. 
             05 konuk-log-kapat-saat    pic 99.
             05 konuk-log-kapat-dak    pic 99.
             05 konuk-log-kapat-san    pic 99.
          02 konuk-log-cout-staf         pic xxxx.
          02 konuk-log-acik-hesap-staf   pic xxxx.
          02 konuk-log-kapat-staf        pic xxxx.
          02 konuk-log-cin-staf          pic xxxx.
          02 konuk-log-gunsonu-cout      pic 9.
          02 konuk-log-kredi-kart.
             03 konuk-log-kart-tipi     pic x.
             03 konuk-log-kart-no1      pic x(04).
             03 konuk-log-kart-no2      pic x(04).
             03 konuk-log-kart-no3      pic x(04).
             03 konuk-log-kart-no4      pic x(04).
             03 konuk-log-cvv-kodu      pic x(03).
             03 konuk-log-onay-kodu     pic x(15).
             03 konuk-log-onay-tutar    pic 9(7)v99.
             03 konuk-log-onay-doviz    pic x(02).
             03 konuk-log-kart-sahibi   pic x(50).
             03 konuk-log-kart-son-ay   pic 9(2).
             03 konuk-log-kart-son-yil  pic 9(2).
             03 konuk-log-provizyon-notu pic x(20).
          02 konuk-log-room-kdv-yok     pic x.
          02 konuk-log-extra-kdv-yok    pic x.
          02 konuk-log-kaynak-1       pic x(02).
          02 konuk-log-kaynak-2       pic x(02).
          02 konuk-log-kaynak-3       pic x(02).
          02 konuk-log-telefon-no     pic x(15).
          02 konuk-log-vip-turu       pic x.
          02 konuk-log-bos9             pic x(824).
          02 konuk-log-STAF             PIC X(04).
          02 konuk-log-fis             PIC 9(10).


 FD EKONUK-LOG LABEL RECORD STANDARD.
 01 EKONUK-LOG-REC.
          02 EKONUK-LOG-ANAH.
             03 EKONUK-LOG-FOLIO         PIC 9(08).
          02 EKONUK-LOG-DURUMU           PIC X.
          02 EKONUK-LOG-FOL-KODU         PIC X.
          02 EKONUK-LOG-ADI              PIC X(20).
          02 EKONUK-LOG-SOYADI           PIC X(20).
          02 EKONUK-LOG-S-D-T-G          PIC 9.
          02 EKONUK-LOG-ODA-KONUMU       PIC 99.
          02 EKONUK-LOG-ODEME-TIPI       PIC XX.
          02 EKONUK-LOG-ODANO            PIC X(04).
          02 EKONUK-LOG-REZ-NO           PIC 9(08).
          02 EKONUK-LOG-ULKE             PIC XXX.
          02 EKONUK-LOG-KISI.
             03 EKONUK-LOG-BUYUK         PIC 9(02).
             03 EKONUK-LOG-KUCUK         PIC 9(02).
             03 EKONUK-LOG-BEBEK         PIC 9(01).
             03 EKONUK-LOG-FREE          PIC 9(01).
          02 EKONUK-LOG-ACENTA           PIC X(04).
          02 EKONUK-LOG-mini-ok          pic 9.
          02 EKONUK-LOG-plan             pic 9.
          02 EKONUK-LOG-duzeltme         pic 9.
          02 EKONUK-LOG-bos3             PIC X(01).
          02 EKONUK-LOG-VOUCHER          PIC X(10).
          02 EKONUK-LOG-NOR-INDIRIM      PIC 99V99.
          02 EKONUK-LOG-PAN-TIPI         PIC XX.
          02 EKONUK-LOG-REZ-TIPI         PIC 9.
          02 EKONUK-LOG-BANKA            PIC 99.
          02 EKONUK-LOG-DOVIZ            PIC 99.
          02 EKONUK-LOG-ANLASMA          PIC XX.
          02 EKONUK-LOG-KUR-AYGUN        PIC X.

          02 EKONUK-LOG-FATURA           PIC X.
          02 EKONUK-LOG-CIK-CIKMA        PIC X.
          02 EKONUK-LOG-ERKEN-CIK        PIC X.
          02 EKONUK-LOG-UZATMA           PIC X.
          02 EKONUK-LOG-POSTING          PIC X.
          02 EKONUK-LOG-VIP              PIC X.
          02 EKONUK-LOG-ODADEGIS         PIC X.

          02 EKONUK-LOG-ACIK-KAPALI      PIC X.

          02 EKONUK-LOG-GEL-TAR.
             03 EKONUK-LOG-GEL-YIL       PIC 9999.
             03 EKONUK-LOG-GEL-AY        PIC 99.
             03 EKONUK-LOG-GEL-GUN       PIC 99.

          02 EKONUK-LOG-GIT-TAR.
             03 EKONUK-LOG-GIT-YIL       PIC 9999.
             03 EKONUK-LOG-GIT-AY        PIC 99.
             03 EKONUK-LOG-GIT-GUN       PIC 99.
          02 EKONUK-LOG-GEL-ZAMAN.
             03 EKONUK-LOG-GEL-SAAT      PIC 99.
             03 EKONUK-LOG-GEL-DAKIKA    PIC 99.
             03 EKONUK-LOG-GEL-SANIYE    PIC 99.
          02 EKONUK-LOG-GIT-ZAMAN.
             03 EKONUK-LOG-GIT-SAAT      PIC 99.
             03 EKONUK-LOG-GIT-DAKIKA    PIC 99.
             03 EKONUK-LOG-GIT-SANIYE    PIC 99.

          02 EKONUK-LOG-ODA-TUTAR        PIC s9(12)V99   COMP-3.
          02 EKONUK-LOG-EXTBED-TUTAR     PIC 9(12)V99   COMP-3.
          02 EKONUK-LOG-KAHVALTI-TUTAR   PIC 9(12)V99   COMP-3.
          02 EKONUK-LOG-OGLE-TUTAR       PIC 9(12)V99   COMP-3.
          02 EKONUK-LOG-AKSAM-TUTAR      PIC 9(12)V99   COMP-3.
          02 EKONUK-LOG-ICECEK-TUTAR     PIC 9(12)V99   COMP-3.
          02 EKONUK-LOG-EXTRA-TUTAR      PIC 9(12)V99   COMP-3.

          02 EKONUK-LOG-TOP-BORC         PIC S9(12)V99  COMP-3.
          02 EKONUK-LOG-TOP-ALAC         PIC S9(12)V99  COMP-3.
          02 EKONUK-LOG-KUR-DEGERI       PIC 9(9)V9(05) COMP-3.
          02 EKONUK-LOG-DV-DEGERI        PIC 9(12)V99   COMP-3.

          02 EKONUK-LOG-ACIK.
             03 EKONUK-LOG-ACIK-1        PIC X(20).
             03 EKONUK-LOG-ACIK-2        PIC X(20).
          02 EKONUK-LOG-KARTNO           PIC X(07).
          02 EKONUK-LOG-REOPEN           PIC X.
          02 EKONUK-LOG-OPERATOR         PIC X(02).
          02 EKONUK-LOG-GRUP-NO          PIC 9(06).
          02 EKONUK-LOG-al-tar.
             05 EKONUK-LOG-al-yil        pic 99.
             05 EKONUK-LOG-al-ay         pic 99.
             05 EKONUK-LOG-al-gun        pic 99.

          02 EKONUK-LOG-PAZAR            PIC X(02).
          02 EKONUK-LOG-EB               PIC X.
          02 EKONUK-LOG-FIYAT-FIX        PIC X.
          02 EKONUK-LOG-GELIS-SAYISI     PIC 9(2).
          02 EKONUK-LOG-FIYAT-KONUMU     PIC 99.
          02 EKONUK-LOG-GEC-GIRIS        PIC 9.
          02 EKONUK-LOG-FAT-NO           PIC 9(06).
          02 EKONUK-LOG-UG-INDIRIMI      PIC 9.
          02 EKONUK-LOG-BILBORD-EH       PIC X.
          02 EKONUK-LOG-EXTRA-REZ-NO     PIC 9(08).
          02 EKONUK-LOG-TITLE            PIC X(3).
          02 filler                 pic 9(8).
          02 EKONUK-LOG-rehber           pic x(2).
          02 EKONUK-LOG-SAFE             PIC 9.
          02 EKONUK-LOG-ANAHTAR          PIC 9.
          02 EKONUK-LOG-LATE-ZAMAN.
            03 EKONUK-LOG-LATE-GEL-SAAT  PIC 99.
            03 EKONUK-LOG-LATE-GEL-DAK   PIC 99.
          02 EKONUK-LOG-AKSIYON-EH       PIC X.
          02 EKONUK-LOG-share            pic 9.
          02 EKONUK-LOG-SPECIAL-EH         pic 9.
          02 EKONUK-LOG-sehir            pic xxx.
          02 EKONUK-LOG-firma            PIC X(05).
          02 EKONUK-LOG-STAF             PIC X(04).
          02 ekonuk-log-fis             pic 9(10).
***********CASTT***
 FD ECAST-LOG  LABEL RECORD STANDARD.
  01 ECAST-LOG-REC.
           02 ECAST-LOG-ANAH.
              03 ECAST-LOG-TARIH.
                 04 ECAST-LOG-YIL       PIC 9(4).
                 04 ECAST-LOG-AY        PIC 9(2).
                 04 ECAST-LOG-GUN       PIC 9(2).
              03 ECAST-LOG-REZ-NO       PIC 9(08).
           02 ECAST-LOG-ODA-NO          PIC X(04).
           02 ECAST-LOG-KISI.
              03 ECAST-LOG-BUYUK        PIC 9(02).
              03 ECAST-LOG-KUCUK        PIC 9(02).
              03 ECAST-LOG-BEBEK        PIC 9(01).
              03 ECAST-LOG-FREE         PIC 9(01).
           02 ECAST-LOG-FIYATI          PIC 9(10)V99 COMP-3.
           02 ECAST-LOG-ANLASMA-FIYATI  PIC 9(10)V99 COMP-3.
           02 ECAST-LOG-BASILAN-FIYAT   PIC s9(10)V99 COMP-3.
           02 ECAST-LOG-ODA-KONUMU      PIC 99.
           02 ECAST-LOG-FIYAT-KONUMU    PIC 99.
           02 ECAST-LOG-ANLASMA         PIC XX.
           02 ECAST-LOG-PAN-TIPI        PIC XX.
           02 ECAST-LOG-ODA-ADET        PIC 9.
           02 ECAST-LOG-share           PIC 9.
           02 ECAST-LOG-fiyat-yok       pic 9. 
           02 ECAST-LOG-duzeltme        PIC s9(7)v99.
           02 ECAST-LOG-FIS             PIC 9(10).

  FD CAST-log  LABEL RECORD STANDARD.
  01 CAST-LOG-REC.
           02 CAST-LOG-ANAH.
              03 CAST-LOG-TARIH.
                 04 CAST-LOG-YIL       PIC 9(4).
                 04 CAST-LOG-AY        PIC 9(2).
                 04 CAST-LOG-GUN       PIC 9(2).
              03 CAST-LOG-REZ-NO       PIC 9(08).
           02 CAST-LOG-ODA-NO          PIC X(04).
           02 CAST-LOG-KISI.
              03 CAST-LOG-BUYUK        PIC 9(02).
              03 CAST-LOG-KUCUK        PIC 9(02).
              03 CAST-LOG-BEBEK        PIC 9(01).
              03 CAST-LOG-FREE         PIC 9(01).
           02 CAST-LOG-FIYATI          PIC 9(10)V99 COMP-3.
           02 CAST-LOG-ANLASMA-FIYATI  PIC 9(10)V99 COMP-3.
           02 CAST-LOG-BASILAN-FIYAT   PIC s9(10)V99 COMP-3.
           02 CAST-LOG-ODA-KONUMU      PIC 99.
           02 CAST-LOG-FIYAT-KONUMU    PIC 99.
           02 CAST-LOG-ANLASMA         PIC XX.
           02 CAST-LOG-PAN-TIPI        PIC XX.
           02 CAST-LOG-ODA-ADET        PIC 9.
           02 CAST-LOG-share           PIC 9.
           02 CAST-LOG-fiyat-yok       pic 9. 
           02 CAST-LOG-duzeltme        PIC s9(7)v99.
           02 CAST-LOG-sharenum        pic 9(8).
           02 CAST-LOG-break.
              05 filler occurs 15 times.
                  10 CAST-LOG-br-malzeme-kodu   pic x(3).
                  10 CAST-LOG-br-malzeme-tut    pic s9(6)v99 comp-3.
           02 CAST-LOG-break-kodu       pic x(8).
           02 CAST-LOG-grup             pic 9(6).
           02 CAST-LOG-extradir         pic 9.
           02 CAST-LOG-rate-kodu        pic x(8) .
           02 CAST-LOG-bos9        pic x(277). 
           02 CAST-LOG-FIS             PIC 9(10).      

************
*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
   copy "adres.wrk".
   copy "acuserve.wrk".
   copy "uzakadr.wrk".
   copy "taksithes.wrk".
    copy "dokcagir.tasi".
*{Bench}copy-working
 COPY "trlog.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "trlog.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "trlog.prd".
 COPY "trlog.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

