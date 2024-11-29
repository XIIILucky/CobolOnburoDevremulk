*{Bench}prg-comment
* teksayac.cbl
* teksayac.cbl is generated from C:\asya\acugt.ets\otel\teksayac.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. teksayac.
 AUTHOR. KadirAydýn.
 DATE-WRITTEN. 20 Þubat 2012 Pazartesi 12:46:00.
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
   copy "teksayac.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
   copy "teksayac.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "dokcagir.tasi".

*{Bench}copy-working
 COPY "teksayac.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "teksayac.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "teksayac.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-fol-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "teksayac.dcl".

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
 COPY "teksayac.prd".
 COPY "teksayac.evt".
*{Bench}end
 REPORT-COMPOSER SECTION.
 copy "dsyhata.prc".
 destroy-window-proc.
    destroy form1-handle form2-handle.
