*{Bench}prg-comment
* zyrthrk.cbl
* zyrthrk.cbl is generated from C:\asya\acugt.ets\otel_ziyaretci_takipli\zyrthrk.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. zyrthrk IS INITIAL PROGRAM.
 AUTHOR. Kadir.
 DATE-WRITTEN. 15 Mayýs 2012 Salý 17:40:44.
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
 COPY "ziyaret.sel".
 copy "ziyfis.sel".
 COPY "genel.sel".
 COPY "errorlog.sel".
 COPY "genelfis.sel".                                                    
 COPY "logindex.sel".
 copy "konuk.sel".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "ziyaret.lib".
 copy "ziyfis.lib".
 COPY "genel.lib".
 COPY "errorlog.lib".
 COPY "genelfis.lib".                                                    
 COPY "logindex.lib".
 copy "konuk.lib".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "ziyprj.wrk".
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "zyrthrk.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "zyrthrk.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "zyrthrk.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING linkle.
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
 COPY "zyrthrk.prd".
 COPY "zyrthrk.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
      destroy form1-handle.
