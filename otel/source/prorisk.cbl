*{Bench}prg-comment
* prorisk.cbl
* prorisk.cbl is generated from D:\asya\acugt.ytl\otel\prorisk.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. prorisk.
 AUTHOR. muhammed.
 DATE-WRITTEN. 2 Mayýs 2018 Çarþamba 14:43:11.
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
 COPY "prorisk.tsl".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 COPY "prorisk.tfd".
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
 COPY "gunbul.wrk".
 copy "fiyhes.wrk".
 copy "filtr.wrk".
 copy "reffiltr.wrk".
*{Bench}copy-working
 COPY "prorisk.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "prorisk.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "prorisk.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING gelen-folio, gelen-rez.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "prorisk.dcl".

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
 COPY "prorisk.prd".
 COPY "prorisk.evt".
*{Bench}end
 copy "dsyhata.prc".
 COPY "gunbul.prc".
 copy "fiyhes.cpy".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
