*{Bench}prg-comment
* konumind.cbl
* konumind.cbl is generated from D:\asya\acugt.ytl\otel\konumind.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. konumind IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:03:41.
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
 COPY "konumind.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "konumind.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "not.lnk".
 copy "opensave.def".
*{Bench}copy-working
 COPY "konumind.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "konumind.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "konumind.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING ylgelen-acenta, ylgelen-acenta-1.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "konumind.dcl".

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
 COPY "konumind.prd".
 COPY "konumind.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy form1-handle.
 COPY "fiyatana.lg".
 COPY "aksiyon.lg".

