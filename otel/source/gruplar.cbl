*{Bench}prg-comment
* gruplar.cbl
* gruplar.cbl is generated from D:\asya\acugt.ytl\otel\gruplar.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. gruplar IS INITIAL PROGRAM.
 AUTHOR. ramazan.
 DATE-WRITTEN. 04 Haziran 2022 Cumartesi 13:01:35.
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
 COPY "gruplar.tsl". 
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "gruplar.tfd". 
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
$XFD FILE =gruplar
  copy "gruplar.lib" replacing ==FD gruplar LABEL RECORD STANDARD.== BY  == ==
        leading "gruplar" by "xgruplar".

*{Bench}copy-working
 COPY "gruplar.wrk".
*{Bench}end
  COPY "adres.wrk".
  copy "not.lnk".
  copy "acendft.wrk".
  COPY "dokcagir.tasi".
  copy "fiyhes2.wrk".
  copy "link-oda.lnk".
  COPY "xrez.lib".
  COPY "xrez.lib"   replacing  leading "XREZ" by "TREZ".
* COPY "rez.lib"   replacing == FD REZ LABEL RECORD STANDARD. == by == ==
*                           =='REZ'== by ==XREZ==.
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "gruplar.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "gruplar.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-grup-kodu.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "gruplar.dcl".
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
 COPY "gruplar.prd".
 COPY "gruplar.mnu".
 COPY "gruplar.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "fiyhes.cpy".
 COPY "icyetki.prc".
 copy "share.cpy".
 destroy-window-proc.
     destroy   Form1-Handle.
 COPY "rez.lg". 
 COPY "yanrez.lg".
 copy "cast.lg".

