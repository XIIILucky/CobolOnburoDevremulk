*{Bench}prg-comment
* ist13.cbl
* ist13.cbl is generated from D:\asya\acugt.ytl\otel\ist13.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. ist13.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 9 Ocak 2024 Salý 12:18:02.
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
 COPY "ist13.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "ist13.tfd".

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
 COPY "ist13.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
     copy "forlink.wrk".

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "ist13.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "ist13.dcl".

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
 COPY "ist13.prd".
 COPY "ist13.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "rezfilt.cpy".
 copy "grezfilt.cpy".
 copy "grekle.cpy".
 copy "fiyhes.cpy".
 copy "reffilt.cpy".
 copy "modahes.cpy".
  copy "cast.lg".
*
 destroy-window-proc.
     destroy Form1-Handle.
