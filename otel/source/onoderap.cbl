*{Bench}prg-comment
* onoderap.cbl
* onoderap.cbl is generated from D:\asya\acugt.ytl\otel\onoderap.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. onoderap.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:05:23.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.

 COPY "takvim.sel".
 COPY "genelfis.sel".
 COPY "genel.sel".
 COPY "rez.sel".
 COPY "konuk.sel".
 COPY "banka.sel".
 COPY "doviz.sel".
 COPY "acenta.sel".
 COPY "konum.sel".
 COPY "kodlar02.sel".
 COPY "odalar.sel".
 COPY "dokumer.sel".
 COPY "grup.sel".
 COPY "polisxml.sel".
 copy "yanrez.sel".
 copy "cast.sel".
 copy "romhrk.sel".
               COPY "errorlog.sel".                                                    
        COPY "logindex.sel".
        copy "not.sel".
        copy "kllnc.sel".
        copy "depkod.sel".
        copy "dov-boz.sel".
 
*
            select takas assign to random,
                   takas-adres,
            organization indexed,
            access dynamic,
            record key is takas-anah,            
            status fs-takas.

            select takasdv assign to random,
                   takasdv-adres,
            organization indexed,
            access dynamic,
            record key is takasdv-anah,            
            status fs-takasdv.


*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.

 COPY "takvim.lib".
 COPY "genelfis.lib".
 COPY "genel.lib".
 COPY "rez.lib".
 COPY "konuk.lib".
 COPY "banka.lib".
 COPY "doviz.lib".
 COPY "acenta.lib".
 COPY "konum.lib".
 COPY "kodlar02.lib".
 COPY "odalar.lib".
 COPY "dokumer.lib".
 COPY "grup.lib".
 COPY "polisxml.lib".
 copy "yanrez.lib".
 copy "cast.lib".
 copy "romhrk.lib".
 copy "dov-boz.lib".
              COPY "errorlog.lib".                                                    
        COPY "logindex.lib".  
        copy "not.lib".
        copy "kllnc.lib".
        copy "depkod.lib".
 FD takasdv LABEL RECORD STANDARD.
  01 takasdv-REC.
      02 takasdv-anah.
         03 takasdv-kodu       pic 99.
      02 takasdv-diger.
         03 takasdv-tut        pic s9(10)v99.
         03 takasdv-tl         pic s9(10)v99.

 FD takas LABEL RECORD STANDARD.
  01 takas-REC. 
     02 takas-anah.
         03 takas-rez-no        pic 9(8).
         03 takas-islem         pic 9(8).
     02 takas-diger.
        03 takas-acenta         pic x(4).
        03 takas-gir-tar.
           04 takas-gir-yil     pic 9(4).
           04 takas-gir-ay      pic 9(2).
           04 takas-gir-gun     pic 9(2).
        03 takas-cik-tar.
           04 takas-cik-yil     pic 9(4).
           04 takas-cik-ay      pic 9(2).
           04 takas-cik-gun     pic 9(2).
        03 takas-tl-tutar       pic s9(10)v99.
        03 takas-dv-tutar       pic s9(10)v99.
        03 takas-aciklama       pic x(300).
        03 takas-adi            pic x(20).
        03 takas-soyadi         pic x(20).
        03 takas-dv-kodu        pic 99.
        03 takas-staf           pic x(4).
        03 takas-depkod         pic 9(3).



*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
   copy "adres.wrk".
   copy "filtr.wrk".
   copy "reffiltr.wrk".
*{Bench}copy-working
 COPY "onoderap.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "onoderap.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
     COPY "onoderap.dcl".
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
 COPY "onoderap.prd".
 COPY "onoderap.evt".
*{Bench}end   
 copy "dsyhata.prc".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
