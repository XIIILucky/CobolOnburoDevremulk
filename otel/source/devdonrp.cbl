*{Bench}prg-comment
* devdonrp.cbl
* devdonrp.cbl is generated from D:\asya\acugt.ytl\otel\devdonrp.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devdonrp IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 18 Kasým 2024 Pazartesi 16:42:07.
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
 COPY "devdonrp.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "devdonrp.tfd".
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
 COPY "devdonrp.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "devdonrp.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devdonrp.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-devremulk-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "devairp.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-form2-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "devdonrp.prd".
 COPY "devdonrp.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.


