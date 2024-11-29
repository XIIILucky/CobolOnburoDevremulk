*{Bench}prg-comment
* grapher.cbl
* grapher.cbl is generated from D:\asya\acugt.ytl\otel\grapher.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. grapher.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:42:00.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
 COPY "TChart.def".
 COPY "Acuclass.Def".
     .
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 copy "grapher.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 copy "grapher.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "activex.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "grapher.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "grapher.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "grapher.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING grapher-cagir-seri-sayisi, grapher-cagir-ptr.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "grapher.dcl".

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
 COPY "grapher.prd".
 COPY "grapher.evt".
*{Bench}end
 copy "grapher.prc".
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle Form2-Handle.

