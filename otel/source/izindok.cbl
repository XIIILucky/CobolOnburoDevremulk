*{Bench}prg-comment
* izindok.cbl
* izindok.cbl is generated from C:\asya\Acugt.ytl\OTEL DEVREMULK\izindok.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. izindok.
 AUTHOR. SaLih-w7.
 DATE-WRITTEN. 26 Aralýk 2012 Çarþamba 01:32:45.
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
*{Bench}file-control
*{Bench}end
    copy "errorlog.sel".
    copy "logindex.sel".
    copy "kodlar10.sel".
    copy "genel.sel".
    copy "genelfis.sel".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end

    copy "errorlog.lib".
    copy "logindex.lib".
    copy "kodlar10.lib".
    copy "genel.lib".
    copy "genelfis.lib".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
*{Bench}copy-working
 COPY "izindok.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "izindok.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "izindok.scr".
*{Bench}end
 
*{Bench}linkpara
 PROCEDURE DIVISION USING pers-kod-link.
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
 COPY "izindok.prd".
 COPY "izindok.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.



