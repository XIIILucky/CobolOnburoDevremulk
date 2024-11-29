*{Bench}prg-comment
* onktumi.cbl
* onktumi.cbl is generated from D:\asya\acugt.ytl\otel\onktumi.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. onktumi.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:46:01.
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
 COPY "onktumi.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "onktumi.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "onktumi.wrk".
*{Bench}end
 COPY "adres.wrk".
 COPY "hrkgir.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "onktumi.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "onktumi.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING linkli.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "onktumi.dcl".
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
 COPY "onktumi.prd".
 COPY "onktumi.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 copy "romhrk.lg".
 copy "exthrk.lg".
