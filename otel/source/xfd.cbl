IDENTIFICATION DIVISION.
PROGRAM-ID.  XFD  INITIAL PROGRAM.
AUTHOR. ILYAS-TURKKAN.             
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
     COPY "acenfat.sel".
     COPY "acenhrk.sel".
     COPY "acenta.sel".
     COPY "ajanda.sel".
     COPY "aksiyhrk.sel".
     COPY "aksiyon.sel".
     COPY "banka.sel".             
     COPY "bilbord.sel".
     COPY "cast.sel".
     COPY "cektr.sel".
     COPY "dagilim.sel".
     COPY "depkod.sel".
     COPY "dov-boz.sel".
     COPY "doviz.sel".
     COPY "exthrk.sel".
     COPY "extpost.sel".
     COPY "fatura.sel".
     COPY "fiyat.sel".
     COPY "fiyatana.sel".
     COPY "genel.sel".
     COPY "genelfis.sel".
     COPY "istdata.sel".
     COPY "isyeri.sel".
     COPY "kat.sel".
     COPY "kllnc.sel".
     copy "butcegir.sel".
     COPY "kodlar02.sel".
     COPY "kontrat.sel".
     COPY "konuk.sel".
     COPY "konum.sel".
     COPY "kur.sel".
     COPY "odadegis.sel".
     COPY "odalar.sel".
     COPY "onavans.sel".
     COPY "onkasa.sel".
     COPY "onkasar.sel".
     COPY "ozluk.sel".
     COPY "postkod.sel".
     COPY "rez.sel".
     COPY "yanrez.sel".
     COPY "romhrk.sel".
     COPY "silhrk.sel".
     COPY "takvim.sel".
     COPY "turizm.sel".
     COPY "ulke.sel".
     COPY "uzatma.sel".
     COPY "teknik.sel".
     COPY "teldata.sel".
     COPY "telkod.sel".
     COPY "soru.sel".
     COPY "halk.sel".
     COPY "cevap1.sel".
     COPY "cevap2.sel".
     COPY "depozit.sel".
     COPY "fihrist.sel".
     COPY "kategori.sel".
     COPY "telkim.sel".
     COPY "polisxml.sel".
     COPY "karalist.sel".
     COPY "grup.sel".
     COPY "gruplar.sel".
     COPY "uyruk.sel".
     COPY "prosif.sel".
     COPY "firma.sel".
     COPY "prtler.sel".
     copy "lpsentgr.sel".
     copy "calling.sel".
     copy "devremulk.sel".
     copy "odemeler.sel".
     copy "taksit.sel".
     copy "odemetip.sel".
     copy "prim.sel".
     copy "gorev.sel".
     copy "primhrk.sel".
     copy "danisman.sel".
     copy "cek.sel".
     copy "donem.sel".
     copy "donem2.sel".
     copy "donhrk.sel".
     copy "aceanlas.sel".
     copy "kart.sel".
     copy "wakeup.sel".
     copy "blok.sel".
     copy "fatdetay.sel".
     copy "hesayr.sel".
     copy "onay.sel".
     copy "kolbant.sel".
     copy "bantlog.sel".
     copy "kbantsor.sel".
     copy "formul.sel".
     copy "hessorgu.sel".
          copy "carpan.sel".

         copy "pasoru.sel".
         copy "pacevap.sel".
         copy "pahrk.sel".
         copy "pachrk.sel".
         copy "prohrk.sel".
         copy "bupgfiy.sel".
         copy "blokupg.sel".
         copy "acendft.sel".
                  copy "gerfat.sel".
 
     copy "outof.sel".
     copy "takip.sel" REPLACING =='takip'== BY ==takip==.
*
        SELECT MUSTERI ASSIGN RANDOM,MUSTERI-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS dynamic
           RECORD KEY IS MUSTERI-ANAH.


