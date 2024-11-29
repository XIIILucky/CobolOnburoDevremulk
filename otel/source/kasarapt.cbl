*{Bench}prg-comment
* kasarapt.cbl
* kasarapt.cbl is generated from D:\asya\acugt.ytl\otel\kasarapt.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. kasarapt.
 AUTHOR. ramazan.
 DATE-WRITTEN. 13 Ekim 2022 Perþembe 11:31:57.
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
 COPY "kasarapt.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "kasarapt.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "reffiltr.wrk".
 copy "not.lnk".
*{Bench}copy-working
 COPY "kasarapt.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "kasarapt.lks".
*{Bench}end
     copy "forlink.wrk".

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "kasarapt.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-kasa.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "kasarapt.dcl".

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
 COPY "kasarapt.prd".
 COPY "kasarapt.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.