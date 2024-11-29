*{Bench}prg-comment
* gelen.cbl
* gelen.cbl is generated from D:\asya\acugt.ytl\otel\gelen.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. gelen.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:53:59.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
   copy "gelen.tfd".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
   copy "gelen.tsl".
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
 copy "adres.wrk".
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
*{Bench}copy-working
 COPY "gelen.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "gelen.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
  COPY "gelen.dcl".
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
 COPY "gelen.prd".
 COPY "gelen.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 copy "yanrez.lg".
