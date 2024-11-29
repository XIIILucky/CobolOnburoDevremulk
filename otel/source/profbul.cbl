*{Bench}prg-comment
* profbul.cbl
* profbul.cbl is generated from D:\asya\acugt.ytl\otel\profbul.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. profbul IS INITIAL PROGRAM.
 AUTHOR. salih.
 DATE-WRITTEN. 1 Nisan 2022 Cuma 13:54:28.
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
 COPY "profbul.tsl". 
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "profbul.tfd". 
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "palette.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "profbul.wrk".
*{Bench}end
 COPY "adres.wrk".
 copy "kbsbaglan.wrk".
 copy "uzakadr.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 copy "protasi.wrk".
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "profbul.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "profbul.dcl".
 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form5-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .
*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "profbul.prd".
 COPY "profbul.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "bantkont.cpy".

 destroy-window-proc.
     destroy  FORM5-HANDLE.
  copy "musteri.lg".
  copy "yanrez.lg".

