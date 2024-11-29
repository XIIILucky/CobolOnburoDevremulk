*{Bench}prg-comment
* lapis.cbl
* lapis.cbl is generated from D:\asya\acugt.ytl\otel\lapis.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. lapis IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:52:24.
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
  COPY "lapis.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
  COPY "lapis.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "hrkgir.wrk".
 copy "rout.wrk".
 01 lapisrcv-deg.
    02 lapisrcv-path                pic x(128).
    02 fs-dir-dosya                 pic xx.
    02 fs-lapis-dosya               pic xx.
    02 fs-lapisrcv-error            pic xx.
    02 dir-dosya-adres              pic x(100).
    02 lapis-dosya-adres            pic x(100).
    02 lapisrcv-dir-dosya           pic x(100).
    02 lapisrcv-from-dosya          pic x(100).
    02 lapisrcv-to-dosya            pic x(100).
    02 lapisrcv-donus               pic s9(5).
    02 lapisrcv-tarih.
       03 lapisrcv-yil     pic 9(2).
       03 lapisrcv-ay      pic 9(2).
       03 lapisrcv-gun     pic 9(2).
    02 lapisrcv-zaman.
       03 lapisrcv-saat    pic 9(2).
       03 lapisrcv-dakika  pic 9(2).
       03 lapisrcv-saniye  pic 9(2).
    02 lapisrcv-kur                 pic 9(9)v9(4).
    02 lapisfol-kur                 pic 9(9)v9(4).
 01 lapis-deg.
    02 lapis-alan1         pic x(50).
    02 lapis-folio         pic x(50).
    02 lapis-fis           pic x(50).
    02 lapis-alan4         pic x(50).
    02 lapis-dep           pic x(50).
    02 lapis-tarzaman      pic x(50).
    02 lapis-aciklama      pic x(50).
    02 lapis-alan8         pic x(50).
    02 lapis-tutar         pic x(50).
    02 lapis-alan10        pic x(50).
    02 lapis-alan11        pic x(50).
    02 lapis-gelen-folio   pic x(50).
* 1   2    3   4  5       6                 7            8      9   10   11
*121|19|801552|1|140|2010-8-28 16:08:00|Masaj ( Lokal )|30,00|30,00|TL|e2faec79-2138-4694-81ea-514ef13b2262
 01 asyadll                                  PIC  x(50).
     88 asyadll-local                 VALUE IS "asyadll.dll". 
     88 asyadll-remote                VALUE IS "@[DISPLAY]:asyadll.dll". 
 01 ASYA-DeleteFile                      PIC  x(50).
     88 ASYA-DeleteFile-local     VALUE IS "ASYA_DeleteFile". 
     88 ASYA-DeleteFile-remote    VALUE IS "@[DISPLAY]:ASYA_DeleteFile".
 01 mydeletefile           pic x(128).
 01 mydeletefile-donus     pic x(4) comp-n.


*{Bench}copy-working
 COPY "lapis.wrk".
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
 COPY "lapis.scr".
*{Bench}end
 01 Form1,
     EXCEPTION PROCEDURE Form1-Exception-Proc.
     03 Form1-Pb-1, Push-Button, 
        COL 1.50, LINE 10.00, LINES 5.00 CELLS, SIZE 57.00 CELLS, 
        EXCEPTION-VALUE 2, FONT IS Traditional-Font, ID IS 1, 
        TITLE "Asya-Soft lapis Bilgi Aktarma Konsolu ~~~~~~~~".
     03 la-okunan, Label, 
        COL 2.00, LINE 2.00, LINES 6.50 CELLS, SIZE 56.50 CELLS, 
        COLOR IS 5, FONT IS Traditional-Font, ID IS 2, LABEL-OFFSET 0, 
        TRANSPARENT.

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "lapis.dcl".

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
 COPY "lapis.prd".
 COPY "lapis.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "romhrk.lg".
 copy "exthrk.lg".
 destroy-window-proc.
*     destroy Form1-Handle.

