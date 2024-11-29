*{Bench}prg-comment
* rezfilt.cbl
* rezfilt.cbl is generated from D:\asya\acugt.ytl\otel\rezfilt.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. rezfilt IS INITIAL PROGRAM.
 AUTHOR. salih.
 DATE-WRITTEN. 15 Nisan 2022 Cuma 10:49:34.
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
 COPY "rezfilt.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "rezfilt.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "rezfilt.wrk".
*{Bench}end
 COPY "adres.wrk".
 COPY "gunbul.wrk".
 COPY "frame.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "rezfilt.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "rezfilt.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING filtre-tasi.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "rezfilt.dcl".

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
 COPY "rezfilt.prd".
 COPY "rezfilt.evt".
*{Bench}end
 COPY "dsyhata.prc".
 
 
 destroy-window-proc.
      destroy form2-handle form1-handle.
 COPY "rez.lg".



