*{Bench}prg-comment
* gunrez.cbl
* gunrez.cbl is generated from D:\asya\acugt.ytl\otel\gunrez.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. gunrez.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 30 Ekim 2024 Çarþamba 10:53:41.
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
 COPY "gunrez.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "gunrez.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "filtr.wrk".
 copy "reffiltr.wrk".



  copy "fiyhes.wrk".
 copy "gunbul.wrk".

 COPY "xrez.lib". 

 copy "modahes.wrk".
 copy "aksiler.wrk".
 copy "link-oda.lnk".
*{Bench}copy-working
 COPY "gunrez.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
     copy "forlink.wrk".
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "gunrez.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "gunrez.dcl".

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
 COPY "gunrez.prd".
 COPY "gunrez.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
  copy "fiyhes.cpy".
 copy "gunbul.prc".
 copy "grezfilt.cpy".
 copy "grekle.cpy".
 copy "modahes.cpy".
  copy "cast.lg".
 destroy-window-proc.
     destroy Form1-Handle.
