*{Bench}prg-comment
* gruplog.cbl
* gruplog.cbl is generated from D:\asya\acugt.ytl\otel\gruplog.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. gruplog IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:58:28.
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
 COPY "gruplog.tsl". 
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "gruplog.tfd". 
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
  copy "gruplog.lib" replacing ==FD gruplog LABEL RECORD STANDARD.== BY  == ==
        leading "gruplog" by "xgruplog".

*{Bench}copy-working
 COPY "gruplog.wrk".
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
 COPY "gruplog.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "gruplog.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-gruplog.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "gruplog.dcl".
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
 COPY "gruplog.prd".
 COPY "gruplog.mnu".
 COPY "gruplog.evt".
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

