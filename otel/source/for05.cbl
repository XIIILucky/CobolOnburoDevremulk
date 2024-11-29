*{Bench}prg-comment
* for05.cbl
* for05.cbl is generated from D:\asya\acugt.ytl\otel\for05.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. for05.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 12 Þubat 2021 Cuma 15:47:02.
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
 COPY "for05.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "for05.tfd".

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
 COPY "for05.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "for05.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "for05.dcl".

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
 COPY "for05.prd".
 COPY "for05.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
 copy "grezfilt.cpy".
 copy "grekle.cpy".
  copy "modahes.cpy".
 copy "cast.lg".
 destroy-window-proc.
     destroy Form1-Handle.
