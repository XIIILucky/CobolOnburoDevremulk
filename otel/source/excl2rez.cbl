*{Bench}prg-comment
* excl2rez.cbl
* excl2rez.cbl is generated from D:\asya\acugt.ytl\otel\excl2rez.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. excl2rez.
 AUTHOR. ramazan.
 DATE-WRITTEN. 13 Nisan 2021 Salý 09:16:22.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*      alphabet turkce-alfabe 1 thru 256,
      COPY "excel_ole.def".
*{Bench}activex-def
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "excl2rez.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "excl2rez.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "opensave.def".
 copy "modahes.wrk".
 copy "aksiler.wrk". 
 copy "link-oda.lnk".
 copy "websej.lnk" in "..\..\otel-sejour\lib-sel".
 01 excel-objects. 
    03 hexcelapp  handle of application of excel. 
    03 hexcelwkb  handle of workbook    of excel. 
    03 hexcelwks  handle of worksheet   of excel. 
    03 hrange     handle of range       of excel.

* copy "gr.wrk".
*{Bench}copy-working
 COPY "excl2rez.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
         
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "excl2rez.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "excl2rez.dcl".
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
 COPY "excl2rez.prd".
 COPY "excl2rez.evt".
*{Bench}end
*  copy "gr.evt".
* copy "gr.prd".
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