*        SELECT MUSTERI ASSIGN RANDOM,MUSTERI-DOSYA
*           ORGANIZATION INDEXED
*           ACCESS MODE IS dynamic
*           RECORD KEY IS MUSTERI-ANAH
*           ALTERNATE RECORD MUSTERI-anah1 = MUSTERI-no                       DUPLICATES 
*           ALTERNATE RECORD MUSTERI-ilk = MUSTERI-adi, MUSTERI-soyadi        DUPLICATES 
*           ALTERNATE RECORD MUSTERI-soy = MUSTERI-soyadi, MUSTERI-adi        DUPLICATES
*           ALTERNATE RECORD MUSTERI-soy-ad = MUSTERI-soyadi5, MUSTERI-adi5   DUPLICATES 
*           ALTERNATE RECORD MUSTERI-ad-soy = MUSTERI-adi5, MUSTERI-soyadi5   DUPLICATES 
*           ALTERNATE RECORD MUSTERI-adi2                                     DUPLICATES 
*           ALTERNATE RECORD MUSTERI-adi3                                     DUPLICATES 
*           ALTERNATE RECORD MUSTERI-soyadi2                                  DUPLICATES 
*           ALTERNATE RECORD MUSTERI-soyadi3                                  DUPLICATES 
*           ALTERNATE RECORD MUSTERI-anah2 = MUSTERI-g-tarih                  DUPLICATES 
*           ALTERNATE RECORD MUSTERI-d-tarihi           DUPLICATES 
*           ALTERNATE RECORD MUSTERI-e-tarihi           DUPLICATES 
*           ALTERNATE RECORD MUSTERI-o-tarihi           DUPLICATES
*           ALTERNATE RECORD MUSTERI-ulke               DUPLICATES
*           ALTERNATE RECORD MUSTERI-kim-uyruk          DUPLICATES
*           ALTERNATE RECORD MUSTERI-e-mail             DUPLICATES
*           ALTERNATE RECORD MUSTERI-tel1               DUPLICATES
*           ALTERNATE RECORD MUSTERI-gsm                DUPLICATES
*           ALTERNATE RECORD MUSTERI-kis-adrs           DUPLICATES
*           ALTERNATE RECORD MUSTERI-kim-tcno           DUPLICATES
*           ALTERNATE RECORD MUSTERI-seri-no            DUPLICATES
*           ALTERNATE RECORD MUSTERI-k-tarih            DUPLICATES
*           ALTERNATE RECORD MUSTERI-puan-kart-no       DUPLICATES
*           ALTERNATE RECORD MUSTERI-kazanilan-puan     DUPLICATES
*           ALTERNATE RECORD MUSTERI-hak-edilen-tip     DUPLICATES
*           ALTERNATE RECORD MUSTERI-gelis-sayisi       duplicates.

DATA DIVISION.
FILE SECTION.
******************************************devremulk basla***********************
$XFD FILE =devmulk
     COPY "devremulk.lib".
$XFD FILE =odemeler
     COPY "odemeler.lib".
$XFD FILE =taksit
     COPY "taksit.lib".
$XFD FILE =odemetip
     COPY "odemetip.lib".
$XFD FILE =prim
     COPY "prim.lib".
$XFD FILE =gorev
     COPY "gorev.lib".
$XFD FILE =primhrk
     COPY "primhrk.lib".
$XFD FILE =danisman
     COPY "danisman.lib".
$XFD FILE =cek
     COPY "cek.lib".
$XFD FILE =donem
     COPY "donem.lib".
$XFD FILE =donem2
     COPY "donem2.lib".
$XFD FILE =donhrk
     COPY "donhrk.lib".

******************************************devremulk bitti***********************
 

$XFD FILE =wakeup
     COPY "wakeup.lib".
$XFD FILE =acenfat
     COPY "acenfat.lib".
$XFD FILE =kart
     COPY "kart.lib".
$XFD FILE =aceanlas
     COPY "aceanlas.lib".
$XFD FILE =acenhrk
     COPY "acenhrk.lib".
$XFD FILE =acenta
     COPY "acenta.lib".
$XFD FILE =ajanda
     COPY "ajanda.lib".
