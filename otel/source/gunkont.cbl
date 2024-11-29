*{Bench}prg-comment
* gunkont.cbl
* gunkont.cbl is generated from D:\asya\acugt.ytl\otel\gunkont.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. gunkont IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:45:55.
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
 COPY "gunkont.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "gunkont.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "gunkont.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "gunkont.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "gunkont.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING status-cout, status-cin.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "gunkont.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "gunkont.prd".
 COPY "gunkont.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     .
