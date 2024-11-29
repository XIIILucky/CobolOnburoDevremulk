*{Bench}prg-comment
* bosrack.cbl
* bosrack.cbl is generated from D:\asya\acugt.ytl\otel\bosrack.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. bosrack IS INITIAL PROGRAM.
 AUTHOR. ramazan.
 DATE-WRITTEN. 17 Haziran 2022 Cuma 17:17:14.
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
 COPY "bosrack.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "bosrack.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "reffiltr.wrk".
*{Bench}copy-working
 COPY "bosrack.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "bosrack.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "bosrack.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING gelen-ref.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "bosrack.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form0-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "bosrack.prd".
 COPY "bosrack.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "reffilt.cpy".
 destroy-window-proc.
      destroy form0-handle,form1-handle.


