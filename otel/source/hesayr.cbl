*{Bench}prg-comment
* hesayr.cbl
* hesayr.cbl is generated from D:\asya\acugt.ytl\otel\hesayr.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. hesayr.
 AUTHOR. ramazan.
 DATE-WRITTEN. 02 Haziran 2022 Perþembe 15:10:52.
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
    copy "genel.sel".
    copy "rez.sel".
    copy "cast.sel".
    copy "genelfis.sel".
    copy "logindex.sel".
    copy "kodlar02.sel".
    copy "odalar.sel".
    copy "konum.sel".
    copy "formul.sel".
   copy "takvim.sel".  
    copy "hesayr.sel".
    copy "fiyatana.sel".
    copy "aksiyhrk.sel".
    copy "acenta.sel".
    copy "banka.sel".
    copy "doviz.sel".
    copy "dokumer.sel".
    copy "konuk.sel".
    copy "formulhes.sel".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
     copy "genel.lib".
    copy "rez.lib".
    copy "cast.lib".
    copy "genelfis.lib".
    copy "logindex.lib".
    copy "kodlar02.lib".
    copy "odalar.lib".
    copy "formul.lib".
    copy "hesayr.lib".
    copy "fiyatana.lib".
    copy "aksiyhrk.lib".
    copy "takvim.lib".
    copy "konum.lib".
    copy "acenta.lib".
    copy "banka.lib".
    copy "doviz.lib".
    copy "dokumer.lib".
    copy "konuk.lib".
    copy "formulhes.lib".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 
 copy "dokcagir.tasi".

*{Bench}copy-working
 COPY "hesayr.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "hesayr.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "hesayr.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING cast-link-rez, link-xrez.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "hesayr.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-scr1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "hesayr.prd".
 COPY "hesayr.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Scr1-Handle.
 REPORT-COMPOSER SECTION.
