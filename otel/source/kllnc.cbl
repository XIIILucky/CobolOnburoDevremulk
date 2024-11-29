*{Bench}prg-comment
* kllnc.cbl
* kllnc.cbl is generated from D:\asya\acugt.ytl\otel\kllnc.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. kllnc IS INITIAL PROGRAM.
 AUTHOR. ramazan.
 DATE-WRITTEN. 22 Mart 2022 Salý 14:53:19.
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
 COPY "kllnc.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "kllnc.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "frame.wrk".
 COPY "otlortak.lib" replacing 
         leading "otlortak" by "mem-otlortak"
         ==fd otlortak label record standard.==  by == ==.

*{Bench}copy-working
 COPY "kllnc.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "kllnc.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "kllnc.dcl".

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
 COPY "kllnc.prd".
 COPY "kllnc.evt".
*{Bench}end
 COPY "frame.prc".
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-handle.
 COPY "kllnc.lg".
 COPY "prosif.lg".
