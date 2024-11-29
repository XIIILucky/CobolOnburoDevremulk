*{Bench}prg-comment
* laterezr.cbl
* laterezr.cbl is generated from D:\asya\acugt.ytl\otel\laterezr.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. laterezr.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 19 Mayýs 2021 Çarþamba 15:17:08.
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
 COPY "laterezr.tsl".
 DATA                        DIVISION. 
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "laterezr.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "laterezr.wrk".
*{Bench}end
 copy "adres.wrk".
 copy "filtr.wrk".
 copy "reffiltr.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "laterezr.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "laterezr.dcl".

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
 COPY "laterezr.prd".
 COPY "laterezr.evt".
*{Bench}end
 copy "rezfilt.cpy".
 copy "dsyhata.prc".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
