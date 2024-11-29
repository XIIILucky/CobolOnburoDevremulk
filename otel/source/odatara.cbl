*{Bench}prg-comment
* odatara.cbl
* odatara.cbl is generated from D:\asya\acugt.ytl\otel\odatara.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. odatara IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:46:20.
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
 COPY "odatara.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "odatara.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "odatara.wrk".
*{Bench}end
 COPY "adres.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "odatara.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "odatara.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING pazar-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "odatara.dcl".

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
 COPY "odatara.prd".
 COPY "odatara.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.