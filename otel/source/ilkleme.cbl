*{Bench}prg-comment
* ilkleme.cbl
* ilkleme.cbl is generated from D:\asya\acugt.ytl\otel\ilkleme.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. ilkleme IS INITIAL PROGRAM.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 10 Haziran 2024 Pazartesi 14:04:53.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
    syserr is mami-log.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "ilkleme.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "ilkleme.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "hrkgir.Wrk".
 COPY "adres.wrk".
 COPY "opensave.def".
 
*/ TEXT SIRKET ICIN EKLENTILER .....
01 PENCERE-1        PIC X(10).
01 ISYERI-TABLO.
    02 DIZI-SAYFA OCCURS 10 TIMES.
       03 DIZI-SATIR OCCURS 18 TIMES.
          04 DIZI-1  PIC X(02).
          04 DIZI-2  PIC X(20).
          04 DIZI-3  PIC X(08).
          04 DIZI-SIFRE  PIC X(10).
          04 KONTROL PIC X.
01 B                 PIC 9(03).
01 ILK-ISYERI-NO     PIC X(02).
01 SON-ISYERI-NO     PIC X(02).
01 SON-SAYFA         PIC 9(03).
01 TEMIZLE-SATIR     PIC 9(02).
01 DETAY.
    02 DETAY-01      PIC X(02)B.
    02 DETAY-02      PIC X(20)B.
    02 DETAY-03      PIC X(08).
77 TUM-SIRKETLER     PIC X. 
77 SIFRE-BASARI      PIC 9. 
77 SIRKET-SIFRE      PIC X(10). 
01 TUS              PIC 9(3).
01 SIFRE-PEN        PIC X(10).
01 DIZIN-PEN        PIC X(10).

*{Bench}copy-working
 COPY "ilkleme.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "ilkleme.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "ilkleme.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING SILMEYIN-LINK-ICIN.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "ilkleme.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form5-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "ilkleme.prd".
 COPY "ilkleme.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form5-Handle.
* COPY "isyeri.lg".
* COPY "prosif.lg".
