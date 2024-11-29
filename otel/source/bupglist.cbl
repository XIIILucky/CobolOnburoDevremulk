*{Bench}prg-comment
* bupglist.cbl
* bupglist.cbl is generated from D:\asya\acugt.ytl\otel\bupglist.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. bupglist.
 AUTHOR. ramazan.
 DATE-WRITTEN. 05 Mayýs 2017 Cuma 15:45:14.
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
         copy "blokupg.sel".
         copy "genelfis.sel".
         copy "logindex.sel".
         copy "genel.sel" .
         copy "rez.sel".
         copy "konum.sel".
         copy "kllnc.sel".
         copy "odalar.sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         copy "blokupg.lib".
         copy "genelfis.lib".
         copy "logindex.lib".
         copy "genel.lib".
         copy "rez.lib".
         copy "konum.lib".
         copy "kllnc.lib".
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
 COPY "bupglist.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "bupglist.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "bupglist.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-upg-tum.
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
 COPY "bupglist.prd".
 COPY "bupglist.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
