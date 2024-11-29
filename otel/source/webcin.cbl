*{Bench}prg-comment
* webcin.cbl
* webcin.cbl is generated from D:\asya\acugt.ytl\otel\webcin.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. webcin IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:11:38.
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
 COPY "webcin.tsl". 
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "webcin.tfd". 
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "webcin.wrk".
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
 COPY "webcin.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "webcin.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        link-rezno, link-fol-no, link-oda-no, link-hata-durum.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "webcin.dcl".
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
 COPY "webcin.prd".
 COPY "webcin.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "icyetki.prc".
 copy "share.cpy".
 copy "break.cpy".
 copy "kilit.cpy".
 copy "mysinir.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "konuk.lg".
 COPY "ozluk.lg".
 COPY "ozluk2.lg".
 COPY "rez.lg".
 COPY "yanrez.lg".
 COPY "odalar.lg".
 copy "cast.lg".
 copy "romhrk.lg".
 copy "exthrk.lg".
