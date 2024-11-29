*{Bench}prg-comment
* castplan.cbl
* castplan.cbl is generated from D:\asya\acugt.ytl\otel\castplan.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. castplan IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 12 Þubat 2021 Cuma 14:48:39.
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
 COPY "castplan.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "castplan.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
  copy "link-oda.lnk".
 COPY "xrez.lib".
 COPY "xkonuk.lib".
 COPY "xozluk.lib".
         
 copy "modahes.wrk".
 copy "aksiler.wrk". 



*{Bench}copy-working
 COPY "castplan.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "castplan.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "castplan.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING Lnk-item01.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "castplan.dcl".

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
 COPY "castplan.prd".
 COPY "castplan.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "modahes.cpy".
 
 destroy-window-proc.
     destroy Form1-Handle.
 copy "konuk.lg".
 copy "rez.lg".
 copy "cast.lg".
 