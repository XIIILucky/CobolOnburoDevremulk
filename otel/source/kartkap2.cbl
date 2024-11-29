*{Bench}prg-comment
* kartkap2.cbl
* kartkap2.cbl is generated from D:\asya\acugt.ytl\otel\kartkap2.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. kartkap2.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:02:48.
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
         COPY "kllnc.sel". 
         copy "odalar.sel".
         COPY "konuk.sel". 

        copy "rez.sel".
        COPY "errorlog.sel".                                                    
        COPY "logindex.sel".
        copy "takvim.sel".

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
*

         COPY "genel.lib". 
         COPY "genelfis.lib". 
         COPY "kllnc.lib". 
         copy "odalar.lib".
         COPY "konuk.lib". 
         copy "rez.lib".
        
        COPY "errorlog.lib".                                                    
        COPY "logindex.lib".
        copy "takvim.lib".
 

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "link-oda.lnk".
 COPY "dokcagir.tasi".
 copy "acendft.wrk".
 copy "frame.wrk".
 copy "fiyhes2.wrk".
 COPY "yasbul.wrk".
 copy "not.lnk".
 COPY "xrez.lib".
 COPY "xrez.lib"   replacing  leading "XREZ" by "TREZ".

*{Bench}copy-working
 COPY "kartkap2.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "kartkap2.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "kartkap2.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-kapi2-rez-no, link-kapi2-odano.
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
 COPY "kartkap2.prd".
 COPY "kartkap2.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "frame.prc".
 destroy-window-proc.
     destroy Form1-Handle.


