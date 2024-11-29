*{Bench}prg-comment
* saatgir.cbl
* saatgir.cbl is generated from D:\asya\acugt.ytl\otel\saatgir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. saatgir.
 AUTHOR. Ramazan.
 DATE-WRITTEN. 30 Kasým 2015 Pazartesi 16:41:43.
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
     copy "genel.sel".
     copy "genelfis.sel".      
     copy "errorlog.sel".
     copy "logindex.sel".
     copy "kllnc.sel".
     copy "takvim.sel".
     copy "gruplar.sel".
     copy "konum.sel".
     copy "uyruk.sel".
     copy "rez.sel".
  
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
      copy "genel.lib".
     copy "genelfis.lib".      
     copy "errorlog.lib".
     copy "logindex.lib".
     copy "kllnc.lib".
     copy "takvim.lib".
     copy "gruplar.lib".
     copy "konum.lib".
     copy "uyruk.lib".
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
 COPY "saatgir.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "saatgir.scr".
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
 COPY "saatgir.prd".
 COPY "saatgir.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle .
 COPY "rez.lg".
