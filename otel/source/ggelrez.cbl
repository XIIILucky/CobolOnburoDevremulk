*{Bench}prg-comment
* ggelrez.cbl
* ggelrez.cbl is generated from D:\asya\acugt.ytl\otel\ggelrez.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. ggelrez.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:57:46.
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
 COPY "ggelrez.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "ggelrez.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "filtr.wrk".
 copy "mails.wrk".
 copy "reffiltr.wrk".
*{Bench}copy-working
 COPY "ggelrez.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "ggelrez.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "ggelrez.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-gelrez-hepsi.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "ggelrez.dcl".

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
 COPY "ggelrez.prd".
 COPY "ggelrez.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "rezfilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.