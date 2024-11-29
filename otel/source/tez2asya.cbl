*{Bench}prg-comment
* tez2asya.cbl
* tez2asya.cbl is generated from D:\asya\acugt.ytl\otel\tez2asya.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. tez2asya.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 3 Mart 2021 Çarþamba 15:06:02.
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
*
         copy "tezkod02.sel".
         COPY "isyeri.sel". 
         COPY "genel.sel". 
         COPY "genel2.sel". 
         COPY "genelfis.sel". 
         COPY "kllnc.sel". 
         COPY "banka.sel". 
         COPY "doviz.sel". 
*********COPY "rez.sel" replacing =='REZ'== by ==REZ==. 
         COPY "rez.sel". 
         COPY "acenta.sel". 
         COPY "takvim.sel". 
         COPY "takvim2.sel". 
         COPY "kodlar02.sel". 
         COPY "ulke.sel". 
         COPY "konum.sel". 
         COPY "fiyat.sel". 
         COPY "fiyatana.sel". 
         COPY "cast.sel". 
         COPY "aksiyhrk.sel". 
         COPY "acenhrk.sel". 
         COPY "odalar.sel". 
         COPY "konuk.sel". 
         COPY "bilbord.sel". 
         copy "karalist.sel".
         copy "yanrez.sel".
         copy "not.sel".
         copy "fiyhes.sel".
         copy "kur.sel".
         copy "romhrk.sel".
         copy "prosif.sel".
         copy "grup.sel".
         copy "rezgrup.sel".
         copy "aceanlas.sel".
         copy "hesayr.sel".
         copy "prohrk.sel".
         copy "grtumrez.sel".
         copy "musteri.sel".
         copy "prohrk2.sel".
         copy "firma.sel".
         copy "onbkodlar10.sel".
         copy "grtumrez.sel" replacing leading 
                        "grtumrez" by "takasgr".
        
        COPY "errorlog.sel".                                                    
        COPY "logindex.sel". 
         select fidetext assign to random,
              fidetext-dosya-adres,
              organization line sequential
              status fs-fidetext. 
         
         select amontext assign to random,
              amontext-dosya-adres,
              organization line sequential
              status fs-amontext. 
       SELECT takas ASSIGN TO RANDOM, takas-DOSYA
                  ORGANIZATION INDEXED
                  ACCESS MODE DYNAMIC
                  RECORD KEY takas-ANAH
                  STATUS FS-takas.  
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
*
         copy "tezkod02.lib".
         COPY "isyeri.lib". 
         COPY "genel.lib". 
         COPY "genel2.lib". 
         COPY "genelfis.lib". 
         COPY "kllnc.lib". 
         COPY "banka.lib". 
         COPY "doviz.lib". 
*********COPY "rez.lib" replacing =='REZ'== by ==REZ==. 
         COPY "rez.lib". 
         COPY "acenta.lib". 
         COPY "takvim.lib". 
         COPY "takvim2.lib". 
         COPY "kodlar02.lib". 
         COPY "ulke.lib". 
         COPY "konum.lib". 
         COPY "fiyat.lib". 
         COPY "fiyatana.lib". 
         COPY "cast.lib". 
         COPY "aksiyhrk.lib". 
         COPY "acenhrk.lib". 
         COPY "odalar.lib". 
         COPY "konuk.lib". 
         COPY "bilbord.lib". 
         copy "karalist.lib".
         copy "yanrez.lib".
         copy "not.lib".
         copy "fiyhes.lib".
         copy "kur.lib".
         copy "romhrk.lib".
         copy "prosif.lib".
         copy "grup.lib".
         copy "rezgrup.lib".
         copy "aceanlas.lib".
         copy "hesayr.lib".
         copy "prohrk.lib".
         copy "grtumrez.lib".
         copy "musteri.lib".
         copy "prohrk2.lib".
         copy "firma.lib".
         copy "onbkodlar10.lib".
         copy "grtumrez.lib" replacing leading 
                        "grtumrez" by "takasgr".
        
        COPY "errorlog.lib".                                                    
        COPY "logindex.lib". 
 fd fidetext label record omitted.
  01 fidetext-rec pic x(20000).    
        
 fd amontext label record omitted.
  01 amontext-rec.
   02 amontext-det pic x(400) occurs 100 times.
 fd takas label record omitted.
  01 takas-rec.
    02 takas-anah.
       03 takas-d-anah-tar.
          05 takas-d-anah      pic x(10).
       03 takas-adi           pic x(30).
       03 takas-soy           pic x(30).
       03 takas-title         pic x(15).
       03 takas-d-tar.
          05 takas-d-yil      pic 9(4).
          05 takas-d-ay       pic 9(2).
          05 takas-d-gun      pic 9(2).
  

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "link-oda.lnk".
 COPY "dokcagir.tasi".
 copy "acendft.wrk".
 copy "frame.wrk".
 copy "fiyhes2.wrk".
 COPY "yasbul.wrk".
 copy "not.lnk".
 COPY "xrez.lib".
 COPY "xrez.lib"   replacing  leading "XREZ" by "TREZ".

*{Bench}copy-working
 COPY "tez2asya.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "tez2asya.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end

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
 COPY "tez2asya.prd".
 COPY "tez2asya.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "frame.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "rez.lg". 
 COPY "cast.lg". 
 COPY "yanrez.lg".

