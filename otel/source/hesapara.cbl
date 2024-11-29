*{Bench}prg-comment
* hesapara.cbl
* hesapara.cbl is generated from D:\asya\acugt.ytl\otel\hesapara.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. hesapara IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:49:12.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 OBJECT-COMPUTER.
       NITALLICA
       COLLATING SEQUENCE TURKCE-ALFABE.
 SPECIAL-NAMES.
      COPY "..\..\muha\copylib\special.cpy".
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "hesapara.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "hesapara.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "hesapara.wrk".
*{Bench}end
 COPY "adres.wrk".
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "hesapara.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "hesapara.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING linkler.
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
 COPY "hesapara.prd".
 COPY "hesapara.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
      destroy form1-handle.


