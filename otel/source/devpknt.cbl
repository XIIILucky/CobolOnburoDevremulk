*{Bench}prg-comment
* devpknt.cbl
* devpknt.cbl is generated from D:\asya\acugt.ytl\otel\devpknt.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devpknt IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 22 Ocak 2021 Cuma 10:14:18.
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
 COPY "devpknt.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "devpknt.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".

*{Bench}copy-working
 COPY "devpknt.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devpknt.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "devpknt.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-form2-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "devpknt.prd".
 COPY "devpknt.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.



