*{Bench}prg-comment
* kolbanb1.cbl
* kolbanb1.cbl is generated from D:\asya\acugt.ytl\otel\kolbanb1.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. kolbanb1.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:09:27.
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
 COPY "banttanm.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "banttanm.tfd".
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
 COPY "kolbanb1.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "kolbanb1.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "kolbanb1.scr".
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
 COPY "kolbanb1.prd".
 COPY "kolbanb1.mnu".
 COPY "kolbanb1.evt".
*{Bench}end
 COPY "dsyhata.prc".
 COPY "bantkont.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
* COPY "kodlar02.lg".
