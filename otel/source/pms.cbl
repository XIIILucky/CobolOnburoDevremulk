*{Bench}prg-comment
* pms.cbl
* pms.cbl is generated from D:\asya\acugt.ytl\otel\pms.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. pms IS INITIAL PROGRAM.
 AUTHOR. F˝rat.
 DATE-WRITTEN. 4 Kas˝m 2020 «ar˛amba 15:48:38.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
           syserr is debug,
*{Bench}activex-def
 COPY "MSComm.def".
 COPY "Acuclass.Def".
     .
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
      copy "telayarq.sel".
      copy "pms.sel".
      copy "telerr.sel".
      select mydebug assign to random,
             "/tmp/mydebug"
      organization binary sequential.
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 fd mydebug label record standard.
 01 mydebug-rec               pic x.
 copy "telayarq.lib".
 COPY "telerr.lib".
 fd emir label record standard.
 01 emir-rec.
*( emir-anahtar 1000 den baülçyorsa onun gînderdikleri
*(                   1    den basliyorsa benim gînderdiklerim
    02 emir-komut                         pic x(4).
    02 emir-oda                           pic x(4).
    02 emir-bas-tarih.
       03 emir-bas-yil                    pic 9(4).
       03 emir-bas-ay                     pic 9(2).
       03 emir-bas-gun                    pic 9(2).
    02 emir-bas-zaman.
       03 emir-bas-saat                   pic 99.
       03 emir-bas-dakika                 pic 99.
       03 emir-bas-saniye                 pic 99.
    02 emir-bit-tarih.
       03 emir-bit-yil                    pic 9(4).
       03 emir-bit-ay                     pic 9(2).
       03 emir-bit-gun                    pic 9(2).
    02 emir-bit-zaman.
       03 emir-bit-saat                   pic 99.
       03 emir-bit-dakika                 pic 99.
       03 emir-bit-saniye                 pic 99.
    02 emir-durum                         pic x.
       88 emir-ok             value "E".
    02 emir-grid-yer                      pic 9(10).
    02 emir-paket                         pic x(100).

 copy "pms.lib".

 fd pms-data label record standard.
 01 pms-data-rec.
    02 pms-data-anah               pic x(4).
    02 pms-data-oda-durumu         pic x.
       88 pms-data-oda-bos   value " ".
       88 pms-data-oda-dolu  value "D".
    02 pms-data-islem              pic x.
       88 pms-data-islem-esit   value "E".
       88 pms-data-islem-farkli value "F".
    02 pms-data-folio-adet         pic 9(10).

 fd emir-index label record standard.
 01 emir-index-rec.
    02 emir-index-anah.
       03 emir-index-durum         pic x.
       03 emir-index-tarih.
          04 emir-index-yil        pic 9(4).
          04 emir-index-ay         pic 9(2).
          04 emir-index-gun        pic 9(2).
       03 emir-index-zaman.
          04 emir-index-saat       pic 9(2).
          04 emir-index-dakika     pic 9(2).
          04 emir-index-saniye     pic 9(2).

       03 emir-index-emir-anah     pic 9(4).


 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "activex.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "pms-rec.wrk".
 copy "hrkgir.wrk".
 COPY "adres.wrk".
 copy "rout.wrk".
 COPY "exthrk.lib" replacing 
      ==FD EXTHRK LABEL RECORD STANDARD.== by == ==
      leading "EXTHRK" by "HRK-GIR".
*{Bench}copy-working
 COPY "pms.wrk".
*{Bench}end
 
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "pms.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 declaratives.
 file-error section.
     use after standard error procedure on emir genel genelfis
     errorlog log-index konuk exthrk romhrk isyeri kllnc odalar
     kodlar02 kur depkod onkasa emir-index pms-data rez onbkodlar10.

 file-para.
*///////////
     initialize debug-1 debug-2 debug-3 debug-4
     move "File Para declaratives ....."   to debug-1
     perform debug-yaz    
*///////////
     perform fileerr-proc.
 file-exit.
     exit.
 end declaratives.

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
 COPY "pms.prd".
 COPY "pms.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
      destroy form1-handle.
 REPORT-COMPOSER SECTION.
 copy "romhrk.lg".
 copy "exthrk.lg".
