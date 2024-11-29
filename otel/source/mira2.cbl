*{Bench}prg-comment
* mira2.cbl
* mira2.cbl is generated from D:\asya\acugt.ytl\otel\mira2.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. mira2 IS INITIAL PROGRAM.
 AUTHOR. ramazan.
 DATE-WRITTEN. 22 Eyl�l 2022 Per�embe 10:30:50.
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
*{Bench}end
  COPY "mira2.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
  COPY "mira2.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "mira2.wrk".
*{Bench}end
 77 Key-Status IS SPECIAL-NAMES CRT STATUS PIC 9(4) VALUE 0.
     88 Exit-Pushed VALUE 27.
     88 Message-Received VALUE 95.
     88 Event-Occurred VALUE 96.
     88 Screen-No-Input-Field VALUE 97.
     88 Screen-Time-Out VALUE 99.
 77 Traditional-Font HANDLE OF FONT Traditional-Font.
 77 Form1-Handle pic x(10).
 77 Form1-St-1-Handle HANDLE OF STATUS-BAR.

 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "mira2.scr".
*{Bench}end
 01 Form1,
     EXCEPTION PROCEDURE Form1-Exception-Proc.
     03 Form1-Pb-1, Push-Button, 
        COL 1.50, LINE 10.00, LINES 5.00 CELLS, SIZE 57.00 CELLS, 
        EXCEPTION-VALUE 2, FONT IS Traditional-Font, ID IS 1, 
        TITLE "Asya-Soft Mira Bilgi Aktarma Konsolu ~~~~~~~~".
     03 la-okunan, Label, 
        COL 2.00, LINE 2.00, LINES 6.50 CELLS, SIZE 56.50 CELLS, 
        COLOR IS 5, FONT IS Traditional-Font, ID IS 2, LABEL-OFFSET 0, 
        TRANSPARENT.

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "mira2.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     perform santral-aktar thru santral-aktar-exit
     goback.
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "mira2.prd".
 COPY "mira2.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
*     destroy Form1-Handle.