$XFD FILE =aksiyhrk
     COPY "aksiyhrk.lib".
$XFD FILE =aksiyon
     COPY "aksiyon.lib".
$XFD FILE =banka
     COPY "banka.lib".
$XFD FILE=call
     copy "calling.lib" replacing =='calling'== by ==calling==. 
$XFD FILE =bilbord
     COPY "bilbord.lib".
$XFD FILE =cast
     COPY "cast.lib".
$XFD FILE =cektr
     COPY "cektr.lib".
$XFD FILE =dagilim
     COPY "dagilim.lib".

$XFD FILE =depkod
     COPY "depkod.lib".
$XFD FILE =dov-boz
     COPY "dov-boz.lib".
$XFD FILE =doviz
     COPY "doviz.lib".
$XFD FILE =exthrk
     COPY "exthrk.lib".
$XFD FILE =extpost
     COPY "extpost.lib".
$XFD FILE =fatura
     COPY "fatura.lib".
$XFD FILE =fiyat
     COPY "fiyat.lib".
$XFD FILE =fiyatana
     COPY "fiyatana.lib".
$XFD FILE =genel
     COPY "genel.lib".
$XFD FILE =genelfis
     COPY "genelfis.lib".
$XFD FILE =istdata
     COPY "istdata.lib".
$XFD FILE =isyeri
     COPY "isyeri.lib".
$XFD FILE =kat
     COPY "kat.lib".
$XFD FILE =kllnc
     COPY "kllnc.lib".
$XFD FILE =kodlar02
     COPY "kodlar02.lib".
$XFD FILE =kontrat
     COPY "kontrat.lib".
$XFD FILE =konuk
     COPY "konuk.lib".
$XFD FILE =hesayr
     COPY "hesayr.lib".
$XFD FILE =konum
     COPY "konum.lib".
$XFD FILE =kur
     COPY "kur.lib".
$XFD FILE =odadegis
     COPY "odadegis.lib".
$XFD FILE =odalar
     COPY "odalar.lib".
$XFD FILE =onavans
     COPY "onavans.lib".
$XFD FILE =onkasa
     COPY "onkasa.lib".
$XFD FILE =onkasar
     COPY "onkasar.lib".
$XFD FILE =ozluk
     COPY "ozluk.lib".
$XFD FILE =postkod
     COPY "postkod.lib".
$XFD FILE =rez
     COPY "rez.lib".
$XFD FILE =yrez
     COPY "yanrez.lib".
$XFD FILE =romhrk
     COPY "romhrk.lib".
$XFD FILE =silhrk
     COPY "silhrk.lib".
$XFD FILE =takvim
     COPY "takvim.lib".
$XFD FILE =turizm
     COPY "turizm.lib".
$XFD FILE =ulke
     COPY "ulke.lib".
$XFD FILE =butcegir
     copy "butcegir.lib".
$XFD FILE =uzatma
     COPY "uzatma.lib".
$XFD FILE =teknik
     COPY "teknik.lib".
$XFD FILE =teldata
     COPY "teldata.lib".
$XFD FILE =telkod
     COPY "telkod.lib".
$XFD FILE =soru
     COPY "soru.lib".
$XFD FILE =halk
     COPY "halk.lib".
$XFD FILE =cevap1
     COPY "cevap1.lib".
$XFD FILE =cevap2
     COPY "cevap2.lib".
$XFD FILE =depozit
     COPY "depozit.lib".
$XFD FILE =fihrist
     COPY "fihrist.lib".
$XFD FILE =kategori
     COPY "kategori.lib".
$XFD FILE =telkim
     COPY "telkim.lib".
$XFD FILE =polisxml
     COPY "polisxml.lib".
$XFD FILE =karalist
     COPY "karalist.lib".
$XFD FILE =grup
     COPY "grup.lib".
$XFD FILE =gruplar
     COPY "gruplar.lib".
$XFD FILE =uyruk
     COPY "uyruk.lib".
$XFD FILE =prosif
     COPY "prosif.lib".
$XFD FILE =prtler
     COPY "prtler.lib".
