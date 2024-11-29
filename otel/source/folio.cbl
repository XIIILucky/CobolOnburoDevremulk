*{Bench}prg-comment
* folio.cbl
* folio.cbl is generated from D:\asya\acugt.ytl\otel\folio.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. folio IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 19 Kasým 2024 Salý 13:58:23.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
 copy "special.cpy".
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "folio.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "folio.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "fiyhes.wrk".
  copy "mails.wrk". 
  copy "xrez.lib".
 COPY "hrkgir.wrk".
 copy "not.lnk" .
 copy "dokcagir.tasi".
 copy "protasi.wrk".
 copy "dys.lks".
*{Bench}copy-working
 COPY "folio.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "folio.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "folio.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        link-fol-no, link-rez, link-fat, link-gfat-no, link-fat-tl.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "folio.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form0-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "folio.prd".
 COPY "folio.mnu".
 COPY "folio.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "konuk.lg".
 copy "romhrk.lg".
 copy "exthrk.lg".
 destroy-window-proc.
        destroy form1-handle form0-handle.