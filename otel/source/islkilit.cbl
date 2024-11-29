*{Bench}prg-comment
* islkilit.cbl
* islkilit.cbl is generated from D:\asya\acugt.ytl\otel\islkilit.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. islkilit IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:05:10.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 OBJECT-COMPUTER.
      NITALLICA
      COLLATING SEQUENCE TURKCE-ALFABE.
 SPECIAL-NAMES.
      copy "special.cpy" of "..\..\muha\copylib".
*{Bench}activex-def
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
     copy "islkilit.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
     copy "islkilit.tfd".
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
 COPY "islkilit.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "islkilit.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "islkilit.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-islkilit.
*{Bench}end
*{Bench}declarative
*{Bench}end
 declaratives.
 file-error section.
      use after standard error procedure on islkilit cakisma.
 file-para.
     exit.
 end declaratives.

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
 COPY "islkilit.prd".
 COPY "islkilit.evt".
*{Bench}end
*
 copy "dsyhata.prc".
 destroy-window-proc.
    destroy form1-handle.
 REPORT-COMPOSER SECTION.
