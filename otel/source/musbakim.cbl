*{Bench}prg-comment
* musbakim.cbl
* musbakim.cbl is generated from D:\asya\acugt.ytl\otel\musbakim.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. musbakim.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:53:10.
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
         
          COPY "errorlog.sel".                                                    
          COPY "logindex.sel". 
          COPY "genel.sel".
          COPY "odalar.sel".
          COPY "genelfis.sel".
          copy "dokumer.sel".
          copy "prohrk.sel".
          copy "isyeri.sel".
*
        SELECT prohrk2 ASSIGN RANDOM,prohrk2-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS dynamic
           RECORD KEY IS prohrk2-ANAH
           ALTERNATE RECORD prohrk2-rez-anah  DUPLICATES
           ALTERNATE RECORD prohrk2-ilk = prohrk2-pro-adi, prohrk2-pro-soyadi  DUPLICATES 
           ALTERNATE RECORD prohrk2-duz = prohrk2-duz-tarih, prohrk2-rez-sirket  DUPLICATES 
           STATUS FS-prohrk2.
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         
          COPY "errorlog.lib".                                                    
          COPY "logindex.lib". 
          COPY "genel.lib".
          COPY "odalar.lib".
          COPY "genelfis.lib".
          copy "dokumer.lib".
          copy "prohrk.lib".
          copy "isyeri.lib".
          copy "prohrk2.lib".
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
 COPY "musbakim.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "musbakim.scr".
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
 COPY "musbakim.prd".
 COPY "musbakim.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

