*{Bench}prg-comment
* konduz.cbl
* konduz.cbl is generated from D:\asya\acugt.ytl\otel\konduz.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. konduz.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:01:58.
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
 COPY "konuk.sel".
 COPY "ozluk.sel".
 COPY "genel.sel".
 copy "rez.sel".
 copy "cast.sel".
 
 copy "gruplar.sel".
 copy "blok.sel".
 copy "fiyat.sel".
 copy "fiyatana.sel".
 copy "kontrat.sel".
 copy "aksiyon.sel".
 copy "acenhrk.sel".
 copy "takvim.sel".
 copy "odalar.sel".
 copy "konum.sel".
*
        COPY "errorlog.sel".                                                    
        COPY "genelfis.sel".                                                    
        COPY "logindex.sel".  
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
*
 COPY "konuk.lib".
 COPY "ozluk.lib".
 COPY "genel.lib".
 copy "rez.lib".
 copy "cast.lib".
 copy "gruplar.lib".
 copy "blok.lib".
 copy "fiyat.lib".
 copy "fiyatana.lib".
 copy "kontrat.lib".
 copy "aksiyon.lib".
 copy "acenhrk.lib".
 copy "takvim.lib".
 copy "odalar.lib".
 copy "konum.lib".

        COPY "errorlog.lib".                                                    
        COPY "genelfis.lib".                                                    
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
*{Bench}copy-working
 COPY "konduz.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "konduz.scr".
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
 COPY "konduz.prd".
 COPY "konduz.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
