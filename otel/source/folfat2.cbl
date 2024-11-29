*{Bench}prg-comment
* folfat2.cbl
* folfat2.cbl is generated from D:\asya\acugt.kaya\otel\folfat2.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. folfat2 IS INITIAL PROGRAM.
 AUTHOR. askin.
 DATE-WRITTEN. 22 Mayýs 2012 Salý 14:18:19.
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
 copy "folfat1.tsl".

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "folfat1.tfd".

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
 copy "hrkgir.wrk".

*{Bench}copy-working
 COPY "folfat2.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "folfat2.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "folfat2.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-fol-no, link-oda, link-pencere.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "folfat1.dcl".

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
 COPY "folfat2.prd".
 COPY "folfat2.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

