*{Bench}prg-comment
* prtcagir.cbl
* prtcagir.cbl is generated from D:\asya\acugt.ytl\otel\prtcagir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. prtcagir IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:44:43.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
* CONFIGURATION               SECTION.
* OBJECT-COMPUTER.
*      NITALLICA
*      COLLATING SEQUENCE TURKCE-ALFABE.
 SPECIAL-NAMES.
*      copy "special.cpy".
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "prtler.sel".
 COPY "genel.sel".
 COPY "genelfis.sel".
 COPY "errorlog.sel".
 COPY "logindex.sel".
 copy "prosif.sel".
 copy "dokumer.sel".
        COPY "odalar.sel".                                                                                             

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "prtler.lib".
 COPY "genel.lib".
 COPY "genelfis.lib".
 COPY "errorlog.lib".
 COPY "logindex.lib".
 copy "prosif.lib".
 copy "dokumer.lib".
 COPY "odalar.lib".                                                                                             

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "winprint.def".
 COPY "fonts.def".

*{Bench}copy-working
 COPY "prtcagir.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "prtcagir.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "prtcagir.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-prtler.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "prtcagir.dcl".

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
 COPY "prtcagir.prd".
 COPY "prtcagir.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
      destroy form1-handle.    
