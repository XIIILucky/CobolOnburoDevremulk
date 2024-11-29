*{Bench}prg-comment
* maidbol.cbl
* maidbol.cbl is generated from D:\asya\acugt.ytl\otel\maidbol.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. maidbol.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:03:33.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
   copy "odalar.sel".
   copy "genel.sel".
   copy "genelfis.sel".
   copy "logindex.sel".
   copy "dokumer.sel".
   copy "errorlog.sel".
   copy "konum.sel".
   copy "konuk.sel".
                  SELECT takas ASSIGN RANDOM, takas-DOSYA
                  ORGANIZATION INDEXED
                  ACCESS DYNAMIC
                  RECORD takas-ANAH
                  STATUS FS-takas.

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
   copy "odalar.lib".
   copy "genel.lib".
   copy "genelfis.lib".
   copy "logindex.lib".
   copy "dokumer.lib".
   copy "errorlog.lib".
   copy "konum.lib".
   copy "konuk.lib".
 FD takas LABEL RECORD STANDARD.
 01 takas-REC.
    02 takas-ANAH.
       03 takas-maid        pic x(4).
    02 takas-kredi          pic 9(4).

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
 COPY "maidbol.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "maidbol.scr".
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
 COPY "maidbol.prd".
 COPY "maidbol.evt".
*{Bench}end
  copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
  copy "odalar.lg".
