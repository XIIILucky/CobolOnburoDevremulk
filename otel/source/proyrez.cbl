*{Bench}prg-comment
* proyrez.cbl
* proyrez.cbl is generated from C:\Asya\acugt.ytl\otel\proyrez.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. proyrez.
 AUTHOR. muhammed.
 DATE-WRITTEN. 04 Haziran 2010 Cuma 07:18:08.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
   copy "isyeri.sel".
   copy "genel.sel".
   copy "genelfis.sel".
   COPY "errorlog.sel".
   COPY "logindex.sel".
   copy "prohrk.sel".
   copy "yanrez.sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
   copy "isyeri.lib".
   copy "genel.lib".
   copy "genelfis.lib".
   COPY "errorlog.lib".
   COPY "logindex.lib".
   copy "prohrk.lib".
   copy "yanrez.lib".

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
 COPY "proyrez.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "proyrez.scr".
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
 COPY "proyrez.prd".
 COPY "proyrez.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy form1-handle.
