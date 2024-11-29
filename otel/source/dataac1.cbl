*{Bench}prg-comment
* dataac1.cbl
* dataac1.cbl is generated from D:\asya\acugt.ytl\otel\dataac1.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. dataac1.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 6 Nisan 2021 Salý 09:19:02.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
*    COPY "isyeri.sel".
    COPY "prosif.sel".
*    COPY "kllnc.sel".
    COPY "doviz.sel".
    COPY "sehir.sel".
    COPY "fatdetay.sel".
    COPY "kur.sel".
    COPY "banka.sel".
    COPY "genel.sel".
    COPY "genelfis.sel".
    COPY "takvim.sel".
    COPY "acenta.sel".
    COPY "aksiyon.sel".
    COPY "aksiyhrk.sel".
    COPY "konum.sel".
    COPY "kat.sel".
    COPY "dagilim.sel".
    COPY "odalar.sel".
    COPY "bilbord.sel".
    COPY "onavans.sel".
    COPY "depkod.sel".
    COPY "kontrat.sel".
    COPY "acenhrk.sel".
    COPY "fiyat.sel".
    COPY "fiyatana.sel".
    COPY "kodlar02.sel".
    COPY "ajanda.sel".
    COPY "fihrist.sel".
    COPY "ulke.sel".
    COPY "onkasa.sel".
    COPY "romhrk.sel".
    COPY "exthrk.sel".
    COPY "silhrk.sel".
    COPY "cektr.sel".
    COPY "rez.sel".
    COPY "konuk.sel".
    COPY "ozluk.sel".
    COPY "cast.sel".
    COPY "odadegis.sel".
    COPY "uzatma.sel".
    COPY "dov-boz.sel".
    COPY "istdata.sel".
    COPY "detist.sel".
    COPY "turizm.sel".
    COPY "postkod.sel".
    COPY "extpost.sel".

**    COPY "fatura.sel".
    COPY "matura.sel".
    COPY "acenfat.sel".
    COPY "telkod.sel".
    COPY "teldata.sel".
    COPY "kart.sel".
    COPY "teknik.sel".
    COPY "halk.sel".
    COPY "soru.sel".
    COPY "cevap1.sel".
    COPY "cevap2.sel".
    COPY "depozit.sel".
    COPY "telkim.sel".
    COPY "kategori.sel".
    COPY "grup.sel".
    COPY "karalist.sel".
    COPY "yanrez.sel".
    COPY "onkasar.sel".
    COPY "ozluk2.sel".
    COPY "not.sel".
    COPY "calling.sel".
    COPY "takip.sel".
    copy "skonuk.sel.".
    copy "aceanlas.sel".
    copy "firma.sel".
    copy "onbkodlar10.sel".
*    copy "prohrk.sel".
    copy "outof.sel".
    copy "bavelsir.sel".
    copy "gruplar.sel".
    copy "blok.sel".
    copy "gruplog.sel".
    copy "bloklog.sel".
    copy "grupfiy.sel".
    copy "break.sel".
    copy "olay.sel".
    copy "olayhrk.sel".
    copy "kasagir.sel".
    copy "polisxml.sel".     
    copy "webkont.sel".
    copy "webflog.sel". 
    copy "prim.sel".
    copy "taksit.sel".
    copy "odemeler.sel".
    copy "musteri.sel".
    copy "formulhes.sel".
    copy "bantlog.sel".
    copy "prohrk.sel".

  

*   COPY "harf.sel".
*   COPY "mail.sel".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
*    COPY "isyeri.lib".
    COPY "prosif.lib".
*    COPY "kllnc.lib".
    copy "olayhrk.lib".
    COPY "doviz.lib".
    COPY "fatdetay.lib".
    COPY "kur.lib".
    COPY "banka.lib".
    COPY "genel.lib".
    COPY "sehir.lib".
    COPY "genelfis.lib".
    COPY "takvim.lib".
    copy "polisxml.lib".
    COPY "acenta.lib".
    COPY "aksiyon.lib".
    COPY "aksiyhrk.lib".
    COPY "konum.lib".
    COPY "kat.lib".
    COPY "dagilim.lib".
    COPY "odalar.lib".
    COPY "bilbord.lib".
    COPY "onavans.lib".
    COPY "depkod.lib".
    COPY "kontrat.lib".
    COPY "acenhrk.lib".
    COPY "fiyat.lib".
    COPY "fiyatana.lib".
    COPY "kodlar02.lib".
    COPY "ajanda.lib".
    COPY "fihrist.lib".
    COPY "ulke.lib".
    COPY "onkasa.lib".
    COPY "romhrk.lib".
    COPY "exthrk.lib".
    COPY "silhrk.lib".
    COPY "cektr.lib".
    COPY "rez.lib".
    COPY "konuk.lib".
    COPY "ozluk.lib".
    COPY "cast.lib".
    COPY "odadegis.lib".
    COPY "uzatma.lib".
    COPY "dov-boz.lib".
    COPY "istdata.lib".
    COPY "detist.lib".
    COPY "turizm.lib".
    COPY "postkod.lib".
    COPY "extpost.lib".
