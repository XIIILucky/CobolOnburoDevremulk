*{Bench}prg-comment
* fatiptl1.cbl
* fatiptl1.cbl is generated from C:\Asya\acugt.ytl\otel\fatiptl1.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. fatiptl1 IS INITIAL PROGRAM.
 AUTHOR. muhammed.
 DATE-WRITTEN. 28 Þubat 2012 Salý 14:35:03.
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

*{Bench}copy-working
 COPY "fatiptl1.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "fatiptl1.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "fatiptl1.scr".
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
 COPY "fatiptl1.prd".
 COPY "fatiptl1.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

