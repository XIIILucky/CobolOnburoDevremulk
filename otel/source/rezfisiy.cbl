*{Bench}prg-comment
* rezfisiy.cbl
* rezfisiy.cbl is generated from D:\asya\acugt.ytl\otel\rezfisiy.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. rezfisiy IS INITIAL PROGRAM.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 17 Mayýs 2024 Cuma 14:50:28.
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
      COPY "rezfisiy.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
      COPY "rezfisiy.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
  copy "mails.wrk".
*{Bench}copy-working
 COPY "rezfisiy.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "rezfisiy.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "rezfisiy.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING rez-cagir, gelen-dil, gelen-yazici.
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
 COPY "rezfisiy.prd".
 COPY "rezfisiy.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
