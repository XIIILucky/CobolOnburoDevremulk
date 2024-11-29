*{Bench}prg-comment
* vipistek.cbl
* vipistek.cbl is generated from D:\asya\acugt.ytl\otel\vipistek.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. vipistek.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:04:15.
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
      COPY "genelfis.sel".
      COPY "logindex.sel".
      copy "vipistek.sel".
      copy "kodlar02.sel".
      copy "odalar.sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.      
            copy "genel.lib".  
      COPY "genelfis.lib".
      COPY "logindex.lib".
      copy "vipistek.lib". 
      copy "kodlar02.lib".
      copy "odalar.lib".
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
 COPY "vipistek.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "vipistek.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "vipistek.scr".
*{Bench}end
     
*{Bench}linkpara
 PROCEDURE DIVISION USING link-vipistek-link-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
        copy "vipistek.dcl".
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
 COPY "vipistek.prd".
 COPY "vipistek.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
