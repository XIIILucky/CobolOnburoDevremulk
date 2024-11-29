*{Bench}prg-comment
* xmlkont.cbl
* xmlkont.cbl is generated from D:\asya\acugt.ytl\otel\xmlkont.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. xmlkont.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 2 Eylül 2021 Perþembe 11:08:18.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "polisxml.sel".
 copy "genel.sel".
 COPY "errorlog.sel".
 COPY "logindex.sel".
 copy "genelfis.sel".
 copy "dokumer.sel".
 copy "cast.sel".
  copy "rez.sel".
  copy "konuk.sel".
  copy "odalar.sel".
  copy "yanrez.sel".
  copy "kllnc.sel".
  copy "musteri.sel".
  copy "acenta.sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "polisxml.lib".
 copy "genel.lib".
 COPY "errorlog.lib".
 COPY "logindex.lib".
 copy "genelfis.lib".
 copy "dokumer.lib".
 copy "cast.lib".
  copy "rez.lib".
  copy "konuk.lib".
  copy "odalar.lib".
  copy "yanrez.lib".
  copy "kllnc.lib".
  copy "musteri.lib".
  copy "acenta.lib".
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
 COPY "xmlkont.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "xmlkont.scr".
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
     PERFORM Acu-Screen1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "xmlkont.prd".
 COPY "xmlkont.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Screen1-Handle.
 
