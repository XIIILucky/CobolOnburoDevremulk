*{Bench}prg-comment
* for10bi.cbl
* for10bi.cbl is generated from D:\asya\acugt.ytl\otel\for10bi.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. for10bi IS INITIAL PROGRAM.
 AUTHOR. salih.
 DATE-WRITTEN. 20 Ocak 2022 Perþembe 16:45:34.
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
 COPY "for10bi.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "for10bi.tfd".

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
  copy "mfor10.wrk".
 copy "modahes.wrk".
 copy "aksiler.wrk".
 copy "link-oda.lnk".

*{Bench}copy-working
 COPY "for10bi.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
     copy "forlink.wrk".

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "for10bi.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "for10.dcl".

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
 COPY "for10bi.prd".
 COPY "for10bi.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
 copy "grezfilt.cpy".
 copy "grekle.cpy".
 copy "modahes.cpy".
 copy "cast.lg".
*
 destroy-window-proc.
     destroy Form1-Handle.
