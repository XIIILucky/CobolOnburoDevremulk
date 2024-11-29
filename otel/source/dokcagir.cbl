*{Bench}prg-comment
* dokcagir.cbl
* dokcagir.cbl is generated from D:\asya\acugt.ytl\otel\dokcagir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. dokcagir IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 26 Aðustos 2021 Perþembe 10:50:33.
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
      COPY "dokcagir.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
      COPY "dokcagir.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "dokcagir.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "dokcagir.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "dokcagir.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING dokcagir-tasi.
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
     PERFORM Acu-Screen1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "dokcagir.prd".
 COPY "dokcagir.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
      destroy screen1-handle.
 REPORT-COMPOSER SECTION.
