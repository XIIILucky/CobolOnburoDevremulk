      *{Bench}prg-comment
      * Program1.cbl
      * Program1.cbl is generated from D:\asya\acugt.ytl\otel\Program1.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. Program1.
       AUTHOR. Fýrat.
       DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:57:50.
       REMARKS. 
      *{Bench}end

       ENVIRONMENT                 DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
      *{Bench}activex-def
      *{Bench}end
      *{Bench}decimal-point
      *{Bench}end
       INPUT-OUTPUT                SECTION.
       FILE-CONTROL.
      *{Bench}file-control
      *{Bench}end
           select a assign to random
                  "c:\paylas\irez.txt"
                organization line sequential.
       DATA                        DIVISION.
       FILE                        SECTION.
       fd a label record standard.
       01 a-rec                    pic x(3000).
      *{Bench}file
      *{Bench}end
       WORKING-STORAGE             SECTION.
      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
       COPY "showmsg.def".
      *{Bench}end

      *{Bench}copy-working
       COPY "Program1.wrk".
      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       COPY "Program1.scr".
      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION.
      *{Bench}end
      *{Bench}declarative
      *{Bench}end

       Acu-Main-Logic.
      *{Bench}entry-befprg
      *    Before-Program
      *{Bench}end
           PERFORM Acu-Initial-Routine
      * run main screen
      *{Bench}run-mainscr
           PERFORM Acu-screen1-Routine
      *{Bench}end
           PERFORM Acu-Exit-Rtn
           .

      *{Bench}copy-procedure
       COPY "showmsg.cpy".
       COPY "Program1.prd".
       COPY "Program1.evt".
      *{Bench}end
       REPORT-COMPOSER SECTION.
