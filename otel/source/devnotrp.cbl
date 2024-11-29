*{Bench}prg-comment
* devnotrp.cbl
* devnotrp.cbl is generated from D:\asya\acugt.ytl\otel\devnotrp.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devnotrp IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:01:22.
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
 COPY "devnotrp.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "devnotrp.tfd".
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
 COPY "devnotrp.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devnotrp.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "devnotrp.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-form2-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "devnotrp.prd".
 COPY "devnotrp.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.


