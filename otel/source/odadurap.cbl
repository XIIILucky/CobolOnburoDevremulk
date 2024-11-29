*{Bench}prg-comment
* odadurap.cbl
* odadurap.cbl is generated from D:\asya\acugt.ytl\otel\odadurap.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. odadurap.
 AUTHOR. muhammed.
 DATE-WRITTEN. 2 Nisan 2018 Pazartesi 20:56:13.
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
 COPY "odadurap.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "odadurap.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "reffiltr.wrk".
*{Bench}copy-working
 COPY "odadurap.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "odadurap.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "odadurap.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-oda-kirlet.
*{Bench}end
*{Bench}declarative
*{Bench}end
*** COPY "odadurap.dcl".

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
 COPY "odadurap.prd".
 COPY "odadurap.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "odakirlet.prc".
 copy "reffilt.cpy".
 copy "odalar.lg".
 destroy-window-proc.
     destroy Form1-Handle.
