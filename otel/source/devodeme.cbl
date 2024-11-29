*{Bench}prg-comment
* devodeme.cbl
* devodeme.cbl is generated from D:\asya\acugt.ytl\otel\devodeme.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devodeme.
 AUTHOR. salih.
 DATE-WRITTEN. 18 Þubat 2022 Cuma 13:34:41.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
        alphabet turkce-alfabe 1 thru 256.
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
         COPY "genel.sel".
         COPY "genelfis.sel".
         COPY "takvim.sel".
         COPY "errorlog.sel".                                                    
         COPY "logindex.sel".                                                         
         copy "devremulk.sel".
         copy "kllnc.sel".
         copy "musteri.sel".
         copy "odalar.sel".
         copy "konum.sel".
         copy "donem.sel".
         copy "donem2.sel". 
         copy "donhrk.sel".
         copy "gruplar.sel".
         copy "banka.sel".
         copy "rez.sel".
         copy "hesap.sel"  of "..\..\muhB\lib-sel".
         copy "cari.sel"  of "..\..\muhB\lib-sel".
         copy "cek.sel".
         copy "mgenelfis.sel".
         copy "taksit.sel".
         copy "odemeler.sel".
         copy "odemetip.sel".
         copy "odemesil.sel".
         copy "danisman.sel".
         copy "doviz.sel".
         copy "kur.sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         COPY "genel.lib".
         COPY "genelfis.lib".
         COPY "takvim.lib".
         COPY "errorlog.lib".                                                    
         COPY "logindex.lib".                                                         
         copy "devremulk.lib".
         copy "kllnc.lib".
         copy "musteri.lib".
         copy "banka.lib".
         copy "odalar.lib".
         copy "konum.lib".
         copy "donem.lib".
         copy "donem2.lib". 
         copy "donhrk.lib".
         copy "gruplar.lib".
         copy "rez.lib".
         copy "hesap.lib"  of "..\..\muhB\lib-sel".
         copy "cari.lib"  of "..\..\muhB\lib-sel".
         copy "cek.lib".
         copy "mgenelfis.lib".
         copy "taksit.lib".
         copy "odemeler.lib".
         copy "odemetip.lib".
         copy "odemesil.lib".
         copy "danisman.lib".
         copy "doviz.lib".
         copy "kur.lib".
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
   copy "acuserve.wrk".
   copy "uzakadr.wrk".
*{Bench}copy-working
 COPY "devodeme.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "devodeme.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devodeme.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        link-odeme-uye-no, link-cek-isl-no, link-odeme-sira.
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
 COPY "devodeme.prd".
 COPY "devodeme.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Screen1-Handle.
 copy "devmulk.lg".
 copy "odemeler.lg".
 copy "taksit.lg".
 copy "odemetip.lg".
 copy "cek.lg".
 copy "donem.lg".
 copy "donem2.lg".
 copy "donhrk.lg".
