*{Bench}prg-comment
* reopen.cbl
* reopen.cbl is generated from D:\asya\acugt.ytl\otel\reopen.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. reopen.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:44:49.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "reopen.tsl".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "reopen.tfd".
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

*{Bench}copy-working
 COPY "reopen.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "reopen.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "reopen.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING lnk-fol-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "reopen.dcl".
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
 COPY "reopen.prd".
 COPY "reopen.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 copy "konuk.lg".
 copy "ozluk.lg".
