*{Bench}prg-comment
* ozlukgir.cbl
* ozlukgir.cbl is generated from D:\asya\acugt.ytl\otel\ozlukgir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. ozlukgir IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:46:38.
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
 COPY "ozlukgir.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "ozlukgir.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "ozlukgir.wrk".
*{Bench}end
 COPY "adres.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "ozlukgir.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "ozlukgir.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "ozlukgir.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Screen1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "ozlukgir.prd".
 COPY "ozlukgir.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Screen1-Handle.
 copy "ozluk.lg".
 copy "konuk.lg".
 copy "rez.lg".



