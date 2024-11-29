*{Bench}prg-comment
* viphrk.cbl
* viphrk.cbl is generated from D:\asya\acugt.ytl\otel\viphrk.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. viphrk.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:52:27.
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
      COPY "kodlar02.sel".
      COPY "odalar.sel".
      COPY "genel.sel".
      COPY "genelfis.sel".
      COPY "logindex.sel".
      copy "viphrk.sel".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
      COPY "kodlar02.lib".
      COPY "odalar.lib".
      COPY "genel.lib".
      COPY "genelfis.lib".
      COPY "logindex.lib".
      copy "viphrk.lib".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "viphrk.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "viphrk.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "viphrk.dcl".
 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Screen1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "viphrk.prd".
 COPY "viphrk.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy screen1-Handle.
 COPY "kodlar02.lg".
 REPORT-COMPOSER SECTION.
