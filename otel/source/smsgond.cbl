*{Bench}prg-comment
* smsgond.cbl
* smsgond.cbl is generated from D:\asya\acugt.ytl\otel\smsgond.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. smsgond IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:01:24.
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
 COPY "smsgond.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "smsgond.tfd".
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
 COPY "smsgond.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "smsgond.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "smsgond.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        link-devremulk-no, link-sms-nereden, link-tutar, link-tarih.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "smsgond.dcl".

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
 COPY "smsgond.prd".
 COPY "smsgond.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.


