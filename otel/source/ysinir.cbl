*{Bench}prg-comment
* ysinir.cbl
* ysinir.cbl is generated from D:\asya\acugt.ytl\otel\ysinir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. ysinir.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 12 Þubat 2021 Cuma 14:43:16.
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
*{Bench}file-control
*{Bench}end
 COPY "yassinir.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "yassinir.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 COPY "myassinir.wrk".
 COPY "yasbul.wrk".
*{Bench}copy-working
 COPY "ysinir.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "ysinir.lks".
*{Bench}end
  COPY "mysinir.lnk".
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "ysinir.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING lnk-rez-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
  COPY "yassinir.dcl".
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
 COPY "ysinir.prd".
 COPY "ysinir.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "mysinir.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
