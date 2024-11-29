*{Bench}prg-comment
* devmulkr.cbl
* devmulkr.cbl is generated from D:\asya\acugt.ytl\otel\devmulkr.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devmulkr.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:59:49.
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
         COPY "takvim.sel".
         COPY "errorlog.sel".                                                    
         COPY "logindex.sel".                                                         
         copy "devremulk.sel".
         copy "kllnc.sel".
         copy "musteri.sel".
         copy "odalar.sel".
         copy "konum.sel".
         copy "konuk.sel".
         copy "donem.sel".
         copy "donem2.sel". 
         copy "donhrk.sel".
         copy "gruplar.sel".
         copy "rez.sel".
         copy "dokumer.sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         COPY "genel.lib".
         COPY "genelfis.lib".
         COPY "takvim.lib".
         COPY "errorlog.lib".                                                    
         COPY "logindex.lib".                                                         
         copy "devremulk.lib".
         copy "kllnc.lib".
         copy "musteri.lib".
         copy "odalar.lib".
         copy "konum.lib".
         copy "konuk.lib".
         copy "donem.lib".
         copy "donem2.lib".
         copy "donhrk.lib". 
         copy "gruplar.lib".
         copy "rez.lib".      
         copy "dokumer.lib".
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
 COPY "devmulkr.wrk".
*{Bench}end
 copy "protasi.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "devmulkr.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devmulkr.scr".
*{Bench}end
  
*{Bench}linkpara
 PROCEDURE DIVISION USING link-uye-no, link-odano, link-donem.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "devmulkr.dcl".
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
 COPY "devmulkr.prd".
 COPY "devmulkr.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
