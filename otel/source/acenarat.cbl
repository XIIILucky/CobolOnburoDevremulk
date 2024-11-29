*{Bench}prg-comment
* acenarat.cbl
* acenarat.cbl is generated from D:\asya\acugt.ytl\otel\acenarat.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. acenarat IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:11:07.
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
 COPY "acenarat.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "acenarat.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "acenarat.wrk".
*{Bench}end
 COPY "adres.wrk".
 copy "acuserve.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "acenarat.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "acenarat.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING acenarat-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "acenarat.dcl".

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
 COPY "acenarat.prd".
 COPY "acenarat.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

