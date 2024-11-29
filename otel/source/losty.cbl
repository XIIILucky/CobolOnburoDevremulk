*{Bench}prg-comment
* losty.cbl
* losty.cbl is generated from D:\asya\acugt.ytl\otel\losty.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. losty IS INITIAL PROGRAM.
 AUTHOR. Salih.
 DATE-WRITTEN. 23 Nisan 2015 Perþembe 18:14:53.
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
      copy "losty.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
      copy "losty.tfd".
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
 COPY "losty.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "losty.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "losty.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-lost-anah.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "losty.dcl".

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
 COPY "losty.prd".
 COPY "losty.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "takip.lg".
 destroy-window-proc.
      destroy form1-handle.
 REPORT-COMPOSER SECTION.
