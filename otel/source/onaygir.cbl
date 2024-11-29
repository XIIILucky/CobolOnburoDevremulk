*{Bench}prg-comment
* onaygir.cbl
* onaygir.cbl is generated from D:\asya\acugt.ytl\otel\onaygir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. onaygir IS INITIAL PROGRAM.
 AUTHOR. muhammed.
 DATE-WRITTEN. 2 Nisan 2018 Pazartesi 20:56:23.
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
 COPY "onaygir.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "onaygir.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".


*{Bench}copy-working
 COPY "onaygir.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "onaygir.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "onaygir.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-1, link-2.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "onaygir.dcl".

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
 COPY "onaygir.prd".
 COPY "onaygir.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.


