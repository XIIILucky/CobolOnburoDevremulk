*{Bench}prg-comment
* muhakont.cbl
* muhakont.cbl is generated from D:\asya\acugt.ytl\otel\muhakont.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. muhakont.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:55:26.
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
 COPY "muhakont.tsl".
 DATA                        DIVISION. 
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "muhakont.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "muhakont.wrk".
*{Bench}end
 copy "adres.wrk".
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 copy "filtr.wrk".
 copy "reffiltr.wrk".
 copy "hrkgir.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "muhakont.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "muhakont.dcl".

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
 COPY "muhakont.prd".
 COPY "muhakont.evt".
*{Bench}end
 copy "rezfilt.cpy".
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
