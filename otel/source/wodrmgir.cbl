*{Bench}prg-comment
* wodrmgir.cbl
* wodrmgir.cbl is generated from D:\asya\acugt.ytl\otel\wodrmgir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. wodrmgir IS INITIAL PROGRAM.
 AUTHOR. ramazan.
 DATE-WRITTEN. 09 Aðustos 2019 Cuma 16:48:01.
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
 COPY "webodadrmgir.tsl". 
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "webodadrmgir.tfd". 
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "wodrmgir.wrk".
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
  copy "sorgu.lnk".
  COPY "xrez.lib"   replacing  leading "XREZ" by "TREZ".
* COPY "rez.lib"   replacing == FD REZ LABEL RECORD STANDARD. == by == ==
*                           =='REZ'== by ==XREZ==.
 

 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
  copy "sorguweb.wrk".
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "wodrmgir.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "webodadrmgir.dcl".
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
 COPY "wodrmgir.prd".
 COPY "wodrmgir.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "fiyhes.cpy".
 COPY "icyetki.prc".
 
 destroy-window-proc.
     destroy  Form1-Handle.
 COPY "rez.lg". 
 COPY "cast.lg". 
 COPY "yanrez.lg".
 copy "odalar.lg".


