*{Bench}prg-comment
* onkinit.cbl
* onkinit.cbl is generated from D:\asya\acugt.ytl\otel\onkinit.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. onkinit.
 AUTHOR. salih.
 DATE-WRITTEN. 5 Mayýs 2022 Perþembe 14:56:22.
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
 COPY "onkinit.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "onkinit.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "onkinit.wrk".
*{Bench}end
 COPY "adres.wrk".
 COPY "hrkgir.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "onkinit.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "onkinit.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING Lnk-item01.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "onkinit.dcl".
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
 COPY "onkinit.prd".
 COPY "onkinit.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "calling.lg".
 copy "romhrk.lg".
 copy "exthrk.lg".
