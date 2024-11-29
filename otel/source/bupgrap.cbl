*{Bench}prg-comment
* bupgrap.cbl
* bupgrap.cbl is generated from D:\asya\acugt.ytl\otel\bupgrap.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. bupgrap.
 AUTHOR. ramazan.
 DATE-WRITTEN. 14 Ekim 2021 Perþembe 14:47:15.
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
 COPY "bupgrap.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "bupgrap.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "mails.wrk". 
 copy "not.lnk".
 COPY "xrez.lib".
 copy "link-oda.lnk".
 copy "acendft.wrk".
 copy "uzakadr.wrk".
*{Bench}copy-working
 COPY "bupgrap.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "bupgrap.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "bupgrap.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-gunsonunda-calis.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "decla.cpy".

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
 COPY "bupgrap.prd".
 COPY "bupgrap.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
      destroy form1-handle.
 REPORT-COMPOSER SECTION.
