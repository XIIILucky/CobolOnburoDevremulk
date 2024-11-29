*{Bench}prg-comment
* mesajrap.cbl
* mesajrap.cbl is generated from D:\asya\acugt.ytl\otel\mesajrap.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. mesajrap.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:01:47.
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
*
 COPY "takvim.sel".
 COPY "genelfis.sel".
 COPY "genel.sel".
 COPY "dokumer.sel".
 copy "logindex.sel".
 copy "not.sel".
 copy "rez.sel".
 copy "odalar.sel".
 copy "grup.sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 COPY "takvim.lib".
 COPY "genelfis.lib".
 COPY "genel.lib".
 COPY "dokumer.lib".
 copy "logindex.lib".
 copy "not.lib".
 copy "rez.lib".
 copy "odalar.lib".
 copy "grup.lib".
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
  copy "filtr.wrk".
*{Bench}copy-working
 COPY "mesajrap.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "mesajrap.scr".
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
 COPY "mesajrap.prd".
 COPY "mesajrap.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "rezfilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.

