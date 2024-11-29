*{Bench}prg-comment
* bavelxml.cbl
* bavelxml.cbl is generated from C:\Asya\acugt.ytl\otel\bavelxml.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. bavelxml.
 AUTHOR. muhammed.
 DATE-WRITTEN. 16 Þubat 2012 Perþembe 08:04:23.
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
 COPY "dokumer.sel".
 COPY "genel.sel".
 COPY "bavelsir.sel".
 copy "acenta.sel".
 COPY "genelfis.sel".
 copy "konum.sel".
 copy "odalar.sel".
*
        COPY "errorlog.sel".                                                    
        COPY "logindex.sel".
         SELECT xml-DOSYA ASSIGN TO random ,
                xml-DOSYA-adres
                ORGANIZATION line sequential
                status  fs-xml-dosya .
                                                    
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "odalar.lib".
 COPY "dokumer.lib".
 COPY "genel.lib".
 copy "acenta.lib".
 COPY "bavelsir.lib".
 COPY "genelfis.lib".
 copy "konum.lib".
*
        COPY "errorlog.lib".                                                    
        COPY "logindex.lib". 
 FD xml-DOSYA LABEL RECORD STANDARD.
  01 xml-DOSYA-REC PIC X(300).
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
 COPY "bavelxml.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "bavelxml.scr".
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
 COPY "bavelxml.prd".
 COPY "bavelxml.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
