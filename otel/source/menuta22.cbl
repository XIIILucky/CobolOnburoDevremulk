*{Bench}prg-comment
* menuta22.cbl
* menuta22.cbl is generated from D:\asya\acugt.ytl\otel\menuta22.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. menuta22.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 4 Þubat 2016 Perþembe 12:39:04.
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
 COPY "menuta22.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "menuta22.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".

*{Bench}copy-working
 COPY "menuta22.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "menuta22.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "menuta22.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING gec-gecme.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "menuta22.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form5-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "menuta22.prd".
 COPY "menuta22.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form5-Handle.
* COPY "kodlar02.lg".
