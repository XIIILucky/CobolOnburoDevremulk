      *{Bench}prg-comment
      * polisxml.cbl
      * polisxml.cbl is generated from D:\asya\acugt.ytl\otel\polisxml.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. polisxml.
       AUTHOR. Fýrat.
       DATE-WRITTEN. 2 Nisan 2021 Cuma 12:04:04.
       REMARKS. 
      *{Bench}end

       ENVIRONMENT                 DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
      *{Bench}activex-def
      *{Bench}end
       INPUT-OUTPUT                SECTION.
       FILE-CONTROL.
       copy "polisxml.tsl".
      *{Bench}file-control
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
       copy "polisxml.tfd".
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

      *{Bench}copy-working
       COPY "polisxml.wrk".
      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       COPY "polisxml.lks".
      *{Bench}end

       SCREEN                      SECTION.
      *{Bench}copy-screen
       COPY "polisxml.scr".
      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING XML-CAGIR.
      *{Bench}end
      *{Bench}declarative
      *{Bench}end
       COPY "polisxml.dcl".
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
       COPY "polisxml.prd".
       COPY "polisxml.evt".
      *{Bench}end
        copy "dsyhata.prc".
        destroy-window-proc.
             destroy Screen1-Handle.
        copy "polisxml.lg".


