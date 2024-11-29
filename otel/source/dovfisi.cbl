*{Bench}prg-comment
* dovfisi.cbl
* dovfisi.cbl is generated from D:\asya\acugt.ytl\otel\dovfisi.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. dovfisi.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:40:47.
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
 COPY "dovfisi.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "dovfisi.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "dovfisi.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "dovfisi.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "dovfisi.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING dov-fis-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "dovfisi.dcl".

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
 COPY "dovfisi.prd".
 COPY "dovfisi.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.


