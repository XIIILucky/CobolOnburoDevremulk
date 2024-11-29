*{Bench}prg-comment
* posting.cbl
* posting.cbl is generated from D:\asya\acugt.ytl\otel\posting.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. posting IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 18 Kasým 2020 Çarþamba 09:25:27.
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
 COPY "posting.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "posting.tfd".
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
 COPY "posting.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "posting.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "posting.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-folio, link-2.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "posting.dcl".
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
 COPY "posting.prd".
 COPY "posting.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "odalar.lg".
 COPY "calling.lg".
 copy "takvim.lg".
 copy "romhrk.lg".
 copy "exthrk.lg".
 copy "cast.lg".
