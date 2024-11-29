*{Bench}prg-comment
* profat3.cbl
* profat3.cbl is generated from D:\asya\acugt.ytl\otel\profat3.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. profat3.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 3 Mart 2021 Çarþamba 15:04:13.
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
 COPY "profat.tsl".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 COPY "profat.tfd".
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
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 copy "reffiltr.wrk".
 COPY "gunbul.wrk".
 copy "filtr.wrk".
*{Bench}copy-working
 COPY "profat3.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "profat3.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "profat3.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING gelen-folio, gelen-rez.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "profat.dcl".

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
 COPY "profat3.prd".
 COPY "profat3.evt".
*{Bench}end
 copy "dsyhata.prc".
 COPY "gunbul.prc".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
