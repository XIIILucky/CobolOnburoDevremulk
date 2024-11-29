*{Bench}prg-comment
* share.cbl
* share.cbl is generated from D:\asya\acugt.ytl\otel\share.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. share.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:57:27.
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
 COPY "share.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "share.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
*{Bench}copy-working
 COPY "share.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "share.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "share.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        link-share-rez-no, link-gelen-rec, link-gelen-sharenum.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "share.dcl".
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
 COPY "share.prd".
 COPY "share.evt".
*{Bench}end
 COPY "dsyhata.prc".
  copy "share.cpy".
  copy "rez.lg".
 destroy-window-proc.
     destroy Form1-Handle.

