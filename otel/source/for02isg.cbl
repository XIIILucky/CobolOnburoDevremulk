*{Bench}prg-comment
* for02isg.cbl
* for02isg.cbl is generated from D:\asya\acugt.ytl\otel\for02isg.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. for02isg.
 AUTHOR. muhammed.
 DATE-WRITTEN. 2 Nisan 2018 Pazartesi 20:56:09.
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
 COPY "for02isg.tsl". 

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "for02isg.tfd". 

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
 COPY "for02isg.wrk".
*{Bench}end
 77 ram  handle of @ISeries of @TeeChart.
 77 myseriesindex unsigned-long.
 77 myvalueindex unsigned-long.

 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "for02isg.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "for02isg.dcl". 

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
 COPY "for02isg.prd".
 COPY "for02isg.evt".
*{Bench}end
 copy "rezfilt.cpy".
  copy "grezfilt.cpy".
 copy "dsyhata.prc". 
 copy "reffilt.cpy".
 copy "fiyhes.cpy".
*   copy "grekle.cpy".
 copy "gunbul.prc".
  copy "modahes.cpy".
    copy "cast.lg".
 destroy-window-proc.
     destroy Form1-Handle.