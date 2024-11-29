*{Bench}prg-comment
* smshavuz.cbl
* smshavuz.cbl is generated from D:\asya\acugt.ytl\otel\smshavuz.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. smshavuz IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:01:26.
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
 COPY "smshavuz.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "smshavuz.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".

*{Bench}copy-working
 COPY "smshavuz.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "smshavuz.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "smshavuz.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        link-devremulk-no, link-sms-nereden, link-tutar.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "smshavuz.dcl".

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
 COPY "smshavuz.prd".
 COPY "smshavuz.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.


