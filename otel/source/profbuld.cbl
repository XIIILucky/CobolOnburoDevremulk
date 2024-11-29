*{Bench}prg-comment
* profbuld.cbl
* profbuld.cbl is generated from D:\asya\acugt.ytl\otel\profbuld.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. profbuld IS INITIAL PROGRAM.
 AUTHOR. ramazan.
 DATE-WRITTEN. 27 Mayýs 2022 Cuma 14:18:09.
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
 COPY "profbul.tsl". 
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "profbul.tfd". 
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "profbuld.wrk".
*{Bench}end
 COPY "adres.wrk".
 
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 copy "protasi.wrk".
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "profbuld.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "profbul.dcl".
 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form5-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .
*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "profbuld.prd".
 COPY "profbuld.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy  FORM5-HANDLE.

