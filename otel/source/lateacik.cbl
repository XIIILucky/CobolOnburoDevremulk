*{Bench}prg-comment
* lateacik.cbl
* lateacik.cbl is generated from D:\asya\acugt.ytl\otel\lateacik.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. lateacik.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:09:17.
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
 COPY "lateacik.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "lateacik.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
  copy "opensave.def".
 copy "uzakadr.wrk".
*{Bench}copy-working
 COPY "lateacik.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "lateacik.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "lateacik.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        link-late-rez-no, link-late-odano, link-late-nereden.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "lateacik.dcl".

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
 COPY "lateacik.prd".
 COPY "lateacik.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
* COPY "kodlar02.lg".
