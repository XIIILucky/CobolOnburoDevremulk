*{Bench}prg-comment
* acenper.cbl
* acenper.cbl is generated from D:\asya\acugt.ytl\otel\acenper.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. acenper.
 AUTHOR. ramazan.
 DATE-WRITTEN. 31 Mayýs 2022 Salý 12:19:34.
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
 COPY "acenper.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "acenper.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "filtr.wrk".
 copy "reffiltr.wrk".
 copy "fiyhes.wrk".
 copy "gunbul.wrk".
*{Bench}copy-working
 COPY "acenper.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "acenper.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "acenper.dcl".

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
 COPY "acenper.prd".
 COPY "acenper.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
 copy "fiyhes.cpy".
 copy "gunbul.prc".

 destroy-window-proc.
     destroy Form1-Handle.