$XFD FILE =lpsentgr
     copy "lpsentgr.lib". 
$XFD FILE =blok
     copy "blok.lib". 
$XFD FILE =fatdetay
     copy "fatdetay.lib". 
$XFD FILE =onay
     copy "onay.lib". 
$XFD FILE =kolbant
     COPY "kolbant.lib".
$XFD FILE =hessorgu
     COPY "hessorgu.lib".
$XFD FILE =bantlog
     COPY "bantlog.lib".
$XFD FILE =kbantsor
     copy "kbantsor.lib". 
$XFD FILE =formul
     copy "formul.lib". 
$XFD FILE =outof
     copy "outof.lib". 
$XFD FILE =takip
     copy "takip.lib" REPLACING =='takip'== BY ==takip==.
$XFD FILE =carpan
     COPY "carpan.lib".
$XFD FILE=prohrk
     copy "prohrk.lib".
$XFD FILE=pasoru
copy "pasoru.lib".
$XFD FILE=pacevap
copy "pacevap.lib".
$XFD FILE=pahrk
copy "pahrk.lib".
$XFD FILE=pachrk
copy "pachrk.lib".
$XFD FILE=bupgfiy
copy "bupgfiy.lib".
$XFD FILE=blokupg
copy "blokupg.lib".
$XFD FILE=acendft
copy "acendft.lib".
$XFD FILE=gerfat
copy "gerfat.lib".

$XFD FILE=MUSTERI
 FD MUSTERI LABEL RECORD STANDARD.
 01 MUSTERI-REC.
   02 MUSTERI-anah.
      03 MUSTERI-tip                   pic x.
      03 m-profil.
      05 MUSTERI-sirket                pic x(08).
      05 MUSTERI-no                    pic 9(08).
      03 MUSTERI-BOS-ANAH              pic x(10).

$XFD NAME = MUSTERI-ADI
$XFD USE GROUP
   02 MUSTERI-adiaaa.
      03 filler-a2                        pic x.

      03 MUSTERI-adi2.
         04 filler-a3                     pic x.
         04 MUSTERI-adi3               pic x(18). 

$XFD USE GROUP
   02 filler-a1.
      03 MUSTERI-adi5                  pic x(3).
      03 filler-s2                        pic x(17).             


$XFD NAME = MUSTERI-SOYADI
$XFD USE GROUP
   02 MUSTERI-soyadiaaa.
      03 filler-s3                        pic x.
      03 MUSTERI-soyadi2.
         04 filler-s4                     pic x.
         04 MUSTERI-soyadi3            pic x(18).
         

   
        
$XFD USE GROUP
   02 filler-s1.
      03 MUSTERI-soyadi5                  pic x(3).
      03 filler-s5                        pic x(17).                    
*(( XFD DATE=YYYYMMDD, USE GROUP ))
$XFD NAME=MUSTERI-d-tarihi
   02 MUSTERI-d-tarihi.
      03 MUSTERI-dyil                  pic 9(4).
      03 MUSTERI-day                   pic 9(2).
      03 MUSTERI-dgun                  pic 9(2).
*(( XFD DATE=YYYYMMDD, USE GROUP ))
$XFD NAME=MUSTERI-e-tarihi
   02 MUSTERI-e-tarihi.
      03 MUSTERI-eyil                  pic 9(4).
      03 MUSTERI-eay                   pic 9(2).
      03 MUSTERI-egun                  pic 9(2).
$XFD HIDDEN
   02 MUSTERI-o-tarihi.
      03 MUSTERI-oyil                  pic 9(4).
      03 MUSTERI-oay                   pic 9(2).
      03 MUSTERI-ogun                  pic 9(2).
$XFD USE GROUP
$XFD HIDDEN
02 gereksiz.
	03 MUSTERI-kaynak                   pic x(03).
   03 MUSTERI-ulke                     pic x(04).
   03 MUSTERI-dil-1                    pic x(03).
   03 MUSTERI-dil-2                    pic x(03).
   03 MUSTERI-dil-3                    pic x(03).
   03 MUSTERI-din                      pic x(03).
   03 MUSTERI-unvan                    pic x(10).
   03 MUSTERI-kis-il                   pic x(15).
   03 MUSTERI-kis-ilce                 pic x(16).
