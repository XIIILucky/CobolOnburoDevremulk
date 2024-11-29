*{Bench}prg-comment
* tekrack1.cbl
* tekrack1.cbl is generated from D:\asya\acugt.ytl\otel\tekrack1.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. tekrack1 IS INITIAL PROGRAM.
 AUTHOR. ramazan.
 DATE-WRITTEN. 17 Haziran 2022 Cuma 17:11:49.
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
     copy "genelfis.sel".
     copy "grup.sel".
     copy "takip.sel".
     copy "odalar.sel".
     copy "errorlog.sel".
     copy "logindex.sel".
     COPY "kllnc.sel".
     COPY "konuk.sel".
     copy "konum.sel".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
     copy "genel.lib".
     copy "genelfis.lib".
     copy "grup.lib".
$XFD FILE=TAKIP
     copy "takip.lib"  REPLACING =='takip'== BY ==takip==.
     copy "odalar.lib".
     copy "errorlog.lib".
     copy "logindex.lib".
     COPY "kllnc.lib".
     COPY "konuk.lib".
     copy "konum.lib".

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
 COPY "takip.lib" replacing ==FD takip LABEL RECORD STANDARD.== 
                  by == ==
                  =='takip'== by ==xtakip==.


*{Bench}copy-working
 COPY "tekrack1.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "tekrack1.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "tekrack1.dcl".

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
 COPY "tekrack1.prd".
 COPY "tekrack1.mnu".
 COPY "tekrack1.evt".
*{Bench}end
COPY "dsyhata.prc".
copy "odalar.lg" .
 destroy-window-proc.
    destroy form1-handle.
 REPORT-COMPOSER SECTION.
