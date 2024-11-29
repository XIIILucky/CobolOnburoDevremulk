*{Bench}prg-comment
* hourack.cbl
* hourack.cbl is generated from D:\asya\acugt.ytl\otel\hourack.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. hourack IS INITIAL PROGRAM.
 AUTHOR. ramazan.
 DATE-WRITTEN. 17 Haziran 2022 Cuma 17:18:18.
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
 COPY "hourack.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "hourack.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
  COPY "hrkgir.wrk".

 copy "reffiltr.wrk".
 copy "not.lnk".
 copy "dokcagir.tasi".
*{Bench}copy-working
 COPY "hourack.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "hourack.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "hourack.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form0-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "hourack.prd".
 COPY "hourack.mnu".
 COPY "hourack.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "reffilt.cpy".
 destroy-window-proc.
      destroy form0-handle,form1-handle.
 COPY "odalar.lg".


