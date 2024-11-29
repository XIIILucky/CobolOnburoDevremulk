      *{Bench}prg-comment
      * pxmlkont.cbl
      * pxmlkont.cbl is generated from D:\asya\acugt.ytl\otel\pxmlkont.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. pxmlkont.
       AUTHOR. Fýrat.
       DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:09:30.
       REMARKS. 
      *{Bench}end

       ENVIRONMENT                 DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
      *{Bench}activex-def
      *{Bench}end
       INPUT-OUTPUT                SECTION.
       FILE-CONTROL.
       copy "pxmlkont.tsl".
      *{Bench}file-control
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
       copy "pxmlkont.tfd".
      *{Bench}file
      *{Bench}end

       WORKING-STORAGE             SECTION.
      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
       COPY "fonts.def".
       COPY "showmsg.def".
      *{Bench}end
       copy "adres.wrk".
       copy "reffiltr.wrk".
      *{Bench}copy-working
       COPY "pxmlkont.wrk".
      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
      *{Bench}end

       SCREEN                      SECTION.
      *{Bench}copy-screen
       COPY "pxmlkont.scr".
      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION.
      *{Bench}end
      *{Bench}declarative
      *{Bench}end
       COPY "pxmlkont.dcl".
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
       COPY "pxmlkont.prd".
       COPY "pxmlkont.evt".
      *{Bench}end
        copy "dsyhata.prc".
        copy "reffilt.cpy".
        destroy-window-proc.
             destroy Screen1-Handle.


