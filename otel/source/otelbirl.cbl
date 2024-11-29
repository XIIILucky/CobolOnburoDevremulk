*{Bench}prg-comment
* otelbirl.cbl
* otelbirl.cbl is generated from D:\asya\acugt.ytl\otel\otelbirl.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. otelbirl.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 26 Mayýs 2021 Çarþamba 09:28:25.
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
 copy "otelbirl.tsl".
 copy "konuk.sel".
 copy "rez.sel".
 copy "yanrez.sel".
 copy "cast.sel".
 copy "kllnc.sel".
 copy "depekhiz.sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "otelbirl.tfd".
 copy "konuk.lib".
 copy "rez.lib".
 copy "yanrez.lib".
 copy "cast.lib".
 copy "depekhiz.lib".
$XFD FILE =kllnc
 copy "kllnc.lib".
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
*{Bench}copy-working
 COPY "otelbirl.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "otelbirl.scr".
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
 COPY "otelbirl.prd".
 COPY "otelbirl.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
