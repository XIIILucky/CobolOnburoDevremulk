*{Bench}prg-comment
* polxmlry.cbl
* polxmlry.cbl is generated from D:\asya\acugt.ytl\otel\polxmlry.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. polxmlry.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 13 Mayýs 2024 Pazartesi 14:27:42.
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
 copy "polxmlry.tsl".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "polxmlry.tfd".
*{Bench}file
*{Bench}end

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "lmresize.def".
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
 copy "kbsbaglan.wrk".
 copy "dokcagir.tasi".
*{Bench}copy-working
 COPY "polxmlry.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "polxmlry.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "polxmlry.dcl".
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
 COPY "polxmlry.prd".
 COPY "polxmlry.evt".
*{Bench}end
  copy "dsyhata.prc".
  copy "reffilt.cpy".
  copy "kbsbaglan.cpy".
  destroy-window-proc.
       destroy Screen1-Handle.


