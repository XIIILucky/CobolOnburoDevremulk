*{Bench}prg-comment
* pazarara.cbl
* pazarara.cbl is generated from D:\asya\acugt.ytl\otel\pazarara.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. pazarara IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:44:29.
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
 COPY "pazarara.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "pazarara.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "pazarara.wrk".
*{Bench}end
 COPY "adres.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "pazarara.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "pazarara.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING pazar-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "pazarara.dcl".

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
 COPY "pazarara.prd".
 COPY "pazarara.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.