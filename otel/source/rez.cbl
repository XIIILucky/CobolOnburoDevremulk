*{Bench}prg-comment
* rez.cbl
* rez.cbl is generated from D:\asya\acugt.ytl\otel\rez.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. rez IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 26 Temmuz 2024 Cuma 12:34:59.
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
 COPY "rez.tsl". 
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "rez.tfd". 
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "rez.wrk".
*{Bench}end
  copy "acuserve.wrk".
 copy "uzakadr.wrk".
 copy "protasi.wrk".
 copy "link-oda.lnk".
 copy "kilit.lnk".
 COPY "adres.wrk".
 copy "not.lnk".
 copy "acendft.wrk".
  copy "fiyhes2.wrk".
 copy "dokcagir.tasi".
 copy "opensave.def".  
 copy "myassinir.wrk".
  COPY "yasbul.wrk".
 COPY "xrez.lib".
  COPY "xrez.lib"   replacing  leading "XREZ" by "TREZ".
* COPY "rez.lib"   replacing == FD REZ LABEL RECORD STANDARD. == by == ==
*                           =='REZ'== by ==XREZ==.
 

 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "rez.lks".
*{Bench}end
 
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "rez.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        link-rez-no, link-gelen-rec, link-gelen-sharenum,
        link-rez-grup-rec, link-toplu-adlar, link-degisim,
        link-toplu-xls-adlar, link-rez-xls-grup-rec, link-gelen-xls-rec,
        link-gelen-xls-sharenum, link-xls-rez-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "rez.dcl".
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
 COPY "rez.prd".
 COPY "rez.mnu".
 COPY "rez.evt".
*{Bench}end
 COPY "dsyhata.prc".
* copy "fiyhes.cpy".
 COPY "icyetki.prc".
 copy "share.cpy".
 copy "break.cpy".
 copy "kilit.cpy".
 copy "mysinir.cpy".
 destroy-window-proc.
     destroy  form4-handle  Form2-Handle Form1-Handle screen2-handle
              fsil-handle grform-handle.
 COPY "rez.lg". 
 COPY "cast.lg". 
 COPY "yanrez.lg".
 copy "odalar.lg".
 COPY "konuk.lg".

