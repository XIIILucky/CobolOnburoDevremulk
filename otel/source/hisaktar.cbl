*{Bench}prg-comment
* hisaktar.cbl
* hisaktar.cbl is generated from D:\asya\acugt.ytl\otel\hisaktar.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. hisaktar.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 8 Mart 2024 Cuma 12:44:30.
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
 COPY "hisaktar.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "hisaktar.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "hisaktar.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "hisaktar.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "hisaktar.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-1.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "hisaktar.dcl".

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
 COPY "hisaktar.prd".
 COPY "hisaktar.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "break.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "calling.lg".

