*{Bench}prg-comment
* webrap.cbl
* webrap.cbl is generated from D:\Asya\acugt.ytl\otel\webrap.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. webrap.
 AUTHOR. MAMI-W7.
 DATE-WRITTEN. 01 Aralýk 2014 Pazartesi 17:28:17.
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
       COPY "logindex.sel".
       copy "weblog.sel".
       copy "genel.sel".
       copy "dokumer.sel".

       SELECT takas ASSIGN RANDOM, takas-DOSYA
              ORGANIZATION INDEXED
              ACCESS DYNAMIC
              RECORD KEY takas-ANAHtar             
              STATUS FS-takas.

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
      COPY "genelfis.lib".
      COPY "logindex.lib".
      copy "weblog.lib".
      copy "genel.lib".
      copy "dokumer.lib".

FD takas LABEL RECORD STANDARD.
01 takas-REC.
          02 takas-anahtar.
             03 takas-alt-tip          pic x.
             03 takas-alt-anah         pic x(30).
          02 takas-diger.
             03 takas-adet             pic 9(7).


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
 COPY "webrap.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "webrap.scr".
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
 COPY "webrap.prd".
 COPY "webrap.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

