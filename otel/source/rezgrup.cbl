*{Bench}prg-comment
* rezgrup.cbl
* rezgrup.cbl is generated from F:\asya\acugt.kaya\otel\rezgrup.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. rezgrup IS INITIAL PROGRAM.
 AUTHOR. askin.
 DATE-WRITTEN. 30 Haziran 2013 Pazar 23:43:42.
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
 COPY "rezgrup.tsl". 
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "rezgrup.tfd". 
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "palette.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "rezgrup.wrk".
*{Bench}end
 COPY "adres.wrk".
 copy "not.lnk".
 copy "acendft.wrk".
  copy "fiyhes2.wrk".
 copy "dokcagir.tasi".
  copy "link-oda.lnk".
 COPY "xrez.lib".
  COPY "xrez.lib"   replacing  leading "XREZ" by "TREZ".
* COPY "rez.lib"   replacing == FD REZ LABEL RECORD STANDARD. == by == ==
*                           =='REZ'== by ==XREZ==.
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "rezgrup.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "rezgrup.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-rez-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "rezgrup.dcl".
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
 COPY "rezgrup.prd".
 COPY "rezgrup.mnu".
 COPY "rezgrup.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "fiyhes.cpy".
 COPY "icyetki.prc".
 destroy-window-proc.
     destroy   Form1-Handle.
 COPY "rez.lg". 
 COPY "yanrez.lg".
 copy "cast.lg".
