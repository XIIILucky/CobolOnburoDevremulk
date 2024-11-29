*{Bench}prg-comment
* kasamah.cbl
* kasamah.cbl is generated from D:\asya\acugt.ytl\otel\kasamah.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. kasamah IS INITIAL PROGRAM.
 AUTHOR. ramazan.
 DATE-WRITTEN. 10 Mayýs 2022 Salý 16:09:56.
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
 COPY "kasamah.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "kasamah.tfd".

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
 COPY "kasamah.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "kasamah.scr".
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
 COPY "kasamah.prd".
 COPY "kasamah.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "muhaente.cpy".
 destroy-window-proc.
      destroy form1-handle.
*************LOG*****************



