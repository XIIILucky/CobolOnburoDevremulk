*{Bench}prg-comment
* testpoli.cbl
* testpoli.cbl is generated from D:\asya\acugt.ytl\otel\testpoli.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. testpoli.
 AUTHOR. Ramazan.
 DATE-WRITTEN. 18 Mart 2016 Cuma 13:18:24.
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
         COPY "genelfis.sel".
         COPY "genel.sel".
         COPY "dokumer.sel".
        COPY "errorlog.sel".                                                    
        COPY "logindex.sel". 
        copy "rez.sel".
        copy "cast.sel".
        copy "yanrez.sel".
        copy "konuk.sel".
        copy "takvim.sel".
        copy "polisxml.sel".
   SELECT takas ASSIGN RANDOM, takas-DOSYA
           ORGANIZATION INDEXED
           ACCESS DYNAMIC
           RECORD KEY takas-ANAH
           STATUS FS-takas.
       

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         COPY "genelfis.lib".
         COPY "genel.lib".
         COPY "dokumer.lib".
        COPY "errorlog.lib".                                                    
        COPY "logindex.lib".
        copy "cast.lib".
        copy "rez.lib".
        copy "yanrez.lib".
        copy "konuk.lib".
        copy "takvim.lib".
        copy "polisxml.lib".
FD takas LABEL RECORD STANDARD.
 01 takas-REC.
          02 takas-anah.
             03 takas-yil       pic 9(4).
             03 takas-ay        pic 9(2).
             03 takas-gun       pic 9(2).
          02 takas-diger.
             03 takas-cast-kisi-sayisi pic 9(9).
             03 takas-yanrez-kisi-sayisi pic 9(9).
             03 takas-polisxml-kisi-sayisi pic 9(9).
             03 takas-polisxml-kisi-sayisi-cikis-gun pic 9(9).



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
 COPY "testpoli.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "testpoli.scr".
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
 COPY "testpoli.prd".
 COPY "testpoli.evt".
*{Bench}end
 destroy-window-proc.
     destroy Form1-Handle.
 copy "dsyhata.prc".
