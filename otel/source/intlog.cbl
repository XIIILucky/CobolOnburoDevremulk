*{Bench}prg-comment
* intlog.cbl
* intlog.cbl is generated from D:\asya\acugt.kaya\otel.son\intlog.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. intlog.
 AUTHOR. ramazan.
 DATE-WRITTEN. 22 Aðustos 2014 Cuma 18:29:57.
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
           COPY "genel.sel".
           COPY "errorlog.sel".                                                    
           COPY "genelfis.sel".                                                    
           COPY "logindex.sel".                                                    
           copy "konuk.sel".
           copy "yanrez.sel".
           copy "rez.sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
           COPY "genel.lib".
           COPY "errorlog.lib".                                                    
           COPY "genelfis.lib".                                                    
           COPY "logindex.lib".                                                    
           copy "konuk.lib".
           copy "yanrez.lib".
           copy "rez.lib".
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
 COPY "intlog.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "intlog.scr".
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
 COPY "intlog.prd".
 COPY "intlog.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
