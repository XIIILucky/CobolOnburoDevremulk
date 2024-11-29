*{Bench}prg-comment
* uyrukist.cbl
* uyrukist.cbl is generated from D:\asya\acugt.ytl\otel\uyrukist.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. uyrukist.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 10 Haziran 2021 Perþembe 16:48:58.
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
 copy "uyrukist.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 copy "uyrukist.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
  copy "reffiltr.wrk".
*{Bench}copy-working
 COPY "uyrukist.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "uyrukist.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "uyrukist.dcl".
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
 COPY "uyrukist.prd".
 COPY "uyrukist.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.