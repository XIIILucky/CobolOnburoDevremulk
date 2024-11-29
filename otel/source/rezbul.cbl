*{Bench}prg-comment
* rezbul.cbl
* rezbul.cbl is generated from D:\asya\acugt.ytl\otel\rezbul.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. rezbul IS INITIAL PROGRAM.
 AUTHOR. salih.
 DATE-WRITTEN. 19 Mart 2022 Cumartesi 13:49:21.
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
 COPY "rezbul.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "rezbul.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "rezbul.wrk".
*{Bench}end
 COPY "adres.wrk".
 copy "reffiltr.wrk".
 copy "link-oda.lnk".
 COPY "gunbul.wrk".
 COPY "frame.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "rezbul.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "rezbul.dcl".

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
 COPY "rezbul.prd".
 COPY "rezbul.evt".
*{Bench}end
 COPY "dsyhata.prc".
 COPY "gunbul.prc".
 COPY "frame.prc".
 copy "reffilt.cpy".
 destroy-window-proc.
      destroy form2-handle form1-handle.
 COPY "rez.lg".
 COPY "cast.lg".



