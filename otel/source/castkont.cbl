*{Bench}prg-comment
* castkont.cbl
* castkont.cbl is generated from D:\asya\acugt.ytl\otel\castkont.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. castkont IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 24 Aðustos 2021 Salý 16:52:15.
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
 COPY "castkont.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "castkont.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
  copy "link-oda.lnk".
 COPY "xrez.lib".
 COPY "xkonuk.lib".
 COPY "xozluk.lib".
         
 copy "modahes.wrk".
 copy "aksiler.wrk". 
 copy "frame.wrk".

*{Bench}copy-working
 COPY "castkont.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "castkont.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "castkont.dcl".

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
 COPY "castkont.prd".
 COPY "castkont.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "modahes.cpy".
 copy "frame.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 copy "konuk.lg".
 
 copy "cast.lg".
 