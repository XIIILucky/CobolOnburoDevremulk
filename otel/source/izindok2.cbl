*{Bench}prg-comment
* izindok2.cbl
* izindok2.cbl is generated from C:\asya\Acugt.ytl\OTEL DEVREMULK\izindok2.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. izindok2 IS INITIAL PROGRAM.
 AUTHOR. SaLih-w7.
 DATE-WRITTEN. 26 Aralýk 2012 Çarþamba 01:39:59.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
       COPY "special.cpy" in "../../muha/copylib".

 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
      COPY "genel.sel".
        COPY "errorlog.sel".
        COPY "genelfis.sel".
        COPY "logindex.sel".
*{Bench}file-control
* print sl
 SELECT PRINTF
        ASSIGN TO PRINT PTR-DEV-NAME
        FILE   STATUS   IS STAT-PRINTF.
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
        COPY "genel.lib".
        COPY "errorlog.lib".
        COPY "genelfis.lib".
        COPY "logindex.lib".
                                        
*{Bench}file
* print fd
 FD PRINTF    LABEL   RECORD  OMITTED.
 01 PRINTF-R.
    05 PRINTF-01              PIC X OCCURS 1024 TIMES.
*{Bench}end

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "acureport.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "winprint.def".
*{Bench}copy-working
 COPY "izindok2.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "izindok2.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "izindok2.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        pers-kod-cagir, pers-cik-deger, pers-don-deger,
        pers-aciklama-deger.
*{Bench}end
*{Bench}declarative
*{Bench}end
* copy "laserdok.dcl".
 

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
 COPY "izindok2.prd".
 COPY "izindok2.evt".
 COPY "izindok2.rpt".
*{Bench}end
 copy "dsyhata.prc".

 destroy-window-proc.
     exit
     .
*{Bench}Report1-masterprintpara
 Acu-RPT-Report1-MASTER-PRINT-LOOP.
*{Bench}end
*
     perform lazer-rapor.
     .


*{Bench}Report2-masterprintpara
*{Bench}end
*
  

