*{Bench}prg-comment
* puanhes.cbl
* puanhes.cbl is generated from D:\asya\acugt.ytl\otel\puanhes.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. puanhes.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:56:56.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
   copy "isyeri.sel".
   copy "genel.sel".
   copy "genelfis.sel".
   COPY "errorlog.sel".
   COPY "logindex.sel".
   copy "polisxml.sel".
   copy "musteri.sel".
   copy "rez.sel".
   copy "depart.sel".
   copy "yanrez.sel".
   copy "prohrk.sel".
   copy "ozluk.sel".
   copy "romhrk.sel".
   copy "takvim.sel".
   copy "kur.sel".
   copy "odalar.sel".

           SELECT takas ASSIGN RANDOM, 
                 takas-DOSYA
                 ORGANIZATION INDEXED
                 ACCESS MODE  IS DYNAMIC
                 RECORD KEY   IS takas-ANAH                          
                       STATUS FS-takas.
       SELECT takasr ASSIGN RANDOM,takasr-DOSYA
           ORGANIZATION INDEXED
           ACCESS DYNAMIC
           RECORD KEY takasr-anah
           ALTERNATE RECORD KEY takasr-anah1 = takasr-rez-sirket,takasr-rez DUPLICATES
           STATUS FS-takasr.                       

           SELECT takasrez ASSIGN RANDOM, 
                 takasrez-DOSYA
                 ORGANIZATION INDEXED
                 ACCESS MODE  IS DYNAMIC
                 RECORD KEY   IS takasrez-ANAH                          
                 STATUS FS-takasrez.
       select tprohrk assign to random , tprohrk-adres
             organization indexed,
             access dynamic,
             record key is tprohrk-anah,
             alternate record key tprohrk-gel-anah =
             tprohrk-profil-anah , tprohrk-gel-tar duplicates
            
             status fs-tprohrk.

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
   copy "genel.lib".
   copy "genelfis.lib".
   COPY "errorlog.lib".
   COPY "logindex.lib".
   copy "polisxml.lib".
   copy "musteri.lib".
   copy "isyeri.lib".
   copy "rez.lib".    
   copy "depart.lib".
   copy "yanrez.lib".
   copy "prohrk.lib".
   copy "ozluk.lib".
   copy "romhrk.lib".
   copy "takvim.lib".
   copy "kur.lib".
   copy "odalar.lib".
 FD takasr label record standard.
 01 takasr-rec.
  02 takasr-anah.
    03 takasr-rez-sirket      pic x(8).
    03 takasr-adi             pic x(30).
    03 takasr-soy             pic x(30).
    03 takasr-rez.
      04 takasr-rez-no          pic 9(8).
      04 takasr-rez-sira        pic 9.
  02 takasr-profil-no         pic 9(8).
  02 takasr-profil-sirket     pic x(8).
  02 takasr-hangi-sira        pic x.

 FD takasrez LABEL RECORD STANDARD.
 01 takasrez-REC.
  02 takasrez-ANAH.
    03 takasrez-adi        pic x(30).
    03 takasrez-soyadi     pic x(20).
    03 takasrez-dog-tar.
       04 takasrez-dog-yil   pic 9(4).
       04 takasrez-dog-ay    pic 9(2).
       04 takasrez-dog-gun   pic 9(2).
  02 takasrez-tc-no       pic 9(11).
  02 takasrez-pas-no      pic x(30).
  02 takasrez-bos-fis     pic 9(08).
  02 takasrez-DURUMU         PIC X.
  02 takasrez-sirket      pic x(8).
  02 takasrez-pro-sirket  pic x(8).
  02 takasrez-sira        pic 9.
  02 takasrez-rezno       pic 9(08).
  02 takasrez-profilno    pic 9(08).
  02 takasrez-tcno         pic 9(11).
  02 takasrez-kseri        pic x(20).
  02 takasrez-cinsiyet     pic x.
  02 takasrez-medeni       pic x.
  02 takasrez-k-turu       pic x.
  02 takasrez-uyruk        pic x(4).
  02 takasrez-adr          pic x(60).
  02 takasrez-babaadi      pic x(20).
  02 takasrez-anaadi       pic x(20).
  02 takasrez-nil          pic x(20).
  02 takasrez-nilce        pic x(20).
  02 takasrez-nmahalle     pic x(20).
  02 takasrez-ncilt        pic x(15).
  02 takasrez-naile        pic x(15).
  02 takasrez-nsira        pic x(15).
  02 takasrez-email        pic x(33).
  02 takasrez-tel          pic x(20).
  02 takasrez-gsm          pic x(20).
  02 takasrez-evl-tarih.
     03 takasrez-evl-yil  PIC 9999.
     03 takasrez-evl-ay   PIC 99.
     03 takasrez-evl-gun  PIC 99.

 FD takas LABEL RECORD STANDARD.
 01 takas-REC.
  02 takas-ANAH.
    03 takas-adi2        pic x(30).
    03 takas-soyadi2     pic x(20).
    03 takas-tc-no       pic 9(11).
    03 takas-pas-no      pic x(30).
    03 takas-bos-fis     pic 9(08).
  02 takas-DURUMU         PIC X.
