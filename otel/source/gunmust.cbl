*{Bench}prg-comment
* gunmust.cbl
* gunmust.cbl is generated from D:\asya\acugt.ytl\otel\gunmust.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. gunmust.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 29 Aðustos 2024 Perþembe 12:55:21.
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
 COPY "gunmust.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "gunmust.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "gunmust.wrk".
*{Bench}end
 copy "reffiltr.wrk".
 COPY "adres.wrk".
 01 takas-adres.
   02 filler         pic x(20) value "/asya/ytl/liste/htks".
   02 takas-k        pic x(04).
   02 filler         pic x     value ".".
   02 takas-no       pic x(04).
 77 fs-takas         pic xx.



 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "gunmust.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "gunmust.dcl".

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
 COPY "gunmust.prd".
 COPY "gunmust.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.