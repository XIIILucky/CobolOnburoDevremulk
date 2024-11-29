*{Bench}prg-comment
* routsec.cbl
* routsec.cbl is generated from D:\asya\acugt.ytl\otel\routsec.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. routsec.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:52:08.
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
     copy "routsec.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
     copy "routsec.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "routsec.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "routsec.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "routsec.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING routsec-link.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "decla.cpy".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Screen1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "routsec.prd".
 COPY "routsec.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Screen1-handle.
 REPORT-COMPOSER SECTION.
