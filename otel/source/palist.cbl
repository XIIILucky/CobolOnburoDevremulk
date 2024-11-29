*{Bench}prg-comment
* palist.cbl
* palist.cbl is generated from D:\asya\acugt.ytl\otel\palist.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. palist.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:03:05.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "rez.sel".
 copy "genelfis.sel".
 copy "genel.sel".
 copy "konuk.sel".
 copy "acenta.sel".
 copy "dokumer.sel".
 copy "kodlar02.sel".
 copy "logindex.sel".
 copy "ulke.sel".
 copy "yanrez.sel".
 copy "doviz.sel".
 copy "odalar.sel".
 copy "takvim.sel".
 copy "konum.sel".
 copy "romhrk.sel".
 copy "pahrk.sel".

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "rez.lib".
 copy "genelfis.lib".
 copy "genel.lib".
 copy "konuk.lib".
 copy "acenta.lib".
 copy "dokumer.lib".
 copy "kodlar02.lib".
 copy "logindex.lib".
 copy "ulke.lib".
 copy "yanrez.lib".
 copy "doviz.lib".
 copy "odalar.lib".
 copy "takvim.lib".
 copy "konum.lib".
 copy "romhrk.lib".
  copy "pahrk.lib".


*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "frame.wrk".
 copy "not.lnk".
 COPY "dokcagir.tasi".
*{Bench}copy-working
 COPY "palist.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "palist.scr".
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
 COPY "palist.prd".
 COPY "palist.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "frame.prc".
 destroy-window-proc.
      destroy form1-handle.
 copy "rez.lg".
 copy "konuk.lg".