***    COPY "fatura.lib".
    COPY "matura.lib".
    COPY "acenfat.lib".
    COPY "telkod.lib".
    COPY "teldata.lib".
    COPY "kart.lib".
    COPY "teknik.lib".
    COPY "halk.lib".
    COPY "soru.lib".
    COPY "cevap1.lib".
    COPY "cevap2.lib".
    COPY "depozit.lib".
    COPY "telkim.lib".
    COPY "kategori.lib".
    COPY "grup.lib".
    COPY "karalist.lib".
    COPY "onkasar.lib".
    COPY "yanrez.lib".
    COPY "ozluk2.lib".
    COPY "not.lib".
    copy "skonuk.lib".
    copy "aceanlas.lib".
    COPY "takip.lib" REPLACING =='takip'== BY ==takip==.
    COPY "calling.lib" replacing =='calling'== by ==calling==.
    copy "firma.lib".
    copy "onbkodlar10.lib".
*    copy "prohrk.lib".
    copy "outof.lib".
    copy "bavelsir.lib".

    copy "gruplar.lib".
    copy "blok.lib".
    copy "gruplog.lib".
    copy "bloklog.lib".
    copy "grupfiy.lib".
    copy "break.lib".
    copy "olay.lib".
    copy "kasagir.lib".
    copy "webflog.lib". 
    copy "webkont.lib".
    copy "prim.lib".
    copy "taksit.lib".
    copy "odemeler.lib".
    copy "bantlog.lib".
    copy "musteri.lib".
    copy "formulhes.lib".
    copy "prohrk.lib".
 
     


*   COPY "harf.lib".
*   COPY "mail.lib".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
*{Bench}copy-working
 COPY "dataac1.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "dataac1.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 DECLARATIVES.
 FILE-ERROR-01 SECTION.
    USE AFTER STANDARD ERROR PROCEDURE ON 
*              ISYERI PROSIF KLLNC DOVIZ KUR BANKA GENEL 
              PROSIF DOVIZ KUR BANKA GENEL skonuk 
              GENELFIS TAKVIM ACENTA folref.
 DOSYA-KONTROL-01.
*    IF FS-ISYERI   = "35" OPEN OUTPUT ISYERI   CLOSE ISYERI   OPEN I-O ISYERI .
    IF FS-PROSIF   = "35" OPEN OUTPUT PROSIF   CLOSE PROSIF   OPEN I-O PROSIF .
