      *{Bench}prg-comment
      * uyruk.cbl
      * uyruk.cbl is generated from D:\asya\acugt.ytl\otel\uyruk.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. uyruk.
       AUTHOR. Fýrat.
       DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:45:37.
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
       COPY "uyruk.tsl".
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
      *{Bench}end
       COPY "uyruk.tfd".
       WORKING-STORAGE             SECTION.
      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
       COPY "showmsg.def".
      *{Bench}end
       COPY "adres.wrk".

      *{Bench}copy-working
       COPY "uyruk.wrk".
      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
      *{Bench}end

       SCREEN                      SECTION.
      *{Bench}copy-screen
       COPY "uyruk.scr".
      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION.
      *{Bench}end
      *{Bench}declarative
      *{Bench}end
       COPY "uyruk.dcl".
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
       COPY "uyruk.prd".
       COPY "uyruk.evt".
      *{Bench}end
       COPY "dsyhata.prc".
       destroy-window-proc.
           destroy Form1-Handle.
       COPY "uyruk.lg".


