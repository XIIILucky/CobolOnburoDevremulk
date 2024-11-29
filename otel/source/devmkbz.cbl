*{Bench}prg-comment
* devmkbz.cbl
* devmkbz.cbl is generated from D:\asya\acugt.ytl\otel\devmkbz.Psf
*{Bench}end
*{Bench}Report1-masterprintpara
 Acu-RPT-Report1-MASTER-PRINT-LOOP.
     .
*{Bench}end

*{Bench}Report1-masterprintpara
 Acu-RPT-Report1-MASTER-PRINT-LOOP.
     .
*{Bench}end


*{Bench}Report1-masterprintpara
 Acu-RPT-Report1-MASTER-PRINT-LOOP.
     .
*{Bench}end


*
     PERFORM Acu-RPT-Report1-DO-PRINT-RTN
     .

*{Bench}Report1-masterprintpara
 Acu-RPT-Report1-MASTER-PRINT-LOOP.
     .
*{Bench}end


*
*{Bench}prgid
 PROGRAM-ID. devmkbz IS INITIAL PROGRAM.
 AUTHOR. Ramazan.
 DATE-WRITTEN. 18 Mart 2016 Cuma 13:18:23.
 REMARKS. 
     asdþlkjasdlkalsjdklasd
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
       COPY "special.cpy" in "../../muha/copylib".

 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "devmkbz.tsl".
*{Bench}file-control
* print sl
 SELECT PRINTF
        ASSIGN TO PRINT PTR-DEV-NAME
        FILE   STATUS   IS STAT-PRINTF.
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "devmkbz.tfd".
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
 copy "adres.wrk" in "../../stok/copylib".
 copy "winprint.def".
 copy "satadres.wrk".
*{Bench}copy-working
 COPY "devmkbz.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "devmkbz.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devmkbz.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING stokhrk-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "devmkbz.dcl".
 

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
 COPY "devmkbz.prd".
 COPY "devmkbz.evt".
 COPY "devmkbz.rpt".
*{Bench}end
 copy "dsyhata.prc".

 destroy-window-proc.
     exit
     .



*{Bench}Report1-masterprintpara
 Acu-RPT-Report1-MASTER-PRINT-LOOP.
     .
*{Bench}end


     perform lazer-rapor.
     .
*
     PERFORM Acu-RPT-Report1-DO-PRINT-RTN
     .

