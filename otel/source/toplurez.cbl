*{Bench}prg-comment
* toplurez.cbl
* toplurez.cbl is generated from D:\asya\acugt.kaya\otel.son\toplurez.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. toplurez.
 AUTHOR. ramazan.
 DATE-WRITTEN. 2 Mart 2015 Pazartesi 15:50:40.
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
 COPY "genelfis.sel".
 COPY "kllnc.sel".
 COPY "acenta.sel".
 COPY "kodlar02.sel".
 COPY "takvim.sel".
 copy "dokumer.sel".
 COPY "banka.sel".
 COPY "doviz.sel".
 COPY "errorlog.sel".                                                    
 COPY "logindex.sel". 
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 COPY "genel.lib".
 COPY "genelfis.lib".
 COPY "kllnc.lib".
 COPY "acenta.lib".
 COPY "kodlar02.lib".
 COPY "takvim.lib".
 copy "dokumer.lib".
 COPY "banka.lib".
 COPY "doviz.lib".
 COPY "errorlog.lib".                                                    
 COPY "logindex.lib".  

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
    copy "opensave.def".
*{Bench}copy-working
 COPY "toplurez.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "toplurez.scr".
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
 COPY "toplurez.prd".
 COPY "toplurez.evt".
*{Bench}end
  copy "dsyhata.prc". 
 destroy-window-proc.
     destroy Form1-Handle.

