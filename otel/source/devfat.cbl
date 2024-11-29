*{Bench}prg-comment
* devfat.cbl
* devfat.cbl is generated from D:\asya\acugt.ytl\otel\devfat.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devfat IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 22 Ocak 2021 Cuma 11:37:29.
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
 copy "devfat.tsl".

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "devfat.tfd".

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
 copy "protasi.wrk".
 COPY "dokcagir.tasi".
 copy "mtakcari.wrk".
*{Bench}copy-working
 COPY "devfat.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "devfat.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devfat.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-dev-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "devfat.dcl".

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
 COPY "devfat.prd".
 COPY "devfat.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "takcari.cpy".
 copy "muhaente.cpy".
 destroy-window-proc.
     destroy Form1-Handle.