*   03 MUSTERI-cinsiyet                 pic x.
   03 MUSTERI-meslek                   pic x(20).
   03 MUSTERI-e-mail                   pic x(40).
   03 MUSTERI-web-adresi               pic x(40).
   03 MUSTERI-kis-adrs                 pic x(50).
   03 MUSTERI-kis-adrs1                pic x(50).
$XFD HIDDEN
   03 MUSTERI-kart-tipi                pic x(2).
   03 MUSTERI-gelis-sayisi             pic 9(3).
$XFD HIDDEN
   03 MUSTERI-gecmis-cl-tut            pic 9(8)v99.
   03 MUSTERI-aciklama                 pic x(40).
*/:-) Fatura bilgileri 
   03 MUSTERI-unvan1                   pic x(50).   
   03 MUSTERI-unvan2                   pic x(50).
   03 MUSTERI-adres1                   pic x(50).   
   03 MUSTERI-adres2                   pic x(50).
   03 MUSTERI-vdairesi                 pic x(20).
   03 MUSTERI-vno                      pic x(15).
*   03 MUSTERI-vno                      pic x(10).
   03 MUSTERI-il                       pic x(20).
   03 MUSTERI-ilce                     pic x(20).
   03 MUSTERI-tel1                     pic x(15).
   03 MUSTERI-tel2                     pic x(15).
   03 MUSTERI-tel3                     pic x(15).
   03 MUSTERI-fax                      pic x(15).
   03 MUSTERI-gsm                      pic x(15).
   03 MUSTERI-pk                       pic x(10).
*/:-) Diger BÝlgiler
   03 MUSTERI-hobi1                    pic x(03).
   03 MUSTERI-hobi2                    pic x(03).
   03 MUSTERI-hobi3                    pic x(03).
   03 MUSTERI-hobi4                    pic x(03).
   03 MUSTERI-gazete-1                 pic x(03).
   03 MUSTERI-gazete-2                 pic x(03).
   03 MUSTERI-gazete-3                 pic x(03).
   03 MUSTERI-tv-kanali-1              pic x(03).
   03 MUSTERI-tv-kanali-2              pic x(03).
   03 MUSTERI-tv-kanali-3              pic x(03).
   03 MUSTERI-tv-prog-1                pic x(03).
   03 MUSTERI-tv-prog-2                pic x(03).
   03 MUSTERI-tv-prog-3                pic x(03).
   03 MUSTERI-arac-model               pic x(19).
   03 MUSTERI-silindi                  pic 9.
   03 MUSTERI-plaka                    pic x(14).
   03 MUSTERI-mail-durumu              pic 9.
*/:-) Odeme Bilgileri
   03 MUSTERI-odeme-tipi               pic x.
   03 MUSTERI-odeme-kart-tipi          pic x.
   03 MUSTERI-kart-sahibi              pic x(25).
   03 MUSTERI-muhasebe-kodu            pic x(15).
   03 MUSTERI-kart-no                  pic x(40).
   03 MUSTERI-son-k-tarih.
     04 MUSTERI-son-k-ay               pic 9(03).
     04 MUSTERI-son-k-yil              pic 9(05).
   03 MUSTERI-g-kodu                   pic x(04).
