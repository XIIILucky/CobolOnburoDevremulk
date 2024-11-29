*{Bench}prg-comment
* extpcout.cbl
* extpcout.cbl is generated from D:\asya\acugt.ytl\otel\extpcout.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. extpcout.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:40:51.
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
 COPY "extpcout.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "extpcout.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "extpcout.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "extpcout.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "extpcout.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING ext-folio.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "extpcout.dcl".

 Acu-Main-Logic.
     perform extp-cout-basla thru extp-cout-basla-exit
     goback.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "extpcout.prd".
 COPY "extpcout.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
*     destroy Form1-Handle.
 copy "extpost.lg".
 copy "postkod.lg".


