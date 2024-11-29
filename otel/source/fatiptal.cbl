*{Bench}prg-comment
* fatiptal.cbl
* fatiptal.cbl is generated from D:\asya\acugt.ytl\otel\fatiptal.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. fatiptal IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 5 Eylül 2024 Perþembe 16:16:08.
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
 copy "fatiptal.tsl".

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "fatiptal.tfd".

*{Bench}file
*{Bench}end

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "hrkgir.wrk".
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
*{Bench}copy-working
 COPY "fatiptal.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "fatiptal.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "fatiptal.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-fat-no, link-tar.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "fatiptal.dcl".

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
 COPY "fatiptal.prd".
 COPY "fatiptal.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "muhaente.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
 copy "romhrk.lg".
 copy "exthrk.lg".

