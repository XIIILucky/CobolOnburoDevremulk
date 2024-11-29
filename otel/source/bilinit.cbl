*{Bench}prg-comment
* bilinit.cbl
* bilinit.cbl is generated from D:\asya\acugt.ytl\otel\bilinit.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. bilinit.
 AUTHOR. ramazan.
 DATE-WRITTEN. 06 Aralýk 2021 Pazartesi 13:28:16.
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
 COPY "bilinit.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "bilinit.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "bilinit.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "bilinit.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "bilinit.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING lnk-bilbord.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "bilinit.dcl".

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
 COPY "bilinit.prd".
 COPY "bilinit.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
