*{Bench}prg-comment
* parapor.cbl
* parapor.cbl is generated from D:\asya\acugt.ytl\otel\parapor.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. parapor.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:03:08.
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
 COPY "parapor.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "parapor.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "protasi.wrk".

*{Bench}copy-working
 COPY "parapor.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "parapor.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "parapor.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-musteri-anket.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "parapor.dcl".

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
 COPY "parapor.prd".
 COPY "parapor.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

