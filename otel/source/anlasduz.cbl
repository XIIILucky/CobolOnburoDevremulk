*{Bench}prg-comment
* anlasduz.cbl
* anlasduz.cbl is generated from D:\asya\acugt.ytl\otel\anlasduz.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. anlasduz.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:55:49.
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
         COPY "dokumer.sel".
         COPY "genel.sel".
         COPY "kodlar02.sel".
         copy "rez.sel".
         copy "acenta.sel".
         COPY "genelfis.sel".
         COPY "odalar.sel".

        COPY "errorlog.sel".                                                    
        COPY "logindex.sel".
        copy "fiyatana.sel".
        copy "aceanlas.sel".
        copy "konuk.sel".
        
SELECT takas
    ASSIGN       TO RANDOM takas-adres
    ORGANIZATION IS INDEXED
    ACCESS MODE  IS DYNAMIC
    RECORD KEY   IS takas-ANAHTAR
    FILE STATUS  IS FS-takas.

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         COPY "dokumer.lib".
         COPY "genel.lib".
         COPY "kodlar02.lib".
         COPY "genelfis.lib".
         copy "rez.lib".
         copy "acenta.lib".
         copy "fiyatana.lib".
        COPY "errorlog.lib".                                                    
        COPY "odalar.lib".                                                    
        COPY "logindex.lib". 
        copy "aceanlas.lib".
        copy "konuk.lib".
       
FD takas LABEL RECORD STANDARD.
01 takas-REC.
    02 takas-anahtar.
       03 takas-acenta       pic x(04).
       03 takas-anlasma      pic x(02).
    02 takas-rez-adet        pic 9(9).


*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
*{Bench}copy-working
 COPY "anlasduz.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "anlasduz.scr".
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
 COPY "anlasduz.prd".
 COPY "anlasduz.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "fiyatana.lg".