*    IF FS-KLLNC    = "35" OPEN OUTPUT KLLNC    CLOSE KLLNC    OPEN I-O KLLNC  .
    IF FS-DOVIZ    = "35" OPEN OUTPUT DOVIZ    CLOSE DOVIZ    OPEN I-O DOVIZ  .
    IF FS-skonuk    = "35" OPEN OUTPUT skonuk    CLOSE skonuk    OPEN I-O skonuk  .
    IF FS-KUR      = "35" OPEN OUTPUT KUR      CLOSE KUR      OPEN I-O KUR    .
    IF FS-BANKA    = "35" OPEN OUTPUT BANKA    CLOSE BANKA    OPEN I-O BANKA   .
    IF FS-GENEL    = "35" OPEN OUTPUT GENEL    CLOSE GENEL    OPEN I-O GENEL   .
    IF FS-GENELFIS = "35" OPEN OUTPUT GENELFIS CLOSE GENELFIS OPEN I-O GENELFIS.
    IF FS-TAKVIM   = "35" OPEN OUTPUT TAKVIM   CLOSE TAKVIM   OPEN I-O TAKVIM  .
    IF FS-ACENTA   = "35" OPEN OUTPUT ACENTA   CLOSE ACENTA   OPEN I-O ACENTA  .
    IF FS-folref   = "35" OPEN OUTPUT folref  CLOSE folref   OPEN I-O folref  .
        IF FS-outof   = "35" OPEN OUTPUT outof  CLOSE outof   OPEN I-O outof  .
        IF FS-soutof   = "35" OPEN OUTPUT soutof  CLOSE soutof   OPEN I-O soutof  .
        IF FS-polisxml   = "35" OPEN OUTPUT polisxml  CLOSE polisxml   OPEN I-O polisxml  .

 DOSYA-KONTROL-01-EXIT.
    EXIT.

 FILE-ERROR-02 SECTION.
    USE AFTER STANDARD ERROR PROCEDURE ON 
        AKSIYON AKSIYHRK KONUM KAT DAGILIM ODALAR 
        BILBORD ONAVANS DEPKOD KONTRAT aceanlas.
 DOSYA-KONTROL-02.
    IF FS-aceanlas  = "35" OPEN OUTPUT aceanlas CLOSE aceanlas  OPEN I-O aceanlas .
    IF FS-AKSIYON  = "35" OPEN OUTPUT AKSIYON  CLOSE AKSIYON  OPEN I-O AKSIYON .
    IF FS-AKSIYHRK = "35" OPEN OUTPUT AKSIYHRK CLOSE AKSIYHRK OPEN I-O AKSIYHRK.
    IF FS-KONUM    = "35" OPEN OUTPUT KONUM    CLOSE KONUM    OPEN I-O KONUM   .
    IF FS-KAT      = "35" OPEN OUTPUT KAT      CLOSE KAT      OPEN I-O KAT     .
    IF FS-DAGILIM  = "35" OPEN OUTPUT DAGILIM  CLOSE DAGILIM  OPEN I-O DAGILIM .
    IF FS-ODALAR   = "35" OPEN OUTPUT ODALAR   CLOSE ODALAR   OPEN I-O ODALAR  .
    IF FS-BILBORD  = "35" OPEN OUTPUT BILBORD  CLOSE BILBORD  OPEN I-O BILBORD .
    IF FS-ONAVANS  = "35" OPEN OUTPUT ONAVANS  CLOSE ONAVANS  OPEN I-O ONAVANS .
    IF FS-DEPKOD   = "35" OPEN OUTPUT DEPKOD   CLOSE DEPKOD   OPEN I-O DEPKOD  .
    IF FS-KONTRAT  = "35" OPEN OUTPUT KONTRAT  CLOSE KONTRAT  OPEN I-O KONTRAT .
 DOSYA-KONTROL-02-EXIT.
    EXIT.

 FILE-ERROR-03 SECTION.
    USE AFTER STANDARD ERROR PROCEDURE ON 
        ACENHRK FIYAT FIYATANA  KODLAR02 AJANDA FIHRIST 
        ULKE ONKASA ROMHRK. 
*        HARF
 DOSYA-KONTROL-03.
    IF FS-ACENHRK  = "35" OPEN OUTPUT ACENHRK  CLOSE ACENHRK  OPEN I-O ACENHRK .
    IF FS-FIYAT    = "35" OPEN OUTPUT FIYAT    CLOSE FIYAT    OPEN I-O FIYAT   .
    IF FS-FIYATANA = "35" OPEN OUTPUT FIYATANA CLOSE FIYATANA OPEN I-O FIYATANA.
    IF FS-KODLAR02 = "35" OPEN OUTPUT KODLAR02 CLOSE KODLAR02 OPEN I-O KODLAR02.
    IF FS-AJANDA   = "35" OPEN OUTPUT AJANDA   CLOSE AJANDA   OPEN I-O AJANDA  .
    IF FS-FIHRIST  = "35" OPEN OUTPUT FIHRIST  CLOSE FIHRIST  OPEN I-O FIHRIST .
    IF FS-ULKE     = "35" OPEN OUTPUT ULKE     CLOSE ULKE     OPEN I-O ULKE    .
