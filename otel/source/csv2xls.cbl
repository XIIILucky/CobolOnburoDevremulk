*{Bench}prg-comment
* csv2xls.cbl
* csv2xls.cbl is generated from D:\asya\acugt.ytl\otel\csv2xls.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. csv2xls IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:55:01.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
            
           select pipe assign to komut
            organization line sequential
            status fs-pipe.

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 fd pipe label record standard.
 01 pipe-rec                 pic x(200).
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "csv2xls.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "csv2xls.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "csv2xls.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING csv2xls-link.
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
 COPY "csv2xls.prd".
 COPY "csv2xls.evt".
*{Bench}end
 REPORT-COMPOSER SECTION.
