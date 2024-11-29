*{Bench}prg-comment
* otokur.cbl
* otokur.cbl is generated from D:\asya\acugt.ytl\otel\otokur.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. otokur IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:48:33.
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
      copy "genel.sel".
      copy "genelfis.sel".
      copy "logindex.sel".
      copy "kur.sel".
      copy "doviz.sel".
      copy "banka.sel".
      copy "odalar.sel".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
      copy "genel.lib".
      copy "genelfis.lib".
      copy "logindex.lib".
      copy "kur.lib".
      copy "doviz.lib".
      copy "banka.lib".
      copy "odalar.lib".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "otokur.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "otokur.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "otokur.dcl".

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
 COPY "otokur.prd".
 COPY "otokur.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Screen1-Handle.
 REPORT-COMPOSER SECTION.
