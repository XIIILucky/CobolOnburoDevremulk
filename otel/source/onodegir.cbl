*{Bench}prg-comment
* onodegir.cbl
* onodegir.cbl is generated from D:\asya\acugt.ytl\otel\onodegir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. onodegir.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:03:43.
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
      copy "genel.sel".
      copy "genelfis.sel".
      copy "logindex.sel".
      copy "kur.sel".
      copy "doviz.sel".
      copy "banka.sel".
      copy "konuk.sel".
      copy "odalar.sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
      copy "genel.lib".
      copy "genelfis.lib".
      copy "logindex.lib".
      copy "kur.lib".
      copy "doviz.lib".
      copy "banka.lib".
      copy "konuk.lib".
            copy "odalar.lib".  
*      copy "odalarcelgcekgir.lib".
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
    copy "dokcagir.tasi".
*{Bench}copy-working
 COPY "onodegir.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "onodegir.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "onodegir.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-onodeme-rez-no.
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
 COPY "onodegir.prd".
 COPY "onodegir.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
  
