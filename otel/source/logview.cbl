*{Bench}prg-comment
* logview.cbl
* logview.cbl is generated from D:\asya\acugt.ytl\otel\logview.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. logview IS INITIAL PROGRAM.
 AUTHOR. muhammed.
 DATE-WRITTEN. 10 Þubat 2023 Cuma 10:26:02.
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
   COPY "logview.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
   COPY "logview.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "parsexfd.def".

*{Bench}copy-working
 COPY "logview.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "logview.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "logview.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING logview-link.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "decla.cpy".

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
 COPY "logview.prd".
 COPY "logview.evt".
*{Bench}end

 copy "dsyhata.prc".
 destroy-window-proc.
      destroy Form1-SF-HANDLE form2-handle.


 REPORT-COMPOSER SECTION.

