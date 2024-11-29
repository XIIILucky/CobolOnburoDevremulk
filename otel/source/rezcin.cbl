*{Bench}prg-comment
* rezcin.cbl
* rezcin.cbl is generated from D:\asya\acugt.ytl\otel\rezcin.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. rezcin IS INITIAL PROGRAM.
 AUTHOR. salih.
 DATE-WRITTEN. 15 Ocak 2022 Cumartesi 14:21:13.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
         alphabet turkce-alfabe 1 thru 256.   
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "rezcin.tsl". 
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "rezcin.tfd". 
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "rezcin.wrk".
*{Bench}end
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 COPY "adres.wrk". 
 copy "protasi.wrk".
 copy "link-oda.lnk".
 copy "acendft.wrk". 
 copy "myassinir.wrk".
 COPY "yasbul.wrk".
 COPY "xrez.lib".
 COPY "xkonuk.lib".
 COPY "xozluk.lib".
 copy "not.lnk".
 copy "dokcagir.tasi".
 copy "kilit.lnk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "rezcin.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "rezcin.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-rezno, link-fol-no, link-oda-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "rezcin.dcl".
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
 COPY "rezcin.prd".
 COPY "rezcin.mnu".
 COPY "rezcin.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "icyetki.prc".
 copy "share.cpy".
 copy "break.cpy".
 copy "kilit.cpy".
 copy "mysinir.cpy".
 destroy-window-proc.
     destroy Form1-Handle form2-handle screen2-handle.
 COPY "konuk.lg".
 COPY "ozluk.lg".
 COPY "ozluk2.lg".
 COPY "rez.lg".
 COPY "yanrez.lg".
 COPY "odalar.lg".
 copy "cast.lg".
 copy "romhrk.lg".
 copy "exthrk.lg".
