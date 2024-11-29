*{Bench}prg-comment
* musteri.cbl
* musteri.cbl is generated from D:\asya\acugt.ytl\otel\musteri.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. musteri.
 AUTHOR. ramazan.
 DATE-WRITTEN. 28 Mart 2022 Pazartesi 17:44:13.
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
     copy "musteri.tfd".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
     copy "musteri.tsl".
*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "mpuanhes.wrk".
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 copy "dokcagir.tasi".
 copy "opensave.def". 
 copy "not.lnk". 
 copy "kbsbaglan.wrk".
*{Bench}copy-working
 COPY "musteri.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "musteri.lks".
*{Bench}end
* copy "protasi.wrk".
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "musteri.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING mis-cagir, mis-toplu-cagir, mis-kol-bandi.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "musteri.dcl".
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
 COPY "musteri.prd".
 COPY "musteri.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "puanhes.cpy".
 copy "musteri.lg" .
 copy "bantkont.cpy".
* copy "kbsbaglan.cpy".
 destroy-window-proc.
      destroy form1-handle.

