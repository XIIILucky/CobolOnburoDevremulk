*{Bench}prg-comment
* satkar.cbl
* satkar.cbl is generated from D:\asya\acugt.ytl\otel\satkar.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. satkar.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 2 Mart 2024 Cumartesi 14:13:38.
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
 COPY "satkar.tsl".
 DATA                        DIVISION.

 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "satkar.tfd".

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
 COPY "satkar.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "satkar.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "satkar.dcl".

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
 COPY "satkar.prd".
 COPY "satkar.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "rezfilt.cpy".
 copy "fiyhes.cpy".
 copy "gunbul.prc".
 copy "reffilt.cpy".
  copy "grezfilt.cpy".
 copy "grekle.cpy".
 copy "modahes.cpy".
 copy "cast.lg".
 copy "grekle2.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
