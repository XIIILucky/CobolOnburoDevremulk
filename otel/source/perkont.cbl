*{Bench}prg-comment
* perkont.cbl
* perkont.cbl is generated from D:\asya\acugt.ytl\otel\perkont.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. perkont.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:44:30.
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
 COPY "perkont.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "perkont.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "perkont.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "perkont.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "perkont.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING ext-folio.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "perkont.dcl".

 Acu-Main-Logic.
     perform per-kont-basla thru per-kont-basla-exit
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
 COPY "perkont.prd".
 COPY "perkont.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
*     destroy Form1-Handle.

