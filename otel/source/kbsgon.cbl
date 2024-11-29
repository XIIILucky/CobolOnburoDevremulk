*{Bench}prg-comment
* kbsgon.cbl
* kbsgon.cbl is generated from D:\asya\acugt.ytl\otel\kbsgon.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. kbsgon.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:11:52.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*      alphabet turkce-alfabe 1 thru 256,
      COPY "excel_ole.def"
      .
*{Bench}activex-def
*{Bench}end
                  . || 8'den sonra 
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "kbsgon.tsl".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "kbsgon.tfd".
*{Bench}file
*{Bench}end

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "opensave.def".
 01 excel-objects. 
    03 hexcelapp  handle of application of excel. 
    03 hexcelwkb  handle of workbook    of excel. 
    03 hexcelwks  handle of worksheet   of excel. 
    03 hrange     handle of range       of excel.
    02 xls-range      handle of @Range       of @Excel.
 copy "reffiltr.wrk".
 copy "dokcagir.tasi".
*{Bench}copy-working
 COPY "kbsgon.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "kbsgon.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "kbsgon.dcl".
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
 COPY "kbsgon.prd".
 COPY "kbsgon.evt".
*{Bench}end
  copy "dsyhata.prc".
  copy "reffilt.cpy".
  destroy-window-proc.
       destroy form1-Handle.


