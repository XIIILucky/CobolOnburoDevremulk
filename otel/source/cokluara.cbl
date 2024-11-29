*{Bench}prg-comment
* cokluara.cbl
* cokluara.cbl is generated from D:\asya\acugt.ytl\otel\cokluara.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. cokluara IS INITIAL PROGRAM.
 AUTHOR. Salih.
 DATE-WRITTEN. 8 Aðustos 2022 Pazartesi 15:32:35.
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
 COPY "cokluara.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "cokluara.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".

*{Bench}copy-working
 COPY "cokluara.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "cokluara.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "cokluara.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-arama-turu, link-arananlar-donus.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "cokluara.dcl".

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
 COPY "cokluara.prd".
 COPY "cokluara.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

