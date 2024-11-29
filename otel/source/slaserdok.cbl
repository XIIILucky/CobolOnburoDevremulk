*{Bench}prg-comment
* slaserdok.cbl
* slaserdok.cbl is generated from C:\asya\Acugt.ytl\OTEL DEVREMULK\slaserdok.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. slaserdok IS INITIAL PROGRAM.
 AUTHOR. SaLih-w7.
 DATE-WRITTEN. 26 Aralýk 2012 Çarþamba 00:59:52.
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
* print sl
 SELECT PRINTF
        ASSIGN TO PRINT PTR-DEV-NAME
        FILE   STATUS   IS STAT-PRINTF.
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
* print fd
 FD PRINTF    LABEL   RECORD  OMITTED.
 01 PRINTF-R.
    05 PRINTF-01              PIC X OCCURS 1024 TIMES.
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "acureport.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "slaserdok.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "slaserdok.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "slaserdok.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING stokhrk-cagir.
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
     PERFORM Acu-Form1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "slaserdok.prd".
 COPY "slaserdok.evt".
 COPY "slaserdok.rpt".
*{Bench}end
 REPORT-COMPOSER SECTION.
*{Bench}Report1-masterprintpara
 Acu-RPT-Report1-MASTER-PRINT-LOOP.
*{Bench}end
*
     PERFORM Acu-RPT-Report1-DO-PRINT-RTN
     .
      
