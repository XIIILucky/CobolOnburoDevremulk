*{Bench}prg-comment
* fiyatbul.cbl
* fiyatbul.cbl is generated from D:\asya\acugt.ytl\otel\fiyatbul.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. fiyatbul.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:01:51.
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
         COPY "kodlar02.sel".
         COPY "genelfis.sel".
         copy "konuk.sel".
         COPY "errorlog.sel".                                                    
         COPY "logindex.sel". 
         copy "rez.sel".
         copy "odalar.sel".
         copy "takvim.sel".
         copy "konum.sel".
         copy "fiyatana.sel".
         copy "acenta.sel".
         copy "not.sel".
         copy "doviz.sel".
       SELECT takas ASSIGN RANDOM,takas-DOSYA
           ORGANIZATION INDEXED
           ACCESS DYNAMIC
           RECORD KEY IS takas-anah
           alternate record key takas-acenta-adi duplicates,
           STATUS FS-takas.
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.

         copy "odalar.lib".
         COPY "genel.lib".
         COPY "kodlar02.lib".
         COPY "genelfis.lib".
         copy "konuk.lib".
         COPY "errorlog.lib".                                                    
         COPY "logindex.lib". 
         copy "rez.lib".
         copy "takvim.lib".
         copy "konum.lib".
         copy "fiyatana.lib".
         copy "acenta.lib".
         copy "not.lib".
         copy "doviz.lib".
 fd takas label record standard.
 01 takas-rec.
    02 takas-anah.
        03 takas-acenta   pic x(04).
        03 takas-doviz        pic 99.
    02 takas-ODA-DIZI.
      03 takas-KONUM-DIZI OCCURS 40 TIMES.
         04 takas-ODA-FIYATI PIC 9(12)V99 COMP-3.
    02 takas-acenta-adi   pic x(60).
    

*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
  copy "adres.wrk".
   copy "not.lnk".
*{Bench}copy-working
 COPY "fiyatbul.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "fiyatbul.scr".
*{Bench}end
   
*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
  copy "fiyatbul.dcl".
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
 COPY "fiyatbul.prd".
 COPY "fiyatbul.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
      destroy form1-handle.
