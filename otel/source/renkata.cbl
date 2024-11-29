*{Bench}prg-comment
* renkata.cbl
* renkata.cbl is generated from D:\asya\acugt.ytl\otel\renkata.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. renkata IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:50:08.
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
 COPY "renkata.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "renkata.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "renkata.wrk".
*{Bench}end
 COPY "adres.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "renkata.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "renkata.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-rez.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "renkata.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Screen1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "renkata.prd".
 COPY "renkata.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Screen1-Handle.
 copy "ozluk.lg".



