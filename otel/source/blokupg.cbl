*{Bench}prg-comment
* blokupg.cbl
* blokupg.cbl is generated from D:\asya\acugt.ytl\otel\blokupg.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. blokupg IS INITIAL PROGRAM.
 AUTHOR. ramazan.
 DATE-WRITTEN. 22 Mart 2022 Salý 14:56:13.
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
 COPY "blokupg.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "blokupg.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "blokupg.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "blokupg.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "blokupg.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        l-eski-konum, l-yeni-konum, l-rezno, l-rez-rec, l-yapabilir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "blokupg.dcl".

 Acu-Main-Logic.

*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Screen1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "blokupg.prd".
 COPY "blokupg.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
*     destroy Form1-Handle.
 copy "rez.lg".
 copy "cast.lg".

