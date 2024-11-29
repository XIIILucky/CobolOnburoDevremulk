*{Bench}prg-comment
* mailtrans.cbl
* mailtrans.cbl is generated from C:\asya\acugt.ets\otel\mailtrans.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. mailtrans.
 AUTHOR. Aþkýn.
 DATE-WRITTEN. 06 Þubat 2009 Cuma 17:19:58.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "genel.sel".
 copy "genelfis.sel".
 copy "logindex.sel".
 copy "mailtipi.sel".
 copy "ulke.sel".
 copy "errorlog.sel".
 copy "konuk.sel".
 copy "maildata.sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "maildata.lib".
 copy "konuk.lib".
 copy "genel.lib".
 copy "genelfis.lib".
 copy "logindex.lib".
 copy "ulke.lib".
 copy "errorlog.lib".
 copy "mailtipi.lib".
*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
*{Bench}copy-working
 COPY "mailtrans.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "mailtrans.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end

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
 COPY "mailtrans.prd".
 COPY "mailtrans.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
