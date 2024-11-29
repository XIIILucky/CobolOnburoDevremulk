*{Bench}prg-comment
* grafik.cbl
* grafik.cbl is generated from D:\asya\acugt.ytl\otel\grafik.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. grafik IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:49:35.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
 COPY "TChart.def".
 COPY "Acuclass.Def".
     .
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
    COPY "genelfis.sel".
    COPY "grafik.sel".
    copy "logindex.sel".
    copy "errorlog.sel".
    copy "genel.sel".
    copy "odalar.sel".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
    COPY "grafik.lib".
    COPY "genelfis.lib".
    copy "logindex.lib".
    copy "errorlog.lib".
    copy "genel.lib".
    copy "odalar.lib".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "activex.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "opensave.def".
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "grafik.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "grafik.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "grafik.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-grafik-adres.
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
 COPY "grafik.prd".
 COPY "grafik.evt".
*{Bench}end
 COPY "dsyhata.prc".
 REPORT-COMPOSER SECTION.
 destroy-window-proc.
     destroy Form1-Handle.
