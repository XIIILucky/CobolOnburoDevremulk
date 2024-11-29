*{Bench}prg-comment
* masteror.cbl
* masteror.cbl is generated from D:\asya\acugt.ytl\otel\masteror.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. masteror.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 23 Mart 2021 Salý 16:37:54.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 OBJECT-COMPUTER.
      NITALLICA
      COLLATING SEQUENCE TURKCE-ALFABE.
 SPECIAL-NAMES.
      copy "special.cpy" in "../../muha/copylib".
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "masteror.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "masteror.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "gunbul.wrk".
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 copy "filtr.wrk".
 COPY "mmaster.wrk".
*{Bench}copy-working
 COPY "masteror.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "masteror.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "masteror.dcl".

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
 COPY "masteror.prd".
 COPY "masteror.evt".
*{Bench}end
 COPY "dsyhata.prc".
 COPY "gunbul.prc".

 copy "rezfilt.cpy".
 destroy-window-proc.
     destroy  Form1-Handle.

