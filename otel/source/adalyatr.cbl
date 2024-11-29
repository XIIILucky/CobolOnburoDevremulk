*{Bench}prg-comment
* adalyatr.cbl
* adalyatr.cbl is generated from D:\asya\acugt.ytl\otel\adalyatr.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. adalyatr.
 AUTHOR. askin.
 DATE-WRITTEN. 02 Ekim 2015 Cuma 14:16:49.
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
 COPY "kodlar02.sel".
 COPY "genelfis.sel".
 copy "konum.sel".
 
 copy "rez.sel".
 copy "cast.sel".
 copy "konuk.sel".
 copy "ozluk.sel".
 copy "ozluk2.sel".
 copy "acenta.sel".
 copy "odalar.sel".
*
        COPY "errorlog.sel".                                                    
        COPY "logindex.sel". 
    copy "takaslar.tsl".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
*
 
 COPY "genel.lib".
 COPY "kodlar02.lib".
 COPY "genelfis.lib".
 copy "konum.lib".

 copy "rez.lib".
 copy "cast.lib".
 copy "konuk.lib".
 copy "ozluk.lib".
 copy "ozluk2.lib".
 copy "acenta.lib".
 copy "odalar.lib".
 copy "takaslar.tfd".
*
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
      copy "takaslar.wrk".
*{Bench}copy-working
 COPY "adalyatr.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "adalyatr.scr".
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
 COPY "adalyatr.prd".
 COPY "adalyatr.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
