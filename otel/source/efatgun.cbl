*{Bench}prg-comment
* efatgun.cbl
* efatgun.cbl is generated from D:\asya\acugt.ytl\otel\efatgun.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. efatgun.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:04:24.
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
           COPY "kodlar02.sel".
           COPY "genel.sel".
            copy "odalar.sel".  
        COPY "errorlog.sel".                                                    
        COPY "genelfis.sel".                                                    
        COPY "logindex.sel".  
        copy "efatci.sel".
         select fidetext assign to random,
              fidetext-dosya-adres,
              organization line sequential
              status fs-fidetext. 
         
         select amontext assign to random,
              amontext-dosya-adres,
              organization line sequential
              status fs-amontext.    
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
           COPY "kodlar02.lib".
           COPY "genel.lib".
            copy "odalar.lib".  
        COPY "errorlog.lib".                                                    
        COPY "genelfis.lib".                                                    
        COPY "logindex.lib".
        copy "efatci.lib".
 fd fidetext label record omitted.
  01 fidetext-rec pic x(20000).    
        
 fd amontext label record omitted.
  01 amontext-rec.
   02 amontext-det pic x(400) occurs 100 times.    
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
 COPY "efatgun.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "efatgun.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "efatgun.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-efatgun-var.
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
 COPY "efatgun.prd".
 COPY "efatgun.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
