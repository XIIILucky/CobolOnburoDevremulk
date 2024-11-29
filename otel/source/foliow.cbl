*{Bench}prg-comment
* foliow.cbl
* foliow.cbl is generated from D:\asya\acugt.ytl\otel\foliow.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. foliow.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:52:00.
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
 COPY "folio.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "folio.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "fiyhes.wrk".
 COPY "hrkgir.wrk".
 copy "not.lnk" .
 copy "dokcagir.tasi".
*{Bench}copy-working
 COPY "foliow.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "foliow.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "foliow.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-fol-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "folio.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form0-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "foliow.prd".
 COPY "foliow.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "fiyhes.cpy".
 copy "romhrk.lg".
 copy "exthrk.lg".
 destroy-window-proc.
        destroy form1-handle form0-handle.