*{Bench}prg-comment
* mesajgir.cbl
* mesajgir.cbl is generated from D:\asya\acugt.ytl\otel\mesajgir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. mesajgir IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 24 Temmuz 2024 Çarþamba 15:31:02.
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
 COPY "mesajgir.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "mesajgir.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "mesajgir.wrk".
*{Bench}end
 COPY "adres.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 copy "not.lnk".

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "mesajgir.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "mesajgir.dcl".

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
 COPY "mesajgir.prd".
 COPY "mesajgir.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Screen1-Handle.
 copy "ozluk.lg".



