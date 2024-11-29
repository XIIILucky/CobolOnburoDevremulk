*{Bench}prg-comment
* cast3.cbl
* cast3.cbl is generated from D:\asya\acugt.ytl\otel\cast3.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. cast3.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:57:36.
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
    copy "rez.sel".
    copy "cast.sel".
    copy "genel.sel".
    copy "genelfis.sel".
    copy "logindex.sel".
    copy "kodlar02.sel".
    copy "odalar.sel".
    copy "konum.sel".
    copy "malzeme.sel".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
    copy "rez.lib".
    copy "cast.lib".
    copy "genel.lib".
    copy "genelfis.lib".
    copy "logindex.lib".
    copy "kodlar02.lib".
    copy "odalar.lib".
    copy "malzeme.lib".
    copy "konum.lib".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".

*{Bench}copy-working
 COPY "cast3.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "cast3.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "cast3.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING cast-link-rez, cast-planlandi.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "cast2.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-scr1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "cast3.prd".
 COPY "cast3.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Scr1-Handle.
 REPORT-COMPOSER SECTION.
 copy "cast.lg".
