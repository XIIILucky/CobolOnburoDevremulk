*{Bench}prg-comment
* odadem.cbl
* odadem.cbl is generated from D:\asya\acugt.ytl\otel\odadem.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. odadem IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 19 Kasým 2024 Salý 13:54:57.
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
 COPY "odadem.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "odadem.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "frame.wrk".
 COPY "hrkgir.wrk".

*{Bench}copy-working
 COPY "odadem.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "odadem.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "odadem.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING demi-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "odadem.dcl".

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
 COPY "odadem.prd".
 COPY "odadem.evt".
*{Bench}end

 COPY "dsyhata.prc".
 COPY "frame.prc".
*
 destroy-window-proc.
     destroy form1-handle.

