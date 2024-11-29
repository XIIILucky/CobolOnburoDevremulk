*{Bench}prg-comment
* pmsnew.cbl
* pmsnew.cbl is generated from D:\asya\acugt.ytl\otel\pmsnew.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. pmsnew IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:52:49.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
           syserr is debug,
*{Bench}activex-def
 COPY "MSComm.def".
 COPY "Acuclass.Def".
     .
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
      copy "telayarq.sel".
      copy "pmsnew.sel".
      copy "telerr.sel".
      copy "polisxml.sel".

      select ciftleme assign to random
          "/asya/ytl/entegre/maginet/ciftleme"
        organization indexed,
        access dynamic
        record key is ciftleme-anah
        status fs-ciftleme.


 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
      copy "telayarq.lib".
      copy "pmsnew.lib".
      copy "telerr.lib".
      copy "polisxml.lib".

 fd ciftleme label record standard.
 01 ciftleme-rec.
    02 ciftleme-anah.
       03 ciftleme-tarih.
          04 ciftleme-yil        pic 9(4).
          04 ciftleme-ay        pic 9(2).
          04 ciftleme-gun        pic 9(2).
       03 ciftleme-oda           pic x(4).
       03 ciftleme-numara        pic x(10).
    02 ciftleme-tutar         pic 9(10)v99.

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "activex.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "pms-rec.wrk".
 copy "hrkgir.wrk".
 COPY "adres.wrk".
 copy "rout.wrk".
 COPY "exthrk.lib" replacing 
      ==FD EXTHRK LABEL RECORD STANDARD.== by == ==
      leading "EXTHRK" by "HRK-GIR".

*{Bench}copy-working
 COPY "pmsnew.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "pmsnew.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end


DECLARATIVES.
FILE-INPUT-ERROR SECTION.
    USE AFTER STANDARD ERROR PROCEDURE ON I-O.
FILE-INPUT-PARA.
    perform dosya-hata-yaz.
    PERFORM FILEERR-PROC.
FILE-EXIT.
    EXIT.
FILE-OUTPUT-ERROR SECTION.
    USE AFTER STANDARD ERROR PROCEDURE ON OUTPUT.
FILE-OUTPUT-PARA.
    perform dosya-hata-yaz.
    PERFORM FILEERR-PROC.
FILE-EXIT.
    EXIT.
FILE-I-O-ERROR SECTION.
    USE AFTER STANDARD ERROR PROCEDURE ON INPUT.
FILE-I-O-PARA.
    perform dosya-hata-yaz.
    PERFORM FILEERR-PROC.
FILE-EXIT.
    EXIT.
FILE-REPORT-I-O-ERROR SECTION.
    USE AFTER STANDARD ERROR PROCEDURE ON EXTEND.
FILE-I-O-PARA.
    perform dosya-hata-yaz.
    PERFORM FILEERR-PROC.
FILE-EXIT.
    EXIT.
END DECLARATIVES.

**************************> progran baþlama yeri
     accept traditional-font from standard object "TRADITIONAL-FONT".
     perform Acu-Initial-Routine
     
     perform Form1-Bef-Create
* display screen
        DISPLAY Standard GRAPHICAL WINDOW
           LINES 48.20, SIZE 77.50, CELL HEIGHT 10, CELL WIDTH 10, 
           AUTO-MINIMIZE, COLOR IS 65584, CONTROL FONT traditional-font, 
           LABEL-OFFSET 0, LINK TO THREAD, WITH SYSTEM MENU, 
           TITLE 
           "Asya2Pms Online Internet(MAGINET) ve Pay Tv Uygulamasi - Asya-Soft 20
-          "12 v2.00/25.03.2014 .:.F5-CIKIS.:. R.imp. Ver.", TITLE-BAR, USER-GRAY, USER-WHITE,
           EVENT PROCEDURE Form1-Event-Proc,
           font traditional-font
           HANDLE IS Form1-Handle
* toolbar
     DISPLAY TOOL-BAR CELL HEIGHT 10, CELL WIDTH 10, LINES 3.20 CELLS, 
        CONTROL FONT traditional-font, 
        HANDLE IS Form1-Tb-1-Handle
     DISPLAY Form1-Tb-1 UPON Form1-Tb-1-Handle

     DISPLAY Form1 UPON Form1-Handle 

     perform Form1-Aft-Initdata
     move "Program End ...."    to pms-log-paket
     perform pms-log-yaz
**************************>
     goback.
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
 COPY "pmsnew.prd".
 COPY "pmsnew.evt".
*{Bench}end
 REPORT-COMPOSER SECTION.

*
 destroy-window-proc.
     destroy form1-handle.

 copy "dsyhata.prc".
*
 dosya-hata-yaz.
    call "c$rerr" using extend-stat text-message 1.
    move extend-stat       to fileerr-linkage-hata-no.
    move Secondary-Error   to fileerr-linkage-secondary-hata-no.

    call "c$rerrname" using fileerr-linkage-dosya-adi. 

    display "File Error on :", fileerr-linkage-dosya-adi, " File Status : " extend-stat , Secondary-Error, text-message
            upon debug.                  
