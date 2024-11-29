*{Bench}prg-comment
* pflege.cbl
* pflege.cbl is generated from D:\asya\acugt.ytl\otel\pflege.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. pflege.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:09:06.
 REMARKS. 
*{Bench}end
 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 OBJECT-COMPUTER.
       NITALLICA
       COLLATING SEQUENCE TURKCE-ALFABE.
 SPECIAL-NAMES.
      COPY "special.cpy".
*{Bench}activex-def
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 copy "pflege.tsl".
*
                  SELECT maid-oda ASSIGN RANDOM, maid-oda-DOSYA
                  ORGANIZATION INDEXED
                  ACCESS DYNAMIC
                  RECORD maid-oda-ANAH
                  ALTERNATE RECORD 
                            maid-oda-maid DUPLICATES
                  STATUS fs-maid-oda.
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "pflege.tfd".
*
 FD maid-oda LABEL RECORD STANDARD.
 01 maid-oda-REC.
           02 maid-oda-ANAH.
              03 maid-oda-NO       PIC XXXX.
           02 maid-oda-MAID        PIC X(4).


*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "winprint.def".
 copy "fonts.def".
 01 fs-maid-oda                       pic xx.
 01 maid-oda-dosya.                   
    05 filler pic x(25)   value "/asya/ytl/liste/maid-oda.".
    05 maid-oda-dno        pic 9999.
    05 maid-oda-k         pic x(4).

*{Bench}copy-working
 COPY "pflege.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "pflege.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Screen1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "pflege.prd".
 COPY "pflege.evt".
*{Bench}end
 REPORT-COMPOSER SECTION.

  copy "dsyhata.prc".
*
 destroy-window-proc.
    destroy screen1-handle.
