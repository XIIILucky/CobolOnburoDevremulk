*{Bench}prg-comment
* trlo900.cbl
* trlo900.cbl is generated from D:\asya\acugt.ytl\otel\trlo900.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. trlo900.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:04:08.
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

       FD eREZ-LOG LABEL RECORD STANDARD.
       01 eREZ-LOG-REC.
          02 erez-LOG-ANAH.
             03 erez-LOG-NO             PIC 9(08).
          02 erez-LOG-TIPI              PIC 9.
          02 erez-LOG-DURUMU            PIC X.
          02 erez-LOG-ACEN-ANAH.
             03 erez-LOG-ACENTA         PIC X(4).
             03 erez-LOG-GIR-TAR.
                04 erez-LOG-GIR-YIL     PIC 9999.
                04 erez-LOG-GIR-AY      PIC 99.
                04 erez-LOG-GIR-GUN     PIC 99.
             03 erez-LOG-CIK-TAR.
                04 erez-LOG-CIK-YIL     PIC 9999.
                04 erez-LOG-CIK-AY      PIC 99.
                04 erez-LOG-CIK-GUN     PIC 99.
          02 erez-LOG-ADI               PIC X(20).
          02 erez-LOG-SOYADI            PIC X(20).
          02 erez-LOG-BANKA             PIC 99.
          02 erez-LOG-DOVIZ             PIC 99.
          02 erez-LOG-ANLASMA           PIC XX.
          02 erez-LOG-ODEME-TIPI        PIC XX.
          02 erez-LOG-PAN-TIPI          PIC XX.
          02 erez-LOG-ULKE              PIC X(03).
          02 erez-LOG-VOUCHER           PIC X(10).
          02 erez-LOG-KUR-AYGUN         PIC X.
          02 erez-LOG-K-G-B             PIC X.
          02 erez-LOG-VIP               PIC X.
          02 erez-LOG-KOMISYON          PIC 99.
          02 erez-LOG-NOR-INDIRIM       PIC 99V99.
          02 erez-LOG-C-IN              PIC X.
          02 erez-LOG-FOLIO             PIC 9(08).
          02 erez-LOG-ODANO             PIC X(04).

          02 erez-LOG-S-D-T-G           PIC 9.
          02 erez-LOG-ODA-KONUMU        PIC 99.
          02 erez-LOG-KISI.
             03 erez-LOG-BUYUK          PIC 9(02).
             03 erez-LOG-KUCUK          PIC 9(02).
             03 erez-LOG-BEBEK          PIC 9(01).
             03 erez-LOG-FREE           PIC 9(01).
          02 erez-LOG-FIYATI            PIC 9(12)V99 COMP-3.
          02 erez-LOG-ISL-TAR.
             03 erez-LOG-ISL-YIL        PIC 9999.
             03 erez-LOG-ISL-AY         PIC 99.
             03 erez-LOG-ISL-GUN        PIC 99.
          02 erez-LOG-AL-TAR.
             03 erez-LOG-AL-YIL         PIC 9999.
             03 erez-LOG-AL-AY          PIC 99.
             03 erez-LOG-AL-GUN         PIC 99.
          02 erez-LOG-OPS-TAR.
             03 erez-LOG-OPS-YIL        PIC 9999.
             03 erez-LOG-OPS-AY         PIC 99.
             03 erez-LOG-OPS-GUN        PIC 99.
          02 erez-LOG-GEL-ZAMAN.
             03 erez-LOG-GEL-SAAT       PIC 99.
             03 erez-LOG-GEL-DAK        PIC 99.
          02 erez-LOG-GIT-ZAMAN.
             03 erez-LOG-GIT-SAAT       PIC 99.
             03 erez-LOG-GIT-DAK        PIC 99.
          02 erez-LOG-GENEL-BILGI.
             03 erez-LOG-GRUP-ANAH.
                04 erez-LOG-GRUP-NO     PIC 9(06).
                04 erez-LOG-GRUP-ADI    PIC X(13).
             03 erez-LOG-ADRES1         PIC X(20).
             03 erez-LOG-ADRES2         PIC X(14).
             03 erez-LOG-AKSIYON2-EH    pic 9.
             03 erez-LOG-SPECIAL2-EH     pic 9.
             03 erez-LOG-statu          pic x.
             03 erez-LOG-iptal          pic 9.
             03 erez-LOG-sil-sebeb      pic x(2).
             03 erez-LOG-NOT1           PIC X(20).
             03 erez-LOG-NOT2           PIC X(18).
             03 erez-LOG-eski-alan.
               05 erez-LOG-bavel-eski  PIC X(15).
               05 filler      pic x.
             03 erez-LOG-gel-sirket     PIC X(02).
             03 erez-LOG-git-sirket     PIC X(02).
             03 erez-LOG-operator       pic x(02).
             03 erez-LOG-E-MAIL         PIC X(01).
             03 erez-LOG-gr-olabilir    pic 9.
             03 erez-LOG-voucher-gir-tar.
                04 erez-LOG-voucher-GIR-YIL     PIC 9999.
                04 erez-LOG-voucher-GIR-AY      PIC 99.
                04 erez-LOG-voucher-GIR-GUN     PIC 99.
             03 erez-LOG-gr-status      pic x.
             03 erez-LOG-kaynak-1       pic x(02).
             03 erez-LOG-kaynak-2       pic x(02).
             03 erez-LOG-kaynak-3       pic x(02).
             03 erez-LOG-firma          pic x(05).
             03 erez-LOG-extra-kart2    pic x(7).
          02 erez-LOG-EXTRA-KART        PIC X(7).
          02 erez-LOG-LATE-ZAMAN.
             03 erez-LOG-LATE-GEL-SAAT  PIC 99.
             03 erez-LOG-LATE-GEL-DAK   PIC 99.
          02 erez-LOG-ON-ODEME          PIC 9(12)V99 COMP-3.
          02 erez-LOG-ON-DOVIZ          PIC 9(02).
          02 erez-LOG-PAZAR             PIC X(02).
          02 erez-LOG-EB                PIC X.
          02 erez-LOG-FIYAT-FIX         PIC X.  
          02 erez-LOG-FIYAT-KONUMU      PIC 99.
          02 erez-LOG-AKSIYON-EH        PIC X.
          02 erez-LOG-BILBORD-EH        PIC X.
          02 erez-LOG-UG-IND            PIC 9.
          02 erez-LOG-CIN-KURU          PIC 999V99999.
          02 erez-LOG-ODA-TIPI          PIC XX.
          02 erez-LOG-SPECIAL-EH        PIC 9.
          02 erez-LOG-OZEL-DURUM-CAR    PIC 999V9999999.
          02 erez-LOG-OZEL-DURUM        PIC 99.
          02 erez-LOG-TITLE             PIC X(09).
          02 erez-LOG-gec               pic 9.
          02 erez-LOG-plan              pic 9.
          02 erez-LOG-rehber            pic x(2).
          02 erez-LOG-FIYAT-FLAG.
             05 erez-LOG-AKSIYON-FLAG   PIC 9.
             05 erez-LOG-renk           PIC 9.
             05 erez-LOG-SPECIAL-FLAG   PIC 9.
          02 erez-LOG-ODA-TIPI2         PIC XX.
          02 erez-LOG-ODA-TIPI3         PIC XX.
          02 erez-LOG-TIKLER.
             05 erez-LOG-ozel-tip       PIC x.
             05 erez-LOG-tam-blok       PIC 9.
             05 erez-LOG-share          PIC 9.
          02 erez-LOG-staf-bos       pic x(04).
          02 erez-LOG-sharenum       pic 9(8).
          02 erez-LOG-sil-tar         pic x(8).
          02 erez-LOG-rate-kodu       pic x(8).
          02 erez-LOG-extra-ind       pic 999v99.
          02 erez-LOG-NO-POST          pic 9.
          02 erez-LOG-dev-uye-no      pic 9(8).
          02 erez-LOG-RATE-ACENTA     Pic xxxx.
          02 erez-LOG-room-kdv-yok    pic x.
          02 erez-LOG-extra-kdv-yok   pic x.
          02 erez-LOG-telefon-no      pic x(15).
          02 erez-LOG-bavel           pic x(15).
          02 erez-LOG-VIP-turu        pic x.
          02 erez-LOG-blok-tip        pic 9. |0-ac²k 1-kitli blokaj 2-pre cIN
          02 erez-LOG-onodeme-var     pic 9. 
          02 erez-LOG-cin-kur-tar.
             03 erez-LOG-cin-kur-yil  pic 9(4).
             03 erez-LOG-cin-kur-ay   pic 9(2).
             03 erez-LOG-cin-kur-gun  pic 9(2).
          02 erez-LOG-kredi-kart.
             03 erez-LOG-kart-tipi     pic x.
             03 erez-LOG-kart-no1      pic x(04).
             03 erez-LOG-kart-no2      pic x(04).
             03 erez-LOG-kart-no3      pic x(04).
             03 erez-LOG-kart-no4      pic x(04).
             03 erez-LOG-cvv-kodu      pic x(03).
             03 erez-LOG-onay-kodu     pic x(15).
             03 erez-LOG-onay-tutar    pic 9(7)v99.
             03 erez-LOG-onay-doviz    pic x(02).
             03 erez-LOG-kart-sahibi   pic x(50).
             03 erez-LOG-kart-son-ay   pic 9(2).
             03 erez-LOG-kart-son-yil  pic 9(2).
             03 erez-LOG-provizyon-notu pic x(20).

          02 erez-LOG-bosv9           pic x(811). 
          02 erez-LOG-STAF              PIC X(04).
          02 erez-LOG-FIS             PIC 9(10).

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

