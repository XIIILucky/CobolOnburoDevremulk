*{Bench}prg-comment
* kasagir.cbl
* kasagir.cbl is generated from D:\asya\acugt.ytl\otel\kasagir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. kasagir.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:04:18.
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
*  
        COPY "genel.sel". 
        COPY "genelfis.sel".
        COPY "errorlog.sel".                                                    
        COPY "logindex.sel". 
        copy "kasagir.sel".
        copy "takvim.sel".
        copy "doviz.sel".
            copy "odalar.sel".  
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
        COPY "genel.lib". 
        COPY "genelfis.lib".
        COPY "errorlog.lib".                                                    
        COPY "logindex.lib".    
        copy "kasagir.lib".
        copy "takvim.lib".
        copy "doviz.lib".
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
     copy "adres.wrk".
*{Bench}copy-working
 COPY "kasagir.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "kasagir.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "kasagir.dcl".
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
 COPY "kasagir.prd".
 COPY "kasagir.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
