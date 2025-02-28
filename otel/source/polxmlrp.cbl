      *{Bench}prg-comment
      * polxmlrp.cbl
      * polxmlrp.cbl is generated from D:\asya\acugt.ytl\otel\polxmlrp.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. polxmlrp.
       AUTHOR. F�rat.
       DATE-WRITTEN. 4 Kas�m 2020 �ar�amba 15:44:35.
       REMARKS. 
      *{Bench}end

       ENVIRONMENT                 DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
      *{Bench}activex-def
      *{Bench}end
       INPUT-OUTPUT                SECTION.
       FILE-CONTROL.
       copy "polxmlrp.tsl".
      *{Bench}file-control
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
       copy "polxmlrp.tfd".
      *{Bench}file
      *{Bench}end

       WORKING-STORAGE             SECTION.
      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
       COPY "showmsg.def".
      *{Bench}end
       copy "adres.wrk".
       copy "reffiltr.wrk".
      *{Bench}copy-working
       COPY "polxmlrp.wrk".
      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
      *{Bench}end

       SCREEN                      SECTION.
      *{Bench}copy-screen
       COPY "polxmlrp.scr".
      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION.
      *{Bench}end
      *{Bench}declarative
      *{Bench}end
       COPY "polxmlrp.dcl".
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
       COPY "polxmlrp.prd".
       COPY "polxmlrp.evt".
      *{Bench}end
        copy "dsyhata.prc".
        copy "reffilt.cpy".
        destroy-window-proc.
             destroy Screen1-Handle.


