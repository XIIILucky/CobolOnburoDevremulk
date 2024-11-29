*{Bench}prg-comment
* sirrap02.cbl
* sirrap02.cbl is generated from D:\asya\acugt.ytl\otel\sirrap02.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. sirrap02.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:11:02.
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
 COPY "sirrap02.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "sirrap02.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "filtr.wrk".
 copy "reffiltr.wrk".



  copy "fiyhes.wrk".
 copy "gunbul.wrk".                                              
 COPY "sirrap02.lks" replacing leading "lnk" by "wrk".

 COPY "xrez.lib". 

 copy "modahes.wrk".
 copy "aksiler.wrk".
 copy "link-oda.lnk".
*{Bench}copy-working
 COPY "sirrap02.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "sirrap02.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "sirrap02.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING lnk-rap.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "sirrap02.dcl".

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
 COPY "sirrap02.prd".
 COPY "sirrap02.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
  copy "fiyhes.cpy".
 copy "gunbul.prc".
 copy "grezfilt.cpy".
 copy "grekle.cpy".
 copy "modahes.cpy".
  copy "cast.lg".
 destroy-window-proc.
     destroy Form1-Handle.
