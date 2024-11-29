*{Bench}prg-comment
* devrezac.cbl
* devrezac.cbl is generated from D:\asya\acugt.ytl\otel\devrezac.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devrezac.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 19 Mart 2024 Salý 17:28:51.
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
         copy "danisman.sel".
         copy "gorev.sel".
         copy "banka.sel".
         copy "odemetip.sel".
         copy "primhrk.sel".
         copy "prim.sel".
         copy "depozit.sel".
         copy "kur.sel".
         copy "demi.sel".
         copy "acenta.sel".
         copy "not.sel".
         copy "yanrez.sel".
         copy "cast.sel".
         COPY "ACENHRK.SEL".
         copy "hesayr.sel".

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
         copy "danisman.lib".
         copy "gorev.lib".
         copy "banka.lib".
         copy "odemetip.lib".
         copy "primhrk.lib".
         copy "prim.lib".
         copy "depozit.lib".
         copy "kur.lib".
         copy "demi.lib".
         copy "acenta.lib".
         copy "not.lib".
         copy "yanrez.lib".
         copy "cast.lib".
         COPY "ACENHRK.LIB".
         copy "hesayr.lib".

     

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
    copy "acendft.wrk".
     copy "link-oda.lnk".
*{Bench}copy-working
 COPY "devrezac.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devrezac.scr".
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
 COPY "devrezac.prd".
 COPY "devrezac.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 copy "devmulk.lg".
 copy "donhrk.lg".
 copy "cast.lg".
 copy "rez.lg".
