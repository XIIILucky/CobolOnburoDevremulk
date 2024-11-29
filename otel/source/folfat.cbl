*{Bench}prg-comment
* folfat.cbl
* folfat.cbl is generated from D:\asya\acugt.ytl\otel\folfat.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. folfat.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:41:21.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "folfat.tsl".

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "folfat.tfd".

*{Bench}file
*{Bench}end

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "folfat.cpy".

*{Bench}copy-working
 COPY "folfat.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "folfat.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "folfat.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-fol-no, link-oda.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "folfat.dcl".

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
 COPY "folfat.prd".
 COPY "folfat.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 copy "fatura.lg".

