*{Bench}prg-comment
* profat2.cbl
* profat2.cbl is generated from D:\asya\acugt.ytl\otel\profat2.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. profat2.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:49:19.
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
 COPY "profat2.tsl".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 COPY "profat2.tfd".
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
 COPY "profat2.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "profat2.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "profat2.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING gelen-folio, gelen-rez.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "profat2.dcl".

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
 COPY "profat2.prd".
 COPY "profat2.evt".
*{Bench}end
 copy "dsyhata.prc".
 COPY "gunbul.prc".
 copy "fiyhes.cpy".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