*   IF FS-HARF     = "35" OPEN OUTPUT HARF     CLOSE HARF     OPEN I-O HARF    .
    IF FS-ONKASA   = "35" OPEN OUTPUT ONKASA   CLOSE ONKASA   OPEN I-O ONKASA  .
    IF FS-ROMHRK   = "35" OPEN OUTPUT ROMHRK   CLOSE ROMHRK   OPEN I-O ROMHRK  .
 DOSYA-KONTROL-03-EXIT.
    EXIT.

 FILE-ERROR-04 SECTION.
    USE AFTER STANDARD ERROR PROCEDURE ON 
        EXTHRK SILHRK CEKTR REZ KONUK OZLUK
        CAST ODADEGIS UZATMA DOV-BOZ .
 DOSYA-KONTROL-04.
    IF FS-EXTHRK   = "35" OPEN OUTPUT EXTHRK   CLOSE EXTHRK   OPEN I-O EXTHRK  .
    IF FS-SILHRK   = "35" OPEN OUTPUT SILHRK   CLOSE SILHRK   OPEN I-O SILHRK  .
    IF FS-CEKTR    = "35" OPEN OUTPUT CEKTR    CLOSE CEKTR    OPEN I-O CEKTR   .
    IF FS-REZ      = "35" OPEN OUTPUT REZ      CLOSE REZ      OPEN I-O REZ     .
    IF FS-KONUK    = "35" OPEN OUTPUT KONUK    CLOSE KONUK    OPEN I-O KONUK   .
    IF FS-OZLUK    = "35" OPEN OUTPUT OZLUK    CLOSE OZLUK    OPEN I-O OZLUK   .
    IF FS-CAST     = "35" OPEN OUTPUT CAST     CLOSE CAST     OPEN I-O CAST    .
    IF FS-ODADEGIS = "35" OPEN OUTPUT ODADEGIS CLOSE ODADEGIS OPEN I-O ODADEGIS.
    IF FS-UZATMA   = "35" OPEN OUTPUT UZATMA   CLOSE UZATMA   OPEN I-O UZATMA  .
    IF FS-DOV-BOZ  = "35" OPEN OUTPUT DOV-BOZ  CLOSE DOV-BOZ  OPEN I-O DOV-BOZ .
    IF FS-FATURA  = "35" OPEN OUTPUT fatura  CLOSE fatura  OPEN I-O fatura .

 DOSYA-KONTROL-04-EXIT.
    EXIT.
 FILE-ERROR-05 SECTION.
    USE AFTER STANDARD ERROR PROCEDURE ON 
        ISTDATA DETIST TURIZM POSTKOD EXTPOST
         fatura ACENFAT TELKOD TELDATA 
***         fataura
         .
*        KART.
 DOSYA-KONTROL-05.
    IF FS-ISTDATA  = "35" OPEN OUTPUT ISTDATA  CLOSE ISTDATA  OPEN I-O ISTDATA .
    IF FS-DETIST   = "35" OPEN OUTPUT DETIST   CLOSE DETIST   OPEN I-O DETIST  .
    IF FS-TURIZM   = "35" OPEN OUTPUT TURIZM   CLOSE TURIZM   OPEN I-O TURIZM  .
    IF FS-POSTKOD  = "35" OPEN OUTPUT POSTKOD  CLOSE POSTKOD  OPEN I-O POSTKOD .
    IF FS-EXTPOST  = "35" OPEN OUTPUT EXTPOST  CLOSE EXTPOST  OPEN I-O EXTPOST .
***    IF FS-FATURA   = "35" OPEN OUTPUT FATURA   CLOSE FATURA   OPEN I-O FATURA  .
    IF FS-fATURA   = "35" OPEN OUTPUT fATURA   CLOSE fATURA   OPEN I-O fATURA  .
    IF FS-ACENFAT  = "35" OPEN OUTPUT ACENFAT  CLOSE ACENFAT  OPEN I-O ACENFAT .
    IF FS-TELKOD   = "35" OPEN OUTPUT TELKOD   CLOSE TELKOD   OPEN I-O TELKOD  .
    IF FS-TELDATA  = "35" OPEN OUTPUT TELDATA  CLOSE TELDATA  OPEN I-O TELDATA .
*    IF FS-KART     = "35" OPEN OUTPUT KART     CLOSE KART     OPEN I-O KART    .
 DOSYA-KONTROL-05-EXIT.
    EXIT.
 FILE-ERROR-06 SECTION.
    USE AFTER STANDARD ERROR PROCEDURE ON 
        TEKNIK HALK SORU CEVAP1 
        CEVAP2 DEPOZIT TELKIM KATEGORI.
*       MAIL.
 DOSYA-KONTROL-06.
    IF FS-TEKNIK   = "35" OPEN OUTPUT TEKNIK   CLOSE TEKNIK   OPEN I-O TEKNIK  .
