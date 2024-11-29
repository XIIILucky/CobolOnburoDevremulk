*{Bench}prg-comment
* cast2.cbl
* cast2.cbl is generated from D:\asya\acugt.ytl\otel\cast2.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. cast2.
 AUTHOR. ramazan.
 DATE-WRITTEN. 28 Eylül 2021 Salý 16:34:01.
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
      copy "konuk.sel".
    copy "cast.sel".
    copy "genel.sel".
    copy "genelfis.sel".
    copy "logindex.sel".
    copy "kodlar02.sel".
    copy "odalar.sel".
    copy "konum.sel".
    copy "kllnc.sel".
      COPY "cast.sel"   replacing  leading "cast" by "acast".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
    copy "rez.lib".
    copy "konuk.lib".
    copy "cast.lib".
    copy "genelfis.lib".
    copy "logindex.lib".
    copy "kodlar02.lib".
    copy "odalar.lib".
    copy "genel.lib".
    copy "kllnc.lib".
   COPY "cast.lib"   replacing  leading "cast" by "acast".
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
 COPY "cast2.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "cast2.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "cast2.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING cast-link-rez, cast-planlandi, xkonuk-dig-plan
        .
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
 COPY "cast2.prd".
 COPY "cast2.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Scr1-Handle.
 REPORT-COMPOSER SECTION.
 copy "cast.lg".
 copy "konuk.lg".
 copy "rez.lg".
