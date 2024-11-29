*{Bench}prg-comment
* for02d.cbl
* for02d.cbl is generated from D:\asya\acugt.ytl\otel\for02d.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. for02d.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 12 Þubat 2021 Cuma 14:53:24.
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
 COPY "for02d.tsl". 

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "for02d.tfd". 

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
  copy "adres.wrk".
 copy "fiyhes.wrk".
  copy "gunbul.wrk".
 copy "reffiltr.wrk".
 COPY "xrez.lib". 
 copy "filtr.wrk".
 copy "modahes.wrk".
 copy "aksiler.wrk".
 copy "link-oda.lnk".
*{Bench}copy-working
 COPY "for02d.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "for02d.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "for02d.dcl". 

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
 COPY "for02d.prd".
 COPY "for02d.evt".
*{Bench}end
 copy "rezfilt.cpy".
 copy "grezfilt.cpy".

 copy "dsyhata.prc". 
 copy "reffilt.cpy".
 copy "modahes.cpy".
  copy "cast.lg".
 destroy-window-proc.
     destroy Form1-Handle.