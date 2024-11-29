*{Bench}prg-comment
* devdrack.cbl
* devdrack.cbl is generated from D:\asya\acugt.ytl\otel\devdrack.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devdrack IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:59:36.
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
 COPY "dEVoRACK.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "DEVoRACK.tfd".
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
 COPY "devdrack.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "devdrack.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devdrack.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-donem-no, link-yil.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "DEVoRACK.dcl".

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
 COPY "devdrack.prd".
 COPY "devdrack.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.


