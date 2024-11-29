*{Bench}prg-comment
* takvimac.cbl
* takvimac.cbl is generated from D:\asya\acugt.ytl\otel\takvimac.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. takvimac.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 18 Kasým 2024 Pazartesi 16:24:15.
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
 COPY "takvimac.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "takvimac.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "takvimac.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "takvimac.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "takvimac.dcl".
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
 COPY "takvimac.prd".
 COPY "takvimac.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "calling.lg".