*/:-)kimlik bilgileri
   03 MUSTERI-kim-tcno                 pic 9(11).
   03 MUSTERI-kim-uyruk                pic x(04).
   03 MUSTERI-kim-cinsiyet             pic x.
   03 MUSTERI-kim-medeni               pic x.
   03 MUSTERI-kim-adrs                 pic x(50).
   03 MUSTERI-kim-adrs1                pic x(50).
   03 MUSTERI-b-turu                   pic x.
   03 MUSTERI-seri-no                  pic x(15).
   03 MUSTERI-baba-adi                 pic x(20).
   03 MUSTERI-ana-adi                  pic x(20).
   03 MUSTERI-d-yeri                   pic x(30).
   03 MUSTERI-kim-il                   pic x(20).
   03 MUSTERI-kim-ilce                 pic x(20).
   03 MUSTERI-kim-mahalle              pic x(20).
   03 MUSTERI-kim-cilt                 pic x(10).
   03 MUSTERI-kim-aile-no              pic x(10).
   03 MUSTERI-kim-sira-no              pic x(10).
   03 MUSTERI-k-tarih.
     04 MUSTERI-k-yil                  pic 9(05).
     04 MUSTERI-k-ay                   pic 9(03).
     04 MUSTERI-k-gun                  pic 9(03).
   03 MUSTERI-g-tarih.
     04 MUSTERI-g-yil                  pic 9(05).
     04 MUSTERI-g-ay                   pic 9(03).
     04 MUSTERI-g-gun                  pic 9(03).
   03 MUSTERI-prb-ack                  pic x.
   03 MUSTERI-fat-ulke                 pic x(15).
   03 MUSTERI-kazanilan-puan           pic 9(6).
   03 MUSTERI-kullanilan-puan          pic 9(6).
   03 MUSTERI-puan-kart-no             pic x(16).

   03 MUSTERI-hak-edilen-tip           pic x(03).
   03 MUSTERI-kart-tipi-2              pic x(03).

   03 MUSTERI-gecmis-kalis-sayisi      pic 9(2).
*   03 MUSTERI-bos                      pic x(08).
   03 MUSTERI-staf-ilk                 pic x(05).
   03 MUSTERI-staf-son                 pic x(05).



