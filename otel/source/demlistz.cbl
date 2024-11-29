*{Bench}prg-comment
* demlistz.cbl
* demlistz.cbl is generated from D:\asya\acugt.ytl\otel\demlistz.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. demlistz.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:03:36.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
* print sl
 SELECT PRINTF
        ASSIGN TO PRINT PTR-DEV-NAME
        FILE   STATUS   IS STAT-PRINTF.
*{Bench}end
 COPY "demlistz.tsl".
 SELECT mami
        ASSIGN TO random mami-dosya organization line sequential.  

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
* print fd
 FD PRINTF    LABEL   RECORD  OMITTED.
 01 PRINTF-R.
    05 PRINTF-01              PIC X OCCURS 1024 TIMES.
*{Bench}end
 COPY "demlistz.tfd".
 fd mami label record standard.
 01 mami-rec pic x(30).
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "acureport.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "hrkgir.wrk".
 copy "winprint.def".
 01 mami-dosya.
    02 filler pic x(10) value "/tmp/mami.".
    02 mami-kllnc  pic x(4).

*{Bench}copy-working
 COPY "demlistz.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "demlistz.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "demlistz.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-dem-oda, link-dem-folio.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "decla.cpy".

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
 COPY "demlistz.prd".
 COPY "demlistz.evt".
 COPY "demlistz.rpt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
*{Bench}Report1-masterprintpara
 Acu-RPT-Report1-MASTER-PRINT-LOOP.
     .
*{Bench}end






*
 
    perform Form1-aft-Create
 
     .

