*{Bench}prg-comment
* xrez.cbl
* xrez.cbl is generated from D:\asya\acugt.ytl\otel\xrez.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. xrez.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:45:46.
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
    COPY "genel.sel". 
    COPY "genelfis.sel". 
    COPY "isyeri.sel". 
    COPY "kllnc.sel". 
    COPY "banka.sel". 
    COPY "doviz.sel". 
    COPY "rez.sel". 
    COPY "acenta.sel". 
    COPY "takvim.sel". 
    COPY "kodlar02.sel". 
    COPY "ulke.sel". 
    COPY "konum.sel". 
    COPY "fiyat.sel". 
    COPY "cast.sel". 
    COPY "aksiyhrk.sel". 
    COPY "acenhrk.sel". 
    COPY "odalar.sel". 
    COPY "konuk.sel". 
    COPY "errorlog.sel".
    COPY "logindex.sel".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
    COPY "genel.lib". 
    COPY "genelfis.lib". 
    COPY "isyeri.lib". 
    COPY "kllnc.lib". 
    COPY "banka.lib". 
    COPY "doviz.lib". 
*    COPY "rez.lib" replacing =='REZ'== by ==REZ==. 
    COPY "rez.lib". 
    COPY "acenta.lib". 
    COPY "takvim.lib". 
    COPY "kodlar02.lib". 
    COPY "ulke.lib". 
    COPY "konum.lib". 
    COPY "fiyat.lib". 
    COPY "cast.lib". 
    COPY "aksiyhrk.lib". 
    COPY "acenhrk.lib". 
    COPY "odalar.lib". 
    COPY "konuk.lib". 
    COPY "errorlog.lib".
    COPY "logindex.lib".


 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "palette.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "xrez.wrk".
*{Bench}end
 COPY "adres.wrk".
 COPY "xrez.lib".
* COPY "rez.lib"   replacing == FD REZ LABEL RECORD STANDARD. == by == ==
*                            =='REZ'== by ==XREZ==.


 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "xrez.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "decla.cpy".

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
 COPY "xrez.prd".
 COPY "xrez.mnu".
 COPY "xrez.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle yardimmnu-Handle rezara-Handle.