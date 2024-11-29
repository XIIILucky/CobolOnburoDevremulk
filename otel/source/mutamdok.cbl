*{Bench}prg-comment
* mutamdok.cbl
* mutamdok.cbl is generated from D:\asya\acugt.ytl\otel\mutamdok.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. mutamdok IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:58:38.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
 COPY "RichTextBox.def".
 COPY "Acuclass.Def".
    .
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
        copy "mutamdok.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
        copy "mutamdok.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "activex.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "winhelp.def".
 copy "winprint.def".
  copy "mails.wrk".

*{Bench}copy-working
 COPY "mutamdok.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "mutamdok.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "mutamdok.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING mutamdok-link.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "decla.cpy".


 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form1-Routine
*{Bench}end
     destroy richedit.
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "mutamdok.prd".
 COPY "mutamdok.evt".
*{Bench}end
 destroy-window-proc.
     destroy form1-handle.
 copy "dsyhata.prc".
 REPORT-COMPOSER SECTION.
