*{Bench}prg-comment
* earsbil.cbl
* earsbil.cbl is generated from D:\asya\acugt.ytl\otel\earsbil.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. earsbil.
 AUTHOR. muhammed.
 DATE-WRITTEN. 2 Nisan 2018 Pazartesi 20:54:44.
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
          COPY "kodlar02.sel".
          COPY "genel.sel".
          copy "rez.sel".
          copy "romhrk.sel".
          copy "earsbil.sel".
          copy "depkod.sel".
         copy "odalar.sel".
        COPY "errorlog.sel".                                                    
        COPY "genelfis.sel".                                                    
        COPY "logindex.sel". 
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
          COPY "kodlar02.lib".
          COPY "genel.lib".
          copy "rez.lib".
          copy "romhrk.lib".
          copy "earsbil.lib".
          copy "depkod.lib".                
         copy "odalar.lib".
        COPY "errorlog.lib".                                                    
        COPY "genelfis.lib".                                                    
        COPY "logindex.lib". 
*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "earsbil.wrk".
*{Bench}end
 COPY "adres.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "earsbil.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "earsbil.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-earsiv-odeme-bilgileri.
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
 COPY "earsbil.prd".
 COPY "earsbil.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
