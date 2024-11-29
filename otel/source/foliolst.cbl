*{Bench}prg-comment
* foliolst.cbl
* foliolst.cbl is generated from D:\asya\acugt.ytl\otel\foliolst.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. foliolst.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 16 Aðustos 2024 Cuma 11:15:11.
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
 COPY "foliolst.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "foliolst.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "hrkgir.wrk".

*{Bench}copy-working
 COPY "foliolst.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "foliolst.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "foliolst.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING folio-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "foliolst.dcl".

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
 COPY "foliolst.prd".
 COPY "foliolst.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
