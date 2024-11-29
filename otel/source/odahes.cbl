*{Bench}prg-comment
* odahes.cbl
* odahes.cbl is generated from D:\asya\acugt.ytl\otel\odahes.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. odahes.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 29 Aðustos 2024 Perþembe 10:55:40.
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
 COPY "odahes.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "odahes.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "modahes.wrk".
 copy "aksiler.wrk". 
 
*{Bench}copy-working
 COPY "odahes.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
   copy "link-oda.lnk".
   copy "xrez.lib".
*  copy "xrez.lib".
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "odahes.scr".
*{Bench}end


 PROCEDURE DIVISION using xrez-rec linkh-odahes.

*{Bench}declarative
*{Bench}end
 COPY "odahes.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
*{Bench}end
     perform basla
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "odahes.prd".
 COPY "odahes.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "modahes.cpy".
 destroy-window-proc.
     .
 copy "cast.lg".
