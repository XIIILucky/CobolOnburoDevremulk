*{Bench}prg-comment
* ototelas.cbl
* ototelas.cbl is generated from D:\asya\acugt.ytl\otel\ototelas.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. ototelas IS INITIAL PROGRAM.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 5 Mayýs 2023 Cuma 11:46:15.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
   switch-1 on status is message-box-gosterme 
            off status is message-box-goster
   switch-2 on status is debugla
            off status is debuglama.

 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
  COPY "ototelas.tsl".

           select tel-log assign to random,
                  tel-log-dosya,
                 organization line sequential
                 status fs-tel-log.

            select santlog assign to random,
                 santlog-dosya,
                 organization line sequential
                 status fs-santlog.
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
  COPY "ototelas.tfd".
fd santlog label record standard.
01 santlog-rec.
   02 santlog-data           pic x(120).
   02 filler  pic  x(07) value "Tarih: ".
   02 santlog-tarih            pic x(15).
   02 filler pic x(07) value "zaman: ".
   02 santlog-zaman           pic x(15).
   02 filler pic x(10) value "TDataIs: ".
   02 santlog-teldata          pic x(15).
   02 filler pic x(10) value "IslemNo:".
   02 santlog-folio           pic x(15).
   02 filler pic x.
   02 santlog-err           pic x(50).
   


fd tel-log label record standard.
01 tel-log-rec.
   02 tel-log-tarih            pic x(08).
   02 filler pic x.
   02 tel-log-zaman            pic x(6).
   02 filler pic x.
   02 tel-log-durum            pic x(50).

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "rout.wrk".
 COPY "hrkgir.wrk".

*{Bench}copy-working
 COPY "ototelas.wrk".
*{Bench}end
 01 CALISMA2-TARIHI.
             03 CALIS2-YIL         PIC 9(04).
             03 CALIS2-AY          PIC 9(02).
             03 CALIS2-GUN         PIC 9(02).
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
 COPY "ototelas.scr".
*{Bench}end
 01 Form1,
     EXCEPTION PROCEDURE Form1-Exception-Proc.
     03 Form1-Pb-1, Push-Button, 
        COL 1.50, LINE 10.00, LINES 5.00 CELLS, SIZE 57.00 CELLS, 
        EXCEPTION-VALUE 2, FONT IS Traditional-Font, ID IS 1, 
        TITLE "F2 --> Santral Gorusmeleri Aktarimini Durdur....".
     03 la-okunan, Label, 
        COL 2.00, LINE 2.00, LINES 6.50 CELLS, SIZE 56.50 CELLS, 
        COLOR IS 5, FONT IS Traditional-Font, ID IS 2, LABEL-OFFSET 0, 
        TRANSPARENT.

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "ototelas.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
       call "/asya/ytl/obj/tcp-ip/killet.asy" 
         on exception continue
         not on exception
    cancel "/asya/ytl/obj/tcp-ip/killet.asy" 
    end-call.

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
 COPY "ototelas.prd".
 COPY "ototelas.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
*     destroy Form1-Handle.
 COPY "odalar.lg".
 copy "romhrk.lg".
 copy "exthrk.lg".

