*{Bench}prg-comment
* ykontrat.cbl
* ykontrat.cbl is generated from D:\asya\acugt.ytl\otel\ykontrat.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. ykontrat.
 AUTHOR. ramazan.
 DATE-WRITTEN. 17 Þubat 2022 Perþembe 15:46:35.
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
 COPY "ykontrat.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "ykontrat.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "ykontrat.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "ykontrat.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "ykontrat.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING Lnk-acn.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "ykontrat.dcl".

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
 COPY "ykontrat.prd".
 COPY "ykontrat.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy  Form1-Handle.
 COPY "kontrat.lg".
