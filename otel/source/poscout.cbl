*{Bench}prg-comment
* poscout.cbl
* poscout.cbl is generated from D:\asya\acugt.ytl\otel\poscout.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. poscout IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:57:03.
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
 COPY "poscout.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "poscout.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "rout.wrk".
 COPY "hrkgir.wrk".
*{Bench}copy-working
 COPY "poscout.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "poscout.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "poscout.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-data.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "poscout.dcl".
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
 COPY "poscout.prd".
 COPY "poscout.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "odalar.lg".
 COPY "calling.lg".
 copy "romhrk.lg".
 copy "exthrk.lg".
