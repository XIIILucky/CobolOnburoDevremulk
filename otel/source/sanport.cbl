*{Bench}prg-comment
* sanport.cbl
* sanport.cbl is generated from D:\asya\acugt.ytl\otel\sanport.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. sanport IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:48:58.
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
      copy "sanport.sel".
*****
         select emir assign to random,
                    emir-adres
                 organization indexed
                 access dynamic
            record key is emir-anah
                 status fs-emir.

      
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 
 fd emir label record standard.
 01 emir-rec.
    02 emir-anah.
       03 emir-komut                         pic x(4).
      03 emir-ver-tarih.
       05 emir-ver-yil                    pic 9(4).
       05 emir-ver-ay                     pic 9(2).
       05 emir-ver-gun                    pic 9(2).
      03 emir-ver-zaman.
       05 emir-ver-saat                   pic 99.
       05 emir-ver-dakika                 pic 99.
       05 emir-ver-saniye                 pic 99.
      03 emir-oda                           pic x(4).
    02 emir-durum                         pic x.
       88 emir-ok             value "E".
     02 emir-ok-tarih.
       03 emir-ok-yil                    pic 9(4).
       03 emir-ok-ay                     pic 9(2).
       03 emir-ok-gun                    pic 9(2).
    02 emir-ok-zaman.
       03 emir-ok-saat                   pic 99.
       03 emir-ok-dakika                 pic 99.
       03 emir-ok-saniye                 pic 99.
   02 emir-paket                         pic x(100).

 copy "sanport.lib".



 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "activex.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 
 COPY "adres.wrk".
 
*{Bench}copy-working
 COPY "sanport.wrk".
*{Bench}end
 
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "sanport.scr".
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
     kodlar02 kur depkod onkasa.

 file-para.
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
 COPY "sanport.prd".
 COPY "sanport.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
      destroy form1-handle.
 REPORT-COMPOSER SECTION.
