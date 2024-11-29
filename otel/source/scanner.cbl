*{Bench}prg-comment
* scanner.cbl
* scanner.cbl is generated from D:\asya\acugt.ytl\otel\scanner.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. scanner.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:54:19.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
 COPY "Twain.def".
 COPY "Acuclass.Def".
     .
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
           COPY "genel.sel".
           COPY "odalar.sel".
           COPY "genelfis.sel".
           COPY "errorlog.sel".                                                    
           COPY "logindex.sel".                                                    
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
           COPY "genel.lib".
           COPY "odalar.lib".
           COPY "genelfis.lib".
           COPY "errorlog.lib".                                                    
           COPY "logindex.lib".                                                    

*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "activex.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
*{Bench}copy-working
 COPY "scanner.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "scanner.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "scanner.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING tarayici-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "scanner.dcl".
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
 COPY "scanner.prd".
 COPY "scanner.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
