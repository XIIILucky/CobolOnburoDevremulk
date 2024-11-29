*{Bench}prg-comment
* depozit.cbl
* depozit.cbl is generated from D:\asya\acugt.ytl\otel\depozit.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. depozit.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:40:38.
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
 COPY "depozit.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "depozit.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
*{Bench}copy-working
 COPY "depozit.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "depozit.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "depozit.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-fol, link-anah.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "depozit.dcl".

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
 COPY "depozit.prd".
 COPY "depozit.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "depozit.lg".

