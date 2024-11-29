*{Bench}prg-comment
* devairp1.cbl
* devairp1.cbl is generated from D:\asya\acugt.ytl\otel\devairp1.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devairp1 IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:11:33.
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
 COPY "devairp1.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "devairp1.tfd".
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
 COPY "devairp1.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "devairp1.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devairp1.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-devremulk-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "devairp1.dcl".

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
 COPY "devairp1.prd".
 COPY "devairp1.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.


