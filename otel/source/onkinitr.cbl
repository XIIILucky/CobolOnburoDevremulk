*{Bench}prg-comment
* onkinitr.cbl
* onkinitr.cbl is generated from D:\asya\acugt.ytl\otel\onkinitr.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. onkinitr.
 AUTHOR. Salih.
 DATE-WRITTEN. 28 Temmuz 2022 Perþembe 17:11:38.
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
 COPY "onkinitr.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "onkinitr.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "onkinitr.wrk".
*{Bench}end
 COPY "adres.wrk".
 COPY "hrkgir.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "onkinitr.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "onkinitr.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING Lnk-item01.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "onkinitr.dcl".
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
 COPY "onkinitr.prd".
 COPY "onkinitr.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.