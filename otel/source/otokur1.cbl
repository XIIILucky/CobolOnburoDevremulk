*{Bench}prg-comment
* otokur1.cbl
* otokur1.cbl is generated from D:\asya\acugt.ytl\otel\otokur1.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. otokur1 IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 19 Nisan 2021 Pazartesi 08:18:48.
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
      copy "odalar.sel".
      copy "genelfis.sel".
      copy "logindex.sel".
      copy "kur.sel".
      copy "doviz.sel".
      copy "banka.sel".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
      copy "genel.lib".
       copy "odalar.lib".
      copy "genelfis.lib".
      copy "logindex.lib".
      copy "kur.lib".
      copy "doviz.lib".
      copy "banka.lib".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "asyadll.cpy" in "../../muha/copylib".
 

*{Bench}copy-working
 COPY "otokur1.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "otokur1.scr".
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
 COPY "otokur1.prd".
 COPY "otokur1.evt".
*{Bench}end
 COPY "dsyhata.prc".
 
 COPY "kur.lg".
 destroy-window-proc.
     destroy Screen1-Handle.
 REPORT-COMPOSER SECTION.
