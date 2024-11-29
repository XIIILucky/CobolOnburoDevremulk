*{Bench}prg-comment
* firtbakm.cbl
* firtbakm.cbl is generated from D:\asya\acugt.ytl\otel\firtbakm.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. firtbakm.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 14 Ekim 2024 Pazartesi 15:54:29.
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
 COPY "firtbakm.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "firtbakm.tfd".
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
 COPY "firtbakm.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "firtbakm.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "firtbakm.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-bant-rez-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "banttanm.dcl".

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
 COPY "firtbakm.prd".
 COPY "firtbakm.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
* COPY "kodlar02.lg".