*********> polisxml-Durumu   => Folionun iceridemi yoksa histroyde mi oldugunu
*********> belirtir...I-> Iceride H->Historyde Gibi............
        
          02 takas-eski-anah.
            03 takas-rez-no          pic 9(08).
            03 takas-sira            pic 9.
            03 takas-kutuphane       pic x(08).
          02 takas-gerisi.
          03 takas-mus-no         pic 9(08).
          03 takas-ADI            PIC X(20).
          03 takas-SOYADI         PIC X(20).
          03 takas-ODANO          PIC X(04).
          03 takas-uyruk          PIC X(04).
          03 takas-GEL-TAR.
             04 takas-GEL-YIL     PIC 9999.
             04 takas-GEL-AY      PIC 99.
             04 takas-GEL-GUN     PIC 99.
          03 takas-GIT-TAR.
             04 takas-GIT-YIL     PIC 9999.
             04 takas-GIT-AY      PIC 99.
             04 takas-GIT-GUN     PIC 99.
          03 takas-GEL-ZAMAN.
             04 takas-GEL-SAAT     PIC 99.
             04 takas-GEL-DAKIKA   PIC 99.
             04 takas-GEL-SANIYE   PIC 99.
          03 takas-GIT-ZAMAN.
             04 takas-GIT-SAAT     PIC 99.
             04 takas-GIT-DAKIKA   PIC 99.
             04 takas-GIT-SANIYE   PIC 99.
          03 takas-tckimlikno      pic 9(11).
          03 takas-babaadi         pic x(20).
          03 takas-anaadi          pic x(20).
          03 takas-dyeri           pic x(40).
          03 takas-dog-tar.
             04 takas-dog-YIL     PIC 9999.
             04 takas-dog-AY      PIC 99.
             04 takas-dog-GUN     PIC 99.
          03 takas-kturu          pic x.
          03 takas-kseri          pic x(20).
          03 takas-nil            pic x(20).
          03 takas-nilce          pic x(20).
          03 takas-nmahalle       pic x(20).
          03 takas-ncilt          pic x(15).
          03 takas-naile          pic x(15).
          03 takas-nsira          pic x(15).
          03 takas-cinsiyet       pic x.
          03 takas-medeni         pic x.
          03 takas-isi            pic x(20).
          03 takas-adr            pic x(100).
          03 takas-plaka          pic x(20).
          03 takas-prb            pic x.
          03 takas-prb-ack        pic x(57).
          03 takas-folio-no       pic 9(08).
          03 takas-BOS            PIC X(74).
          03 takas-STAF           PIC X(04). 
*
 FD tprohrk LABEL RECORD STANDARD.
 01 tprohrk-REC.
   02 tprohrk-anah.
      03 tprohrk-profil-anah.
        05 tprohrk-profil-sirket      pic x(8).
        05 tprohrk-profil-no          pic 9(8).
      03 tprohrk-rez-anah.
        05 tprohrk-rez-sirket         pic x(8).
        05 tprohrk-rez-no             pic 9(8).
        05 tprohrk-rez-sira           pic 99.
   02 tprohrk-gel-tar.
      03 tprohrk-gel-yil              pic 9(4).
      03 tprohrk-gel-ay               pic 9(2).
      03 tprohrk-gel-gun              pic 9(2).   
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
 copy "mpuanhes.wrk".
*{Bench}copy-working
 COPY "puanhes.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "puanhes.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "protrans.dcl".

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
 COPY "puanhes.prd".
 COPY "puanhes.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "puanhes.cpy".
 destroy-window-proc.
     destroy form1-handle.

