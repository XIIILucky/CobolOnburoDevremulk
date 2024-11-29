*{Bench}prg-comment
* folfaty.cbl
* folfaty.cbl is generated from D:\asya\acugt.ytl\otel\folfaty.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. folfaty IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 2 Temmuz 2024 Salý 16:15:54.
 REMARKS. 
     THIS PROGRAM NIEEEPED BY NITALLICA
     AND FREE FOR USE GPL LISANS IS ALREADY
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 OBJECT-COMPUTER.
      NITALLICA
      COLLATING SEQUENCE TURKCE-ALFABE.
      
      
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
         alphabet turkce-alfabe 1 thru 256.   
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "folfaty.tsl".

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "folfaty.tfd".

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

 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 copy "hrkgir.wrk".
 copy "protasi.wrk".
 COPY "dokcagir.tasi".
 copy "mtakcari.wrk".
 copy "kilit.lnk".
*{Bench}copy-working
 COPY "folfaty.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "folfaty.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "folfaty.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-fol-no, link-oda, link-pencere.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "folfaty.dcl".

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
 COPY "folfaty.prd".
 COPY "folfaty.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "takcari.cpy".
 copy "muhaente.cpy".
 copy "kilit.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
 copy "romhrk.lg".
 copy "exthrk.lg".



*
 log-operation-alsat.
     initialize log-degiskenler
     set log-source-addr           to address of alsat-rec
     set log-source-size           to size of alsat-rec
     move alsat-dosya-adres        to log-isyeri-adres-tasi
     move "muha"                   to log-program-modul
     perform log-proc.

     initialize log-program-modul  log-isyeri-adres-tasi.



