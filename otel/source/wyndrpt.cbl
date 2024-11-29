*{Bench}prg-comment
* wyndrpt.cbl
* wyndrpt.cbl is generated from D:\asya\acugt.ytl\otel\wyndrpt.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. wyndrpt.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:02:02.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*
         COPY "genel.sel".
         COPY "genelfis.sel".
         COPY "odalar.sel".
         COPY "kodlar02.sel".
         COPY "konuk.sel".
         COPY "acenta.sel".
         COPY "doviz.sel".
         COPY "rez.sel".

         COPY "banka.sel".
         COPY "takvim.sel".
         COPY "ulke.sel".
         COPY "kur.sel".
         COPY "exthrk.sel".
         copy "musteri.sel".
         COPY "kllnc.sel".
         copy "konum.sel".
         copy "yanrez.sel".
         copy "dokumer.sel".
        COPY "errorlog.sel".                                                    
        COPY "logindex.sel". 
        copy "romhrk.sel".
        copy "depkod.sel".
        sELECT takas ASSIGN RANDOM,takas-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY takas-anah
           STATUS FS-takas.   
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         COPY "genel.lib".
         COPY "genelfis.lib".
         COPY "odalar.lib".
         COPY "kodlar02.lib".
         COPY "konuk.lib".
         COPY "acenta.lib".
         COPY "doviz.lib".
         COPY "rez.lib".
         copy "konum.lib".
         COPY "banka.lib".
         COPY "takvim.lib".
         COPY "ulke.lib".
         COPY "kur.lib".
         copy "yanrez.lib".
         COPY "exthrk.lib".
         copy "musteri.lib".
         COPY "kllnc.lib".
         COPY "dokumer.lib".
        COPY "errorlog.lib".                                                    
        COPY "logindex.lib".
        copy "romhrk.lib".
        copy "depkod.lib".
FD takas LABEL RECORD STANDARD.
01 takas-REC.
   02 takas-anah.
      03 takas-tip     pic x.
      03 takas-rez-no  pic 9(8).
   02 takas-diger.
      03 takas-adi     pic x(20).
      03 takas-soyadi  pic x(20).
      03 takas-gel-tar.
         04 takas-gel-yil pic 9(4).
         04 takas-gel-ay  pic 9(2).
         04 takas-gel-gun pic 9(2).
      03 takas-git-tar.
         04 takas-git-yil pic 9(4).
         04 takas-git-ay  pic 9(2).
         04 takas-git-gun pic 9(2).
      03 takas-profil-no  pic 9(8).
      03 takas-profil-sirket pic x(8).
      03 takas-kart-no    pic x(10).
      03 takas-odano        pic x(04).
      03 takas-oda-toplam   pic 9(6)v99.
      03 takas-top-toplam   pic 9(6)v99.
      03 takas-doviz        pic 99.
   
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
*{Bench}copy-working
 COPY "wyndrpt.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "wyndrpt.scr".
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
 COPY "wyndrpt.prd".
 COPY "wyndrpt.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
      destroy form1-handle.
