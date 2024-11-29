*{Bench}prg-comment
* profrap2.cbl
* profrap2.cbl is generated from D:\asya\acugt.ytl\otel\profrap2.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. profrap2.
 AUTHOR. Salih.
 DATE-WRITTEN. 7 Haziran 2022 Salý 16:15:23.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
  copy "profrap2.tsl".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
  copy "profrap2.tfd".
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
 copy "filtr.wrk".
 copy "reffiltr.wrk".
 COPY "yasbul.wrk".
*{Bench}copy-working
 COPY "profrap2.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "profrap2.scr".
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
 COPY "profrap2.prd".
 COPY "profrap2.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