WORKING-STORAGE SECTION.
01 FS-STATUS. 
          02 FS-ISYERI         PIC XX.
          02 FS-depkod2         PIC XX.
          02 FS-KLLNC          PIC XX.
          02 FS-DOVIZ          PIC XX.
          02 FS-KUR            PIC XX.
          02 FS-BANKA          PIC XX.
          02 fs-acebavel       pic xx.
          02 fs-otomail        pic xx.
          02 fs-dagilimtar     pic xx.
          02 fs-rezdigtar      pic xx.
          02 fs-rezodablok      pic xx.
          02 FS-GENEL          PIC XX.
          02 FS-GENELFIS       PIC XX.
          02 FS-fiyatind       PIC XX.
          02 FS-TAKVIM         PIC XX.
          02 FS-SCRSVR         PIC XX.
          02 FS-ACENTA         PIC XX.
          02 FS-AKSIYON        PIC XX.
          02 FS-AKSIYHRK       PIC XX.
          02 FS-KONUM          PIC XX.
          02 FS-KAT            PIC XX.
          02 FS-DAGILIM        PIC XX.
          02 FS-ODALAR         PIC XX.
          02 FS-BILBORD        PIC XX.
          02 FS-ONAVANS        PIC XX.
          02 FS-DEPKOD         PIC XX.
          02 FS-KONTRAT        PIC XX.
          02 FS-ACENHRK        PIC XX.
          02 FS-FIYAT          PIC XX.
          02 FS-FIYATANA       PIC XX.
          02 FS-KODLAR02       PIC XX.
          02 FS-AJANDA         PIC XX.
          02 FS-ULKE           PIC XX.
          02 FS-HARF           PIC XX.
          02 FS-ONKASA         PIC XX.
          02 FS-ONKASAR         PIC XX.
          02 FS-ROMHRK         PIC XX.
          02 FS-EXTHRK         PIC XX.
          02 FS-SILHRK         PIC XX.
          02 FS-CEKTR          PIC XX.
          02 FS-REZ            PIC XX.
          02 FS-yanREZ           PIC XX.
          02 FS-KONUK          PIC XX.
          02 FS-OZLUK          PIC XX.
          02 FS-CAST           PIC XX.
          02 FS-ODADEGIS       PIC XX.
          02 FS-UZATMA         PIC XX.
          02 FS-DOV-BOZ        PIC XX.
          02 FS-ISTDATA        PIC XX.
          02 FS-DETIST         PIC XX.
          02 FS-TURIZM         PIC XX.
          02 FS-POSTKOD        PIC XX.
          02 FS-EXTPOST        PIC XX.
          02 FS-FATURA         PIC XX.
          02 FS-ACENFAT        PIC XX.
          02 FS-TELKOD         PIC XX.
          02 FS-TELDATA        PIC XX.
          02 FS-TELKIM         PIC XX.
          02 FS-TEKNIK         PIC XX.
          02 FS-HALK           PIC XX.
          02 FS-SORU           PIC XX.
          02 FS-CEVAP1         PIC XX.
          02 FS-CEVAP2         PIC XX.
          02 FS-DEPOZIT        PIC XX.
          02 FS-FIHRIST        PIC XX.
          02 FS-KATEGORI       PIC XX.
          02 FS-POLISXML       PIC XX.
          02 FS-KARALIST       PIC XX.
          02 FS-GRUP           PIC XX.
          02 FS-GRUPlar           PIC XX.
          02 FS-UYRUK          PIC XX.
          02 FS-PROSIF         PIC XX.
          02 FS-PRTLER         PIC XX.
          02 FS-TCP-IP         PIC XX.
          02 fs-rezek          pic xx.
          02 fs-hrk2           pic xx.
          02 fs-yromhrk        pic xx.
          02 fs-folref         pic xx.
          02 fs-route          pic xx.
          02 fs-firma          pic xx.
          02 fs-acenfat2       pic xx.
          02 FS-AKSIYON2       pic xx.
          02 fs-lpsentgr       pic xx.
          02 fs-calling        pic xx.
          02 fs-devremulk      pic xx.
          02 fs-odemeler       pic xx.
          02 fs-taksit         pic xx.
          02 fs-odemetip       pic xx.
          02 fs-prim           pic xx.
          02 fs-gorev          pic xx.
          02 fs-primhrk        pic xx.
          02 fs-danisman       pic xx.
          02 fs-cek            pic xx.
          02 fs-donem          pic xx.
          02 fs-donem2         pic xx.
          02 fs-donhrk         pic xx.
          02 fs-uyrukweb       pic xx.
          02 fs-webfiyat       pic xx.
          02 fs-rezweb         pic xx.
          02 fs-aceanlas       pic xx.
          02 fs-kart           pic xx.
          02 fs-wakeup         pic xx.
          02 fs-blok           pic xx.
          02 fs-konumek        pic xx.
          02 fs-takip          pic xx.
          02 fs-fatdetay       pic xx.
          02 fs-onay           pic xx.
          02 fs-hesayr         pic xx.
          02 fs-odalar2        pic xx.
          02 fs-uyrukkbs       pic xx.
          02 fs-kolbant        pic xx.
          02 fs-hessorgu       pic xx.
          02 fs-bantlog        pic xx.
          02 fs-kbantsor       pic xx.
          02 fs-formul         pic xx.
          02 fs-outof          pic xx.
          02 fs-soutof         pic xx.
          02 FS-PROHRK         PIC XX.
          02 fs-carpan pic xx.
          02 fs-butcegir pic xx.

          02 FS-PASORU  pic xx.
          02 FS-PACEVAP pic xx.
          02 FS-PAHRK   pic xx.
          02 FS-PACHRK  pic xx.
          02 FS-BUPGFIY    pic xx.
          02 FS-BLOKUPG    pic xx.
          02 fs-acendft pic xx.
                    02 fs-gerfat pic xx.
*    COPY "adresler.dos".
 
PROCEDURE DIVISION.  
DECLARATIVES.
FILE-ERROR-01 SECTION.
    USE AFTER STANDARD ERROR PROCEDURE ON ACENTA.
DOSYA-KONTROL-01.
DOSYA-KONTROL-01-EXIT.
    EXIT.
END DECLARATIVES.
SON.
    EXIT PROGRAM.
