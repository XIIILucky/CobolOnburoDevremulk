*{Bench}prg-comment
* bosdolue.cbl
* bosdolue.cbl is generated from D:\asya\acugt.ytl\otel\bosdolue.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. bosdolue IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:40:16.
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
 COPY "bosdolue.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "bosdolue.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "bosdolue.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "bosdolue.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "bosdolue.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING takas-adres.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "bosdolue.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form0-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "bosdolue.prd".
 COPY "bosdolue.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
      destroy form0-handle.


