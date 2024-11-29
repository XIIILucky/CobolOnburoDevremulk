*{Bench}prg-comment
* blokara.cbl
* blokara.cbl is generated from D:\asya\acugt.ytl\otel\blokara.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. blokara IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:40:15.
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
 COPY "blokara.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "blokara.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "blokara.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "blokara.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "blokara.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING blok-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "blokara.dcl".

 Acu-Main-Logic.
*     perform Blok-Basla thru blok-basla-exit
*     goback.
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
 COPY "blokara.prd".
 COPY "blokara.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
*     destroy Form1-Handle.
 copy "rez.lg".
 copy "cast.lg".

