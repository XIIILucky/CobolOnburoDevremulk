*{Bench}prg-comment
* htmldok.cbl
* htmldok.cbl is generated from D:\asya\acugt.ytl\otel\htmldok.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. htmldok.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 22 Mayýs 2024 Çarþamba 14:58:41.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 OBJECT-COMPUTER.
      NITALLICA
      COLLATING SEQUENCE TURKCE-ALFABE.
 SPECIAL-NAMES.
        syserr is debug,
        switch-1 on status is program-versiyon-kontrol,

        COPY "excel_ole.def".
       COPY "special.cpy" in "../../muha/copylib".

*{Bench}file-control
*{Bench}end

        copy "htmldok.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
        copy "htmldok.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "winhelp.def".
 copy "winprint.def".
 

*{Bench}copy-working
 COPY "htmldok.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "htmldok.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "htmldok.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING htmldok-link.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "decla.cpy".


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
 COPY "htmldok.prd".
 COPY "htmldok.evt".
*{Bench}end
 destroy-window-proc.
     destroy form1-handle.
 copy "dsyhata.prc".
  REPORT-COMPOSER SECTION.                        
