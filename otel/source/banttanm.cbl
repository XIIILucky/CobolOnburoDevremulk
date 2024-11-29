*{Bench}prg-comment
* banttanm.cbl
* banttanm.cbl is generated from D:\asya\acugt.ytl\otel\banttanm.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. banttanm.
 AUTHOR. ramazan.
 DATE-WRITTEN. 28 Mart 2022 Pazartesi 17:52:00.
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
 COPY "banttanm.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "banttanm.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "banttanm.scr".
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
 COPY "banttanm.prd".
 COPY "banttanm.evt".
*{Bench}end
 COPY "dsyhata.prc".
 COPY "bantkont.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
* COPY "kodlar02.lg".
