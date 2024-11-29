*{Bench}prg-comment
* for02grf.cbl
* for02grf.cbl is generated from D:\asya\acugt.ytl\otel\for02grf.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. for02grf.
 AUTHOR. muhammed.
 DATE-WRITTEN. 4 Kasým 2023 Cumartesi 13:24:18.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
 COPY "TChart.def".
 COPY "Acuclass.Def".
     .
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "for02grf.tsl". 

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "for02grf.tfd". 

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "activex.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk". 
 copy "filtr.wrk".
 copy "reffiltr.wrk".
  copy "fiyhes.wrk".
  COPY "xrez.lib". 
  copy "gunbul.wrk".
  copy "dokcagirgrf.wrk".
   copy "modahes.wrk".
 copy "aksiler.wrk".
 copy "link-oda.lnk".

*{Bench}copy-working
 COPY "for02grf.wrk".
*{Bench}end
 77 ram  handle of @ISeries of @TeeChart.
 77 myseriesindex unsigned-long.
 77 myvalueindex unsigned-long.

 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "for02grf.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "for02grf.dcl". 

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
 COPY "for02grf.prd".
 COPY "for02grf.evt".
*{Bench}end
 copy "rezfilt.cpy".
  copy "grezfilt.cpy".
 copy "dsyhata.prc". 
 copy "reffilt.cpy".
 copy "fiyhes.cpy".
   copy "grekle.cpy".
 copy "gunbul.prc".
  copy "modahes.cpy".
    copy "cast.lg".
 destroy-window-proc.
     destroy Form1-Handle.