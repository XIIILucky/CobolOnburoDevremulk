*{Bench}prg-comment
* butce02.cbl
* butce02.cbl is generated from D:\asya\acugt.ytl\otel\butce02.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. butce02.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:48:30.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "butce02.tsl". 

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "butce02.tfd". 

*{Bench}file
*{Bench}end

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "zbutcegr".
 copy "gunbul.wrk".
  
 copy "fiyhes.wrk".
 
 copy "acendft.wrk".
*{Bench}copy-working
 COPY "butce02.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "butce02.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "butce02.dcl". 

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
 COPY "butce02.prd".
 COPY "butce02.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "fiyhes.cpy".
 copy "gunbul.prc".

 destroy-window-proc.
     destroy Form1-Handle.
 copy "bilbord.lg".

