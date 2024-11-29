*{Bench}prg-comment
* aksiyon.cbl
* aksiyon.cbl is generated from D:\asya\acugt.ytl\otel\aksiyon.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. aksiyon.
 AUTHOR. Salih.
 DATE-WRITTEN. 23 A�ustos 2022 Sal� 10:33:54.
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
 COPY "aksiyon.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "aksiyon.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "fonts.def".

*{Bench}copy-working
 COPY "aksiyon.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "aksiyon.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "aksiyon.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING gelen-acenta, lAKSIYHRK-REC.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "aksiyon.dcl".

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
 COPY "aksiyon.prd".
 COPY "aksiyon.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "aksiyon.lg".