*   IF FS-MAIL     = "35" OPEN OUTPUT MAIL     CLOSE MAIL     OPEN I-O MAIL    .
    IF FS-HALK     = "35" OPEN OUTPUT HALK     CLOSE HALK     OPEN I-O HALK    .
    IF FS-SORU     = "35" OPEN OUTPUT SORU     CLOSE SORU     OPEN I-O SORU    .
    IF FS-CEVAP1   = "35" OPEN OUTPUT CEVAP1   CLOSE CEVAP1   OPEN I-O CEVAP1  .
    IF FS-CEVAP2   = "35" OPEN OUTPUT CEVAP2   CLOSE CEVAP2   OPEN I-O CEVAP2  .
    IF FS-DEPOZIT  = "35" OPEN OUTPUT DEPOZIT  CLOSE DEPOZIT  OPEN I-O DEPOZIT .
    IF FS-TELKIM   = "35" OPEN OUTPUT TELKIM   CLOSE TELKIM   OPEN I-O TELKIM  .
    IF FS-KATEGORI = "35" OPEN OUTPUT KATEGORI CLOSE KATEGORI OPEN I-O KATEGORI.
 DOSYA-KONTROL-06-EXIT.
    EXIT.
 FILE-ERROR-07 SECTION.
    USE AFTER STANDARD ERROR PROCEDURE ON 
        YANREZ GRUP KARALIST ONKASAR OZLUK2 CALLING takip fatdetay depkod2 sehir onbkodlar10.
 DOSYA-KONTROL-07.
    IF FS-YANREZ   = "35" OPEN OUTPUT YANREZ   CLOSE YANREZ   OPEN I-O YANREZ  .
    IF FS-fatdetay = "35"
    OPEN OUTPUT fatdetay  
    CLOSE fatdetay   
    OPEN I-O fatdetay  .
    IF FS-depkod2  = "35" OPEN OUTPUT depkod2   CLOSE depkod2   OPEN I-O depkod2  .
    IF FS-GRUP     = "35" OPEN OUTPUT GRUP     CLOSE GRUP     OPEN I-O GRUP    .
    IF FS-KARALIST = "35" OPEN OUTPUT KARALIST CLOSE KARALIST OPEN I-O KARALIST.
    IF FS-ONKASAR  = "35" OPEN OUTPUT ONKASAR  CLOSE ONKASAR  OPEN I-O ONKASAR .
    IF FS-OZLUK2   = "35" OPEN OUTPUT OZLUK2   CLOSE OZLUK2   OPEN I-O OZLUK2  .
    IF FS-CALLING  = "35" OPEN OUTPUT CALLING  CLOSE CALLING  OPEN I-O CALLING .
    IF FS-takip  = "35"   OPEN OUTPUT takip    CLOSE takip  OPEN I-O takip .
    IF FS-sehir  = "35"   OPEN OUTPUT sehir   CLOSE sehir  OPEN I-O sehir .
    IF FS-firma  = "35"   OPEN OUTPUT firma   CLOSE firma  OPEN I-O firma .
    IF FS-onbkodlar10  = "35"   OPEN OUTPUT onbkodlar10   CLOSE onbkodlar10  OPEN I-O onbkodlar10 .
*    IF FS-prohrk  = "35"   OPEN OUTPUT prohrk   CLOSE prohrk  OPEN I-O prohrk.
    IF FS-route  = "35"   OPEN OUTPUT route   CLOSE route  OPEN I-O route.
    IF FS-hrk2  = "35"   OPEN OUTPUT hrk2   CLOSE hrk2  OPEN I-O hrk2.
    IF FS-yromhrk  = "35"   OPEN OUTPUT yromhrk   CLOSE yromhrk  OPEN I-O yromhrk.

    IF FS-gruplar  = "35"   OPEN OUTPUT gruplar   CLOSE gruplar  OPEN I-O gruplar.
    IF FS-blok  = "35"   OPEN OUTPUT blok   CLOSE blok  OPEN I-O blok.
    IF FS-bloklog  = "35"   OPEN OUTPUT bloklog   CLOSE bloklog  OPEN I-O bloklog.
    IF FS-gruplog  = "35"   OPEN OUTPUT gruplog   CLOSE gruplog  OPEN I-O gruplog.
    IF FS-grupfiy  = "35"   OPEN OUTPUT grupfiy   CLOSE grupfiy  OPEN I-O grupfiy.
    IF FS-break  = "35"   OPEN OUTPUT break   CLOSE break  OPEN I-O break.
    IF FS-olay  = "35"   OPEN OUTPUT olay   CLOSE olay  OPEN I-O olay.
    IF FS-olayhrk  = "35"   OPEN OUTPUT olayhrk   CLOSE olayhrk OPEN I-O olayhrk.
        IF FS-kasagir  = "35"   OPEN OUTPUT kasagir   CLOSE kasagir OPEN I-O kasagir.
        IF FS-webfiyat  = "35"   OPEN OUTPUT webfiyat   CLOSE webfiyat OPEN I-O webfiyat.
        IF FS-WEBFLOG  = "35"   OPEN OUTPUT WEBFLOG   CLOSE WEBFLOG OPEN I-O WEBFLOG.
        if fs-rezodablok = "35" open output rezodablok close rezodablok open i-o rezodablok.

 DOSYA-KONTROL-07-EXIT.
    EXIT.

 END DECLARATIVES.

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
 COPY "dataac1.prd".
 COPY "dataac1.evt".
*{Bench}end


