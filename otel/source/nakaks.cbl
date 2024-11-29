*{Bench}prg-comment
* nakaks.cbl
* nakaks.cbl is generated from F:\asya\acugt.kaya\otel\nakaks.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. nakaks.
 AUTHOR. askin.
 DATE-WRITTEN. 30 Haziran 2013 Pazar 23:48:52.
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
 COPY "nakaks.tsl".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 COPY "nakaks.tfd".
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
 COPY "nakaks.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "nakaks.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "nakaks.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING gelen-folio, gelen-rez.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "nakaks.dcl".

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
 COPY "nakaks.prd".
 COPY "nakaks.evt".
*{Bench}end
 copy "dsyhata.prc".
 COPY "gunbul.prc".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
