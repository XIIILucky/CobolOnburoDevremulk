*{Bench}prg-comment
* webrez2.cbl
* webrez2.cbl is generated from D:\asya\acugt.ytl\otel\webrez2.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. webrez2 IS INITIAL PROGRAM.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 23 Mayýs 2023 Salý 12:57:06.
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
 COPY "webrez2.tsl". 
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "webrez2.tfd". 
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "webrez2.wrk".
*{Bench}end
 copy "protasi.wrk".

 copy "link-oda.lnk".
 COPY "adres.wrk".
 copy "not.lnk".
 copy "acendft.wrk".
  copy "fiyhes2.wrk".
 copy "dokcagir.tasi".
 copy "opensave.def".  
 COPY "xrez.lib".

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
 COPY "webrez2.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "webrez2.dcl".
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
 COPY "webrez2.prd".
 COPY "webrez2.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "fiyhes.cpy".
 COPY "icyetki.prc".
 destroy-window-proc.
     destroy  Form1-Handle.
 COPY "rez.lg". 
 COPY "cast.lg". 
 COPY "yanrez.lg".

