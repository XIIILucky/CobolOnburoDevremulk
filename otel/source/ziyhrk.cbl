*{Bench}prg-comment
* ziyhrk.cbl
* ziyhrk.cbl is generated from C:\asya\acugt.ets\otel_ziyaretci_takipli\ziyhrk.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. ziyhrk IS INITIAL PROGRAM.
 AUTHOR. Kadir.
 DATE-WRITTEN. 15 Mayýs 2012 Salý 17:54:09.
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
        copy "dokumer.sel".
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
        copy "dokumer.lib".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "ziyprj.wrk".
 COPY "adres.wrk".
*{Bench}copy-working
 COPY "ziyhrk.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "ziyhrk.scr".
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
     PERFORM Acu-Form2-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "ziyhrk.prd".
 COPY "ziyhrk.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
      destroy form2-handle.
