*{Bench}prg-comment
* asyatv09.cbl
* asyatv09.cbl is generated from D:\asya\acugt.ytl\otel\asyatv09.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. asyatv09.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:57:29.
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
 COPY "asyatv09.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "asyatv09.tfd".

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
 COPY "asyatv09.wrk".
*{Bench}end
 COPY "hrkgir.wrk".

 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "asyatv09.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "asyatv09.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING linkli.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "asyatv09.dcl".

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
 COPY "asyatv09.prd".
 COPY "asyatv09.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 

