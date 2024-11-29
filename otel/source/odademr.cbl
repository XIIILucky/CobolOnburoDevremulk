*{Bench}prg-comment
* odademr.cbl
* odademr.cbl is generated from D:\asya\acugt.ytl\otel\odademr.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. odademr IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:59:30.
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
 COPY "odadem.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "odadem.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "frame.wrk".

*{Bench}copy-working
 COPY "odademr.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "odademr.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "odademr.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING demir-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "odadem.dcl".

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
 COPY "odademr.prd".
 COPY "odademr.evt".
*{Bench}end

 COPY "dsyhata.prc".
 COPY "frame.prc".
*
 destroy-window-proc.
     destroy form1-handle.

