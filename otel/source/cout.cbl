*{Bench}prg-comment
* cout.cbl
* cout.cbl is generated from D:\asya\acugt.ytl\otel\cout.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. cout.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 15 Haziran 2021 Salý 10:22:23.
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
 COPY "cout.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "cout.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "not.lnk".
 COPY "xrez.lib".
 copy "link-oda.lnk".
 copy "dokcagir.tasi".
 copy "kilit.lnk".

*{Bench}copy-working
 COPY "cout.wrk".
*{Bench}end
 COPY "hrkgir.Wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "cout.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "cout.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING LINK-ODA, link-fol-no, link-toplu.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "cout.dcl".

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
 COPY "cout.prd".
 COPY "cout.evt".
*{Bench}end
 COPY "dsyhata.prc".
  COPY "share.cpy".
  copy "kilit.cpy".
 
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "konuk.lg".
 COPY "ozluk.lg".
 COPY "rez.lg".
 COPY "odalar.lg".
 copy "cast.lg".
