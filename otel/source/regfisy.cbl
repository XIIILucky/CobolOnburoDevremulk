*{Bench}prg-comment
* regfisy.cbl
* regfisy.cbl is generated from D:\asya\acugt.ytl\otel\regfisy.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. regfisy IS INITIAL PROGRAM.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 21 Mayýs 2024 Salý 15:40:49.
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
      COPY "regfisy.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
      COPY "regfisy.tfd".

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
 COPY "regfisy.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "regfisy.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "regfisy.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING rez-cagir, gelen-dil.
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
 COPY "regfisy.prd".
 COPY "regfisy.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
