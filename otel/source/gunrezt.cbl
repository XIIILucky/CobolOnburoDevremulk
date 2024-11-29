*{Bench}prg-comment
* gunrezt.cbl
* gunrezt.cbl is generated from D:\asya\acugt.ytl\otel\gunrezt.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. gunrezt.
 AUTHOR. ramazan.
 DATE-WRITTEN. 02 Mayýs 2022 Pazartesi 22:37:33.
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
 COPY "gunrezt.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "gunrezT.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "filtr.wrk".
 copy "reffiltr.wrk".
*{Bench}copy-working
 COPY "gunrezt.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "gunrezt.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "gunrezt.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING gel-link, gid-link, gel-refler.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "gunrezt.dcl".

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
 COPY "gunrezt.prd".
 COPY "gunrezt.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
