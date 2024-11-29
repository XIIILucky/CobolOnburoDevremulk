*{Bench}prg-comment
* devaiisl.cbl
* devaiisl.cbl is generated from D:\asya\acugt.ytl\otel\devaiisl.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devaiisl.
 AUTHOR. F�rat.
 DATE-WRITTEN. 4 Kas�m 2020 �ar�amba 16:07:05.
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
         copy "rez.sel".
         copy "cek.sel".
         copy "mgenelfis.sel".
         copy "taksit.sel".
         copy "odemeler.sel".
         copy "odemeler.sel" replacing leading "odemeler" by "odemeler2".
         copy "danisman.sel".
         copy "gorev.sel".
         copy "banka.sel".
         copy "odemetip.sel".
         copy "primhrk.sel".
         copy "prim.sel".
         copy "depozit.sel".
         COPY "hesap.sel" OF "..\..\MUHA\LIB-SEL".
         COPY "cari.sel"  OF "..\..\MUHA\LIB-SEL".
         copy "kur.sel".
         copy "demi.sel".
         copy "doviz.sel".

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
         copy "odalar.lib".
         copy "konum.lib".
         copy "donem.lib".
         copy "donem2.lib".
         copy "donhrk.lib". 
         copy "gruplar.lib".
         copy "rez.lib". 
         copy "cek.lib".
         copy "mgenelfis.lib".
         copy "taksit.lib".
         copy "odemeler.lib".
         copy "odemeler.lib" replacing leading "odemeler" by "odemeler2".
         copy "danisman.lib".
         copy "gorev.lib".
         copy "banka.lib".
         copy "odemetip.lib".
         copy "primhrk.lib".
         copy "prim.lib".
         copy "depozit.lib".
         COPY "hesap.lib" OF "..\..\MUHA\LIB-SEL".
         COPY "cari.lib"  OF "..\..\MUHA\LIB-SEL".
         copy "kur.lib".
         copy "demi.lib".
         copy "doviz.lib".

     

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
   copy "taksithes.wrk".
*{Bench}copy-working
 COPY "devaiisl.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devaiisl.scr".
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
 COPY "devaiisl.prd".
 COPY "devaiisl.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "taksithes.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
 copy "devmulk.lg".
 copy "odemeler.lg".
 copy "taksit.lg".
 copy "prim.lg".
 copy "primhrk.lg".
 copy "gorev.lg".
 copy "danisman.lg".
 copy "cek.lg".
 copy "donem.lg".
 copy "donem2.lg".
 copy "donhrk.lg".
