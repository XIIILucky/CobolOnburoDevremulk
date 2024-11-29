*{Bench}prg-comment
* pagiris.cbl
* pagiris.cbl is generated from D:\asya\acugt.ytl\otel\pagiris.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. pagiris.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:02:58.
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
 COPY "pagiris.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "pagiris.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "pagiris.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "pagiris.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "pagiris.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        palink-profil-sirket, palink-profil-no, palink-anket-no,
        palink-oda-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "pagiris.dcl".

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
 COPY "pagiris.prd".
 COPY "pagiris.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

