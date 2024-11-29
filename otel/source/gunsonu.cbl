*{Bench}prg-comment
* gunsonu.cbl
* gunsonu.cbl is generated from D:\asya\acugt.ytl\otel\gunsonu.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. gunsonu IS INITIAL PROGRAM.
 AUTHOR. muhammed.
 DATE-WRITTEN. 22 Aðustos 2023 Salý 17:14:26.
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
 COPY "gunsonu.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "gunsonu.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "gunsonu.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "gunsonu.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "gunsonu.dcl".

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
 COPY "gunsonu.prd".
 COPY "gunsonu.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "odakirlet.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "calling.lg".
 copy "odalar.lg".

