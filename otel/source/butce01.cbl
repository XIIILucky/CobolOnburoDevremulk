*{Bench}prg-comment
* butce01.cbl
* butce01.cbl is generated from D:\asya\acugt.ytl\otel\butce01.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. butce01 IS INITIAL PROGRAM.
 AUTHOR. muhammed.
 DATE-WRITTEN. 4 Ekim 2023 Çarþamba 10:26:15.
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
 COPY "butce01.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "butce01.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "gunbul.wrk".
 copy "filtr.wrk".  
 copy "fiyhes.wrk".
 COPY "butce01m.wrk". 
 copy "reffiltr.wrk".          
*{Bench}copy-working
 COPY "butce01.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "butce01.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "butce01.dcl".

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
 COPY "butce01.prd".
 COPY "butce01.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "fiyhes.cpy".
 copy "gunbul.prc".
 copy "reffilt.cpy".
 copy "rezfilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.