*{Bench}prg-comment
* onbmahf.cbl
* onbmahf.cbl is generated from D:\asya\acugt.ytl\otel\onbmahf.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. onbmahf IS INITIAL PROGRAM.
 AUTHOR. ramazan.
 DATE-WRITTEN. 06 Haziran 2022 Pazartesi 11:37:21.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 OBJECT-COMPUTER.
      NITALLICA
      COLLATING SEQUENCE TURKCE-ALFABE.
 SPECIAL-NAMES.
      copy "special.cpy" in "../../muha/copylib".
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "onbmahf.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "onbmahf.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 copy "hrkgir.wrk".

*{Bench}copy-working
 COPY "onbmahf.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "onbmahf.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "decla.cpy".

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
 COPY "onbmahf.prd".
 COPY "onbmahf.evt".
*{Bench}end
 COPY "dsyhata.prc".
  copy "muhaente.cpy".
 destroy-window-proc.
      destroy form1-handle.
*************LOG*****************
 


