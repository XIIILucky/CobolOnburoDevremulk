*{Bench}prg-comment
* puanfor.cbl
* puanfor.cbl is generated from D:\asya\acugt.ytl\otel\puanfor.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. puanfor.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:56:41.
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
 COPY "puanfor.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "puanfor.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "opensave.def".
*{Bench}copy-working
 COPY "puanfor.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "puanfor.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "puanfor.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-hepsi.
*{Bench}end
 COPY "puanfor.dcl".
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
 COPY "puanfor.prd".
 COPY "puanfor.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
* COPY "kodlar02.lg".

