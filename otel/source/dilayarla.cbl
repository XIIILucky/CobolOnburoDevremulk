*{Bench}prg-comment
* dilayarla.cbl
* dilayarla.cbl is generated from D:\asya\acugt.ytl\otel\dilayarla.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. dilayarla IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:50:17.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
  syserr is debug.

 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
    COPY "dilayarla.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
    COPY "dilayarla.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".


*{Bench}copy-working
 COPY "dilayarla.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "dilayarla.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "dilayarla.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING dilayar-link.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "decla.cpy".

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
 COPY "dilayarla.prd".
 COPY "dilayarla.evt".
*{Bench}end
 REPORT-COMPOSER SECTION.
 copy "dsyhata.prc".

 destroy-window-proc.
     destroy Form1-Handle.
