*{Bench}prg-comment
* asyatr2.cbl
* asyatr2.cbl is generated from C:\asya\acugt.kaya\otel\asyatr2.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. asyatr2.
 AUTHOR. Askin_07.
 DATE-WRITTEN. 30 Aðustos 2010 Pazartesi 10:40:29.
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
 COPY "asyatr2.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "asyatr2.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "adrestr2.wrk".
 copy "dosyalartr2.wrk".
*{Bench}copy-working
 COPY "asyatr2.wrk".
*{Bench}end
 COPY "hrkgir.wrk".

 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "asyatr2.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "asyatr2.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING linkli.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "asyatr2.dcl".

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
 COPY "asyatr2.prd".
 COPY "asyatr2.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 

