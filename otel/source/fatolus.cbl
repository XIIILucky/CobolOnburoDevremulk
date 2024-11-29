*{Bench}prg-comment
* fatolus.cbl
* fatolus.cbl is generated from D:\asya\acugt.ytl\otel\fatolus.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. fatolus.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 6 Mayýs 2024 Pazartesi 16:18:39.
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
 COPY "fatolus.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "fatolus.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "fatolus.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "fatolus.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "fatolus.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-tarih, link-tarih2.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "fatolus.dcl".

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
 COPY "fatolus.prd".
 COPY "fatolus.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
