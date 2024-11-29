*{Bench}prg-comment
* odemegir.cbl
* odemegir.cbl is generated from D:\asya\acugt.ytl\otel\odemegir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. odemegir.
 AUTHOR. muhammed.
 DATE-WRITTEN. 8 Mayýs 2018 Salý 17:14:57.
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
         COPY "grup.sel".
         COPY "takvim.sel".
         COPY "errorlog.sel".                                                    
         COPY "logindex.sel".                                                         
         copy "kllnc.sel".
         copy "musteri.sel".
         copy "kur.sel".
         copy "odalar.sel".
         copy "konum.sel".
         copy "dokumer.sel".
         copy "rez.sel".
         copy "banka.sel".
         copy "depozit.sel".
         COPY "hesap.sel" OF "..\..\MUHA\LIB-SEL".
         COPY "cari.sel"  OF "..\..\MUHA\LIB-SEL".
         copy "konuk.sel".
         copy "polisxml.sel".
         copy "depkod.sel".
         copy "doviz.sel".
         copy "cast.sel".
         copy "romhrk.sel".
         copy "acenta.sel".
         copy "onkasa.sel".
         copy "kodlar02.sel".          
         copy "gala.sel".
         copy "onodeme.sel".
         copy "not.sel".

              SELECT takas ASSIGN RANDOM, takas-DOSYA
              ORGANIZATION INDEXED
              ACCESS MODE DYNAMIC
              RECORD KEY takas-rez-no
              alternate record key takas-anah1 = takas-doviz-kodu ,
              takas-acenta-kodu , takas-pax,takas-child duplicates
              alternate record key takas-anah2 = takas-acenta-kodu,
              takas-doviz-kodu , takas-pax,takas-child duplicates
              alternate record key takas-anah3 = takas-doviz-kodu ,
              takas-pax,takas-child,takas-acenta-kodu duplicates

              STATUS FS-takas.

              SELECT takastop ASSIGN RANDOM, takastop-DOSYA
              ORGANIZATION INDEXED
              ACCESS MODE DYNAMIC
              RECORD KEY takastop-anah
              
              STATUS FS-takastop.

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         COPY "genel.lib".
         COPY "genelfis.lib".
         COPY "grup.lib".
         COPY "takvim.lib".
         COPY "errorlog.lib".                                                    
         COPY "logindex.lib".                                                         
         copy "kllnc.lib".
         copy "musteri.lib".
         copy "kur.lib".
         copy "odalar.lib".
         copy "konum.lib".
         copy "dokumer.lib".
         copy "rez.lib". 
         copy "banka.lib".
         copy "depozit.lib".
         COPY "hesap.lib" OF "..\..\MUHA\LIB-SEL".
         COPY "cari.lib"  OF "..\..\MUHA\LIB-SEL".
         copy "konuk.lib".
         copy "polisxml.lib".
         copy "depkod.lib".
         copy "doviz.lib".
         copy "cast.lib".
         copy "romhrk.lib".
         copy "acenta.lib".
         copy "onkasa.lib".
         copy "kodlar02.lib".
         copy "gala.lib".
         copy "onodeme.lib".
         copy "not.lib".



 FD takas LABEL RECORD STANDARD.
 01 takas-rec.
    02 takas-rez-no          pic 9(8).
    02 takas-acenta-kodu     pic x(4).
    02 takas-pax             pic 99.
    02 takas-child           pic 99.
    02 takas-doviz-kodu      pic xx.
 FD takastop LABEL RECORD STANDARD.
 01 takastop-rec.
    02 takastop-anah.
       05 takastop-doviz-kodu      pic xx.
       05 takastop-acenta-kodu     pic x(4).
    02 takastop-pax             pic 9(9).
    02 takastop-child           pic 9(9).
    02 takastop-tutar           pic 9(9)v99. 
    02 takastop-basilan         pic 9(9)v99. 
    02 takastop-oda             pic 99999.
*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 copy "dokcagir.tasi".
*{Bench}copy-working
 COPY "odemegir.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "odemegir.scr".
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
 COPY "odemegir.prd".
 COPY "odemegir.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "romhrk.lg".
 destroy-window-proc.
     destroy Form1-Handle.

