*{Bench}prg-comment
* depkod.cbl
* depkod.cbl is generated from D:\asya\acugt.ytl\otel\depkod.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. depkod.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 9 Temmuz 2023 Pazar 14:24:03.
 REMARKS. 
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
*{Bench}file-control
*{Bench}end
 COPY "depkod.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "depkod.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 
*{Bench}copy-working
 COPY "depkod.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "depkod.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "depkod.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING lnk-depkod-anah.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "depkod.dcl".

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
 COPY "depkod.prd".
 COPY "depkod.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "depkod.lg".

