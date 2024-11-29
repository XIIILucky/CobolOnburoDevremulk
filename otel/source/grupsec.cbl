*{Bench}prg-comment
* grupsec.cbl
* grupsec.cbl is generated from D:\asya\acugt.ytl\otel\grupsec.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. grupsec.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:01:32.
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
         COPY "errorlog.sel".                                                    
         COPY "logindex.sel".
         copy "genelfis.sel".
         copy "genel.sel".
         copy "gruplar.sel".
         copy "acenta.sel".
         copy "odalar.sel".
         copy "firma.sel".
         copy "doviz.sel".
         copy "cast.sel".
         copy "rez.sel".
         copy "banka.sel".
         copy "ulke.sel".
         copy "kodlar02.sel".
         copy "onbkodlar10.sel".
         copy "takvim.sel".
         copy "romhrk.sel".
         copy "konum.sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         COPY "errorlog.lib".                                                    
         COPY "logindex.lib".
         copy "genelfis.lib".
         copy "genel.lib".
         copy "gruplar.lib".
         copy "odalar.lib".
         copy "acenta.lib".
         copy "firma.lib".
         copy "doviz.lib".
         copy "cast.lib".
         copy "rez.lib".
         copy "banka.lib".
         copy "ulke.lib".
         copy "kodlar02.lib".
         copy "onbkodlar10.lib".
         copy "takvim.lib".
         copy "romhrk.lib".
         copy "konum.lib".
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
 COPY "dokcagir.tasi".
*{Bench}copy-working
 COPY "grupsec.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "grupsec.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "grupsec.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING secim-toplu-grup.
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
 COPY "grupsec.prd".
 COPY "grupsec.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "cast.lg".
 copy "rez.lg".
  destroy-window-proc.
     destroy   Form1-Handle.
 
