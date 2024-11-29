*{Bench}prg-comment
* lograp.cbl
* lograp.cbl is generated from D:\asya\acugt.ytl\otel\lograp.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. lograp IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 6 Nisan 2021 Salý 10:09:44.
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
 COPY "lograp.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "lograp.tfd".
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
 COPY "lograp.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "lograp.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
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
 COPY "lograp.prd".
 COPY "lograp.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
      destroy form1-handle.
 REPORT-COMPOSER SECTION.
