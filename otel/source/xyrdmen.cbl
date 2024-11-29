*{Bench}prg-comment
* xyrdmen.cbl
* xyrdmen.cbl is generated from C:\asya\acugt.ytl\otel\xyrdmen.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. xyrdmen IS INITIAL PROGRAM.
 AUTHOR. Aþkýn.
 DATE-WRITTEN. 13 Nisan 2009 Pazartesi 16:37:41.
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
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "xyrdmen.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "xyrdmen.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end

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
 COPY "xyrdmen.prd".
 COPY "xyrdmen.mnu".
 COPY "xyrdmen.evt".
*{Bench}end
 REPORT-COMPOSER SECTION.
