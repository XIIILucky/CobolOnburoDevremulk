*{Bench}prg-comment
* hkrack.cbl
* hkrack.cbl is generated from D:\asya\acugt.ytl\otel\hkrack.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. hkrack IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:05:46.
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

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 COPY "takip.lib" replacing ==FD takip LABEL RECORD STANDARD.== 
                  by == ==
                  =='takip'== by ==xtakip==.


*{Bench}copy-working
 COPY "hkrack.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "hkrack.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "hkrack.dcl".

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
 COPY "hkrack.prd".
 COPY "hkrack.mnu".
 COPY "hkrack.evt".
*{Bench}end
COPY "dsyhata.prc".
copy "odalar.lg" .
 destroy-window-proc.
    destroy form1-handle.
 REPORT-COMPOSER SECTION.
