*{Bench}prg-comment
* rezweb.cbl
* rezweb.cbl is generated from D:\asya\acugt.ytl\otel\rezweb.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. rezweb IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 29 Aðustos 2024 Perþembe 10:46:53.
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
 COPY "rezweb.wrk".
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
*{Bench}end
   77 islem-tipi pic x(10).
   77 islem-tipi2 pic x(10).
   COPY "xrez.lib" in "..\..\OTEL\lib-sel"  replacing  leading "XREZ" by "GelenREZ".
   01 donus.
     03 filler occurs 1000 times.      
      05 donus-tipi     pic x(10).
      05 donus-alttipi  pic x(10).
      05 donus-veri     pic x(40).
      05 donus-veri2    pic x(40).
   
 01 kolayrezdys-bilgi.
     02 kolayrezdys-bilgi-rezno      PIC  x(08).
     02 kolayrezdys-bilgi-filename   PIC  x(300).
     02 kolayrezdys-bilgi-ok         PIC  x.

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "rezweb.scr".
*{Bench}end


PROCEDURE DIVISION using islem-tipi islem-tipi2 gelenrez-rec donus.

     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .
*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "rezweb.prd".
 COPY "rezweb.mnu".
 COPY "rezweb.evt".
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

