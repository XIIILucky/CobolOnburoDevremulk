*{Bench}prg-comment
* musrap.cbl
* musrap.cbl is generated from D:\asya\acugt.ytl\otel\musrap.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. musrap.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:51:46.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "musrap.tsl".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "musrap.tfd".
*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
*{Bench}copy-working
 COPY "musrap.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "musrap.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end

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
 COPY "musrap.prd".
 COPY "musrap.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 
