*{Bench}prg-comment
* sharerap.cbl
* sharerap.cbl is generated from D:\asya\acugt.ytl\otel\sharerap.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. sharerap.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:57:31.
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
 COPY "sharerap.tsl".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 COPY "sharerap.tfd".
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
 COPY "sharerap.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "sharerap.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "sharerap.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING gelen-folio, gelen-rez.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "sharerap.dcl".

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
 COPY "sharerap.prd".
 COPY "sharerap.evt".
*{Bench}end
 copy "dsyhata.prc".
 COPY "gunbul.prc".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
