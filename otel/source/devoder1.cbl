*{Bench}prg-comment
* devoder1.cbl
* devoder1.cbl is generated from D:\asya\acugt.ytl\otel\devoder1.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devoder1.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:59:43.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
                alphabet turkce-alfabe 1 thru 256.
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
         COPY "genel.sel".
         COPY "genelfis.sel".
         COPY "takvim.sel".
         COPY "errorlog.sel".                                                    
         COPY "logindex.sel".                                                         
         copy "dokumer.sel".
         copy "odalar.sel".
         copy "cek.sel"  of "..\..\muha\lib-sel".
         copy "hesap.sel"  of "..\..\muha\lib-sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         COPY "genel.lib".
         COPY "genelfis.lib".
         COPY "takvim.lib".
         COPY "errorlog.lib".                                                    
         COPY "logindex.lib".                                                         
         copy "odalar.lib".
         copy "dokumer.lib".
         copy "cek.lib"  of "..\..\muha\lib-sel".
         copy "hesap.lib"  of "..\..\muha\lib-sel".
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
 COPY "devoder1.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devoder1.scr".
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
 COPY "devoder1.prd".
 COPY "devoder1.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
