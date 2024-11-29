*{Bench}prg-comment
* hediyhrk.cbl
* hediyhrk.cbl is generated from D:\asya\acugt.ytl\otel\hediyhrk.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. hediyhrk.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:56:40.
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
 COPY "hediyhrk.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "hediyhrk.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "opensave.def".
*{Bench}copy-working
 COPY "hediyhrk.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "hediyhrk.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "hediyhrk.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-hepsi.
*{Bench}end
 COPY "hediyhrk.dcl".
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
 COPY "hediyhrk.prd".
 COPY "hediyhrk.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
* COPY "kodlar02.lg".

