*{Bench}prg-comment
* konukara.cbl
* konukara.cbl is generated from D:\asya\acugt.ytl\otel\konukara.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. konukara IS INITIAL PROGRAM.
 AUTHOR. F�rat.
 DATE-WRITTEN. 4 Kas�m 2020 �ar�amba 15:43:06.
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
 COPY "konukara.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "konukara.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "konukara.wrk".
*{Bench}end
 COPY "adres.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "konukara.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "konukara.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING konuk-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "konukara.dcl".

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
 COPY "konukara.prd".
 COPY "konukara.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.