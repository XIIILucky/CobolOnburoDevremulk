*{Bench}prg-comment
* lost.cbl
* lost.cbl is generated from D:\asya\acugt.ytl\otel\lost.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. lost IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 25 Haziran 2021 Cuma 10:44:13.
 REMARKS. 
     Ümit kardeþ içi araya sýkýþtýrýldý 
     sona yok efendim program iyi olmamýþ orasý düþünülmemiþ
     orda bilmem ne yapýlmýþ
     ANLAMAM
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
      copy "lost.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
      copy "lost.tfd".
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
 COPY "lost.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "lost.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "lost.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-lost.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "lost.dcl".

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
 COPY "lost.prd".
 COPY "lost.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "takip.lg".
 destroy-window-proc.
      destroy form1-handle.
 REPORT-COMPOSER SECTION.
