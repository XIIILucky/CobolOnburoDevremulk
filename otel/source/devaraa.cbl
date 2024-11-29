*{Bench}prg-comment
* devaraa.cbl
* devaraa.cbl is generated from C:\asya\Acugt.ytl\OTEL DEVREMULK\devaraa.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devaraa IS INITIAL PROGRAM.
 AUTHOR. SaLih-w7.
 DATE-WRITTEN. 17 Aralýk 2012 Pazartesi 10:15:49.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "devaraa.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "devaraa.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "devaraa.wrk".
*{Bench}end
 COPY "adres.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "devaraa.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devaraa.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING rezara-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "devaraa.dcl".

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
 COPY "devaraa.prd".
 COPY "devaraa.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.