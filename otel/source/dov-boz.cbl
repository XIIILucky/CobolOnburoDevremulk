*{Bench}prg-comment
* dov-boz.cbl
* dov-boz.cbl is generated from D:\asya\acugt.ytl\otel\dov-boz.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. dov-boz.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 7 Temmuz 2021 Çarþamba 09:57:00.
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
 COPY "dov-boz.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "dov-boz.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 COPY "hrkgir.Wrk".

*{Bench}copy-working
 COPY "dov-boz.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "dov-boz.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "dov-boz.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        link-fol-no, link-tl, link-dv, link-ban, link-dov, link-cin.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "dov-boz.dcl".

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
 COPY "dov-boz.prd".
 COPY "dov-boz.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "romhrk.lg".
 copy "exthrk.lg".
 destroy-window-proc.
     destroy Form1-Handle.