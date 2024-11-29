*{Bench}prg-comment
* yasrap.cbl
* yasrap.cbl is generated from D:\asya\acugt.ytl\otel\yasrap.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. yasrap.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 31 Mayýs 2021 Pazartesi 15:47:05.
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
 COPY "yasrap.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "yasrap.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 COPY "myassinir.wrk".


 copy "reffiltr.wrk".
 COPY "yasbul.wrk".
*{Bench}copy-working
 COPY "yasrap.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "yasrap.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "yasrap.dcl".

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
 COPY "yasrap.prd".
 COPY "yasrap.evt".
*{Bench}end
 copy "dsyhata.prc".

 copy "reffilt.cpy".
 copy "mysinir.cpy".
 destroy-window-proc.
     destroy Form1-Handle.