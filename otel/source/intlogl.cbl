*{Bench}prg-comment
* intlogl.cbl
* intlogl.cbl is generated from D:\asya\acugt.ytl\otel\intlogl.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. intlogl.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:04:45.
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
           copy "polisxml.sel".
            copy "odalar.sel".  
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
           copy "polisxml.lib" .
            copy "odalar.lib".  
*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
     COPY "adres.wrk".
*{Bench}copy-working
 COPY "intlogl.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "intlogl.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "intlogl.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING LIK-INT-FOLIO.
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
 COPY "intlogl.prd".
 COPY "intlogl.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
