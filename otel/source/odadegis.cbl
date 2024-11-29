*{Bench}prg-comment
* odadegis.cbl
* odadegis.cbl is generated from D:\asya\acugt.ytl\otel\odadegis.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. odadegis.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 23 Þubat 2024 Cuma 14:48:39.
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
 COPY "odadegis.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "odadegis.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
*{Bench}copy-working
 COPY "odadegis.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "odadegis.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "odadegis.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING LINK-ODA.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "odadegis.dcl".

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
 COPY "odadegis.prd".
 COPY "odadegis.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "icyetki.prc".
 copy "share.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "odalar.lg".
 COPY "konuk.lg".
 COPY "rez.lg".
 COPY "cast.lg".

