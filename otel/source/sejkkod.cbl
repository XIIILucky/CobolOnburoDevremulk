*{Bench}prg-comment
* sejkkod.cbl
* sejkkod.cbl is generated from D:\asya\acugt.ytl\otel\sejkkod.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. sejkkod.
 AUTHOR. ramazan.
 DATE-WRITTEN. 01 Mayýs 2017 Pazartesi 13:36:28.
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
         COPY "dokumer.sel".
         COPY "errorlog.sel".                                                    
         COPY "logindex.sel".
         copy "sejkkod.sel".                                           
         copy "odalar.sel".                                           
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
*
         COPY "genel.lib".
         COPY "genelfis.lib".
         COPY "dokumer.lib".
         COPY "errorlog.lib".                                                    
         COPY "logindex.lib".
         copy "sejkkod.lib".                                           
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
 COPY "sejkkod.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "sejkkod.scr".
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
 COPY "sejkkod.prd".
 COPY "sejkkod.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

