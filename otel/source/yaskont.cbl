*{Bench}prg-comment
* yaskont.cbl
* yaskont.cbl is generated from F:\asya\acugt.kaya\otel\yaskont.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. yaskont.
 AUTHOR. askin.
 DATE-WRITTEN. 30 Haziran 2013 Pazar 23:43:39.
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
 COPY "yaskont.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "yaskont.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "yaskont.wrk".
*{Bench}end
 COPY "yasbul.wrk".
 copy "filtr.wrk".
 COPY "adres.wrk".
 01 takas-adres.
   02 filler         pic x(20) value "/asya/ytl/liste/htks".
   02 takas-k        pic x(04).
   02 filler         pic x     value ".".
   02 takas-no       pic x(03).
 77 fs-takas         pic xx.



 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "yaskont.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "yaskont.dcl".

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
 COPY "yaskont.prd".
 COPY "yaskont.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "rezfilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.