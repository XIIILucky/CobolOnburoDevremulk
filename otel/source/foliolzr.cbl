*{Bench}prg-comment
* foliolzr.cbl
* foliolzr.cbl is generated from D:\asya\acugt.ytl\otel\foliolzr.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. foliolzr.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 29 Aðustos 2024 Perþembe 09:43:35.
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
 COPY "foliolzr.tsl".
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
 COPY "foliolzr.tfd".
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
    02 filler      pic x(10) value "/tmp/mami.".
    02 mami-tar    pic 9(08).
    02 filler      pic x     value ".".
    02 mami-zam    pic 9(06).
    02 filler      pic x     value ".".
    02 mami-kllnc  pic x(04).

*{Bench}copy-working
 COPY "foliolzr.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "foliolzr.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "foliolzr.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING folio-cagir.
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
 COPY "foliolzr.prd".
 COPY "foliolzr.evt".
 COPY "foliolzr.rpt".
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

