*{Bench}prg-comment
* secteks.cbl
* secteks.cbl is generated from D:\asya\acugt.ytl\otel\secteks.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. secteks.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 21 Mart 2023 Salý 14:28:22.
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
 COPY "secteks.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "secteks.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "secteks.wrk".
*{Bench}end
 COPY "secteksm.wrk".
 COPY "adres.wrk".
  copy "reffiltr.wrk".
 01 takas-adres.
   02 filler         pic x(20) value "/asya/ytl/liste/hskt".
   02 takas-k        pic x(04).
   02 filler         pic x     value ".".
   02 takas-no       pic x(03).
 77 fs-takas         pic xx.

 01 takalt-adres.
   02 filler         pic x(20) value "/asya/ytl/liste/hgkt".
   02 takalt-k        pic x(04).
   02 filler         pic x     value ".".
   02 takalt-no       pic x(03).
 77 fs-takalt         pic xx.

 01 takalt2-adres.
   02 filler         pic x(20) value "/asya/ytl/liste/hbst".
   02 takalt2-k        pic x(04).
   02 filler         pic x     value ".".
   02 takalt2-no       pic x(03).
 77 fs-takalt2         pic xx.



 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "secteks.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "secteks.dcl".

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
 COPY "secteks.prd".
 COPY "secteks.evt".
*{Bench}end
 COPY "dsyhata.prc".
  copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.