**********konuk.lib
       FD ekonuk-log LABEL RECORD STANDARD.
       01 ekonuk-log-REC.
          02 ekonuk-log-ANAH.
             03 ekonuk-log-FOLIO         PIC 9(08).
          02 ekonuk-log-DURUMU           PIC X.
          02 ekonuk-log-FOL-KODU         PIC X.
          02 ekonuk-log-ADI              PIC X(20).
          02 ekonuk-log-SOYADI           PIC X(20).
          02 ekonuk-log-S-D-T-G          PIC 9.
          02 ekonuk-log-ODA-KONUMU       PIC 99.
          02 ekonuk-log-ODEME-TIPI       PIC XX.
          02 ekonuk-log-ODANO            PIC X(04).
          02 ekonuk-log-REZ-NO           PIC 9(08).
          02 ekonuk-log-ULKE             PIC XXX.
          02 ekonuk-log-KISI.
             03 ekonuk-log-BUYUK         PIC 9(02).
             03 ekonuk-log-KUCUK         PIC 9(02).
             03 ekonuk-log-BEBEK         PIC 9(01).
             03 ekonuk-log-FREE          PIC 9(01).
          02 ekonuk-log-ACENTA           PIC X(04).
          02 ekonuk-log-mini-ok          pic 9.
          02 ekonuk-log-plan             pic 9.
          02 ekonuk-log-duzeltme         pic 9.
          02 ekonuk-log-bos3             PIC X(01).
          02 ekonuk-log-VOUCHER          PIC X(10).
          02 ekonuk-log-NOR-INDIRIM      PIC 99V99.
          02 ekonuk-log-PAN-TIPI         PIC XX.
          02 ekonuk-log-REZ-TIPI         PIC 9.
          02 ekonuk-log-BANKA            PIC 99.
          02 ekonuk-log-DOVIZ            PIC 99.
          02 ekonuk-log-ANLASMA          PIC XX.
          02 ekonuk-log-KUR-AYGUN        PIC X.
          02 ekonuk-log-FATURA           PIC X.
          02 ekonuk-log-CIK-CIKMA        PIC X.
          02 ekonuk-log-ERKEN-CIK        PIC X.
          02 ekonuk-log-UZATMA           PIC X.
          02 ekonuk-log-POSTING          PIC X.
          02 ekonuk-log-VIP              PIC X.
          02 ekonuk-log-ODADEGIS         PIC X.
          02 ekonuk-log-ACIK-KAPALI      PIC X.
          02 ekonuk-log-GEL-TAR.
             03 ekonuk-log-GEL-YIL       PIC 9999.
             03 ekonuk-log-GEL-AY        PIC 99.
             03 ekonuk-log-GEL-GUN       PIC 99.
          02 ekonuk-log-GIT-TAR.
             03 ekonuk-log-GIT-YIL       PIC 9999.
             03 ekonuk-log-GIT-AY        PIC 99.
             03 ekonuk-log-GIT-GUN       PIC 99.
          02 ekonuk-log-GEL-ZAMAN.
             03 ekonuk-log-GEL-SAAT      PIC 99.
             03 ekonuk-log-GEL-DAKIKA    PIC 99.
             03 ekonuk-log-GEL-SANIYE    PIC 99.
          02 ekonuk-log-GIT-ZAMAN.
             03 ekonuk-log-GIT-SAAT      PIC 99.
             03 ekonuk-log-GIT-DAKIKA    PIC 99.
             03 ekonuk-log-GIT-SANIYE    PIC 99.
          02 ekonuk-log-ODA-TUTAR        PIC s9(12)V99   COMP-3.
          02 ekonuk-log-EXTBED-TUTAR     PIC s9(12)V99   COMP-3.
          02 ekonuk-log-KAHVALTI-TUTAR   PIC s9(12)V99   COMP-3.
          02 ekonuk-log-OGLE-TUTAR       PIC s9(12)V99   COMP-3.
          02 ekonuk-log-AKSAM-TUTAR      PIC s9(12)V99   COMP-3.
          02 ekonuk-log-ICECEK-TUTAR     PIC s9(12)V99   COMP-3.
          02 ekonuk-log-EXTRA-TUTAR      PIC s9(12)V99   COMP-3.

          02 ekonuk-log-TOP-BORC         PIC S9(12)V99  COMP-3.
          02 ekonuk-log-TOP-ALAC         PIC S9(12)V99  COMP-3.
          02 ekonuk-log-KUR-DEGERI       PIC 9(9)V9(05) COMP-3.
          02 ekonuk-log-DV-DEGERI        PIC 9(12)V99   COMP-3.

          02 ekonuk-log-ACIK.
             03 ekonuk-log-ACIK-1        PIC X(20).
             03 ekonuk-log-ACIK-2        PIC X(20).
          02 ekonuk-log-KARTNO           PIC X(07).
          02 ekonuk-log-REOPEN           PIC X.
          02 ekonuk-log-OPERATOR         PIC X(02).
          02 ekonuk-log-GRUP-NO          PIC 9(06).
          02 ekonuk-log-al-tar.
             05 ekonuk-log-al-yil        pic 99.
             05 ekonuk-log-al-ay         pic 99.
             05 ekonuk-log-al-gun        pic 99.
          02 ekonuk-log-PAZAR            PIC X(02).
          02 ekonuk-log-EB               PIC X.
          02 ekonuk-log-FIYAT-FIX        PIC X.
          02 ekonuk-log-GELIS-SAYISI     PIC 9(2).
          02 ekonuk-log-FIYAT-KONUMU     PIC 99.
          02 ekonuk-log-GEC-GIRIS        PIC 9.
          02 ekonuk-log-FAT-NO           PIC 9(06).
          02 ekonuk-log-UG-INDIRIMI      PIC 9.
          02 ekonuk-log-BILBORD-EH       PIC X.
          02 ekonuk-log-EXTRA-REZ-NO     PIC 9(08).
          02 ekonuk-log-TITLE            PIC X(3).
          02 ekonuk-log-profil-no        pic 9(8).
          02 ekonuk-log-rehber           pic x(2).
          02 ekonuk-log-SAFE             PIC 9.
          02 ekonuk-log-ANAHTAR          PIC 9.
          02 ekonuk-log-LATE-ZAMAN.
            03 ekonuk-log-LATE-GEL-SAAT  PIC 99.
            03 ekonuk-log-LATE-GEL-DAK   PIC 99.
          02 ekonuk-log-AKSIYON-EH       PIC X.
          02 ekonuk-log-share            pic 9.
          02 ekonuk-log-SPECIAL-EH         pic 9.
          02 ekonuk-log-sehir            pic xxx.
          02 ekonuk-log-firma            PIC X(05).
          02 ekonuk-log-stafbos          pic x(4).
          02 ekonuk-log-sharenum         pic 9(8).
          02 ekonuk-log-acik-hesap       pic 9.
          02 ekonuk-log-kapat-tarih.
              05 ekonuk-log-kapat-yil    pic 9999.
              05 ekonuk-log-kapat-ay     pic 99.
              05 ekonuk-log-kapat-gun    pic 99.
          02 ekonuk-log-kapat-zaman. 
             05 ekonuk-log-kapat-saat    pic 99.
             05 ekonuk-log-kapat-dak    pic 99.
             05 ekonuk-log-kapat-san    pic 99.
          02 ekonuk-log-cout-staf         pic xxxx.
          02 ekonuk-log-acik-hesap-staf   pic xxxx.
          02 ekonuk-log-kapat-staf        pic xxxx.
          02 ekonuk-log-cin-staf          pic xxxx.
          02 ekonuk-log-gunsonu-cout      pic 9.
          02 ekonuk-log-kredi-kart.
             03 ekonuk-log-kart-tipi     pic x.
             03 ekonuk-log-kart-no1      pic x(04).
             03 ekonuk-log-kart-no2      pic x(04).
             03 ekonuk-log-kart-no3      pic x(04).
             03 ekonuk-log-kart-no4      pic x(04).
             03 ekonuk-log-cvv-kodu      pic x(03).
             03 ekonuk-log-onay-kodu     pic x(15).
             03 ekonuk-log-onay-tutar    pic 9(7)v99.
             03 ekonuk-log-onay-doviz    pic x(02).
             03 ekonuk-log-kart-sahibi   pic x(50).
             03 ekonuk-log-kart-son-ay   pic 9(2).
             03 ekonuk-log-kart-son-yil  pic 9(2).
             03 ekonuk-log-provizyon-notu pic x(20).
          02 ekonuk-log-room-kdv-yok     pic x.
          02 ekonuk-log-extra-kdv-yok    pic x.
          02 ekonuk-log-kaynak-1       pic x(02).
          02 ekonuk-log-kaynak-2       pic x(02).
          02 ekonuk-log-kaynak-3       pic x(02).
          02 ekonuk-log-telefon-no     pic x(15).
          02 ekonuk-log-vip-turu       pic x.
          02 ekonuk-log-bos9             pic x(824).
          02 ekonuk-log-STAF             PIC X(04).
          02 ekonuk-log-fis             PIC 9(10).   

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
 COPY "trlo900.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "trlo900.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
   COPY "trlo900.dcl".
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
 COPY "trlo900.prd".
 COPY "trlo900.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

