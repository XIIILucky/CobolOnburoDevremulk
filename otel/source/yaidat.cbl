*{Bench}prg-comment
* yaidat.cbl
* yaidat.cbl is generated from D:\asya\acugt.ytl\otel\yaidat.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. yaidat IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:59:32.
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
 COPY "yaidat.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "yaidat.tfd".

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
 COPY "yaidat.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "yaidat.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "yaidat.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING demi-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "yaidat.dcl".

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
 COPY "yaidat.prd".
 COPY "yaidat.evt".
*{Bench}end

 COPY "dsyhata.prc".
 COPY "frame.prc".
*
 destroy-window-proc.
     destroy form1-handle.

