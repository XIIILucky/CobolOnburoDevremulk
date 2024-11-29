*{Bench}prg-comment
* webrez.cbl
* webrez.cbl is generated from D:\asya\acugt.ytl\otel\webrez.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. webrez IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 13 Aðustos 2024 Salý 15:21:37.
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
 COPY "webrez.tsl". 
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "webrez.tfd". 
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "webrez.wrk".
*{Bench}end
 copy "protasi.wrk".
 COPY "yasbul.wrk".
 copy "link-oda.lnk".
 COPY "adres.wrk".
 copy "not.lnk".
 copy "acendft.wrk".
  copy "fiyhes2.wrk".
 copy "dokcagir.tasi".
 copy "opensave.def".  
 COPY "xrez.lib".
 copy "myassinir.wrk".
  copy "apo.lnk".
  COPY "xrez.lib"   replacing  leading "XREZ" by "TREZ".
* COPY "rez.lib"   replacing == FD REZ LABEL RECORD STANDARD. == by == ==
*                           =='REZ'== by ==XREZ==.
 

 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
  copy "apogiden.wrk".
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "webrez.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "webrez.dcl".
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
 COPY "webrez.prd".
 COPY "webrez.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "fiyhes.cpy".
 COPY "icyetki.prc".
 copy "mysinir.cpy".
 destroy-window-proc.
     destroy  Form1-Handle.
 COPY "rez.lg". 
 COPY "cast.lg". 
 COPY "yanrez.lg".

