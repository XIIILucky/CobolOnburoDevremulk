*{Bench}prg-comment
* dys.cbl
* dys.cbl is generated from D:\asya\acugt.ytl\otel\dys.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. dys IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:11:12.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 OBJECT-COMPUTER.
      NITALLICA
      COLLATING SEQUENCE TURKCE-ALFABE.
 SPECIAL-NAMES.

 COPY "Acuclass.Def".
 copy "special.cpy".

 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
      copy "dys.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
      copy "dys.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "activex.def".
 copy "adres.wrk".
 copy "winhelp.def".
 copy "winprint.def".
 copy "opensave.def".
**** copy "efinanshtmlview.lks".
 copy "kllnc.lib" replacing ==FD KLLNC LABEL RECORD STANDARD.== by == ==
                  leading "k-" by "xk-"
                  leading "kllnc-rec" by "xkllnc-rec".
 copy "..\..\muha.922\copylib\filecopy.lks".

*{Bench}copy-working
 COPY "dys.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "dys.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "dys.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-dys.
*{Bench}end
*{Bench}declarative
*{Bench}end
  copy "dys.dcl".

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
 COPY "dys.prd".
 COPY "dys.evt".
*{Bench}end
 destroy-window-proc.
     destroy form1-handle.
 copy "dsyhata.prc".
 copy "dys.lg".

 REPORT-COMPOSER SECTION.
