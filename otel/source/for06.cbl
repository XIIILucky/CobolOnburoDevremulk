*{Bench}prg-comment
* for06.cbl
* for06.cbl is generated from D:\asya\acugt.ytl\otel\for06.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. for06.
 AUTHOR. muhammed.
 DATE-WRITTEN. 4 Kasým 2023 Cumartesi 13:03:31.
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
 COPY "for06.tsl".
 DATA                        DIVISION.

 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "for06.tfd".

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
 COPY "for06.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
     copy "forlink.wrk".

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "for06.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "for06.dcl".

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
 COPY "for06.prd".
 COPY "for06.evt".
*{Bench}end
 copy "dsyhata.prc".
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
