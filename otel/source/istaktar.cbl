*{Bench}prg-comment
* istaktar.cbl
* istaktar.cbl is generated from D:\asya\acugt.ytl\otel\istaktar.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. istaktar IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:42:41.
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
 COPY "istaktar.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
COPY "istaktar.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "istaktar.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "istaktar.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "istaktar.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-1.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "istaktar.dcl".

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
 COPY "istaktar.prd".
 COPY "istaktar.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "calling.lg".
