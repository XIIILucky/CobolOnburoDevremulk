*{Bench}prg-comment
* devmulk.cbl
* devmulk.cbl is generated from D:\asya\acugt.ytl\otel\devmulk.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devmulk.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 18 Kasým 2024 Pazartesi 16:36:51.
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
          COPY "onay.sel".
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
         copy "sozhrk.sel".
         copy "soztar.sel".
         copy "donhrk.sel".
         copy "donhrk.sel"  replacing 
             leading "donhrk" by "donhrk2".
         copy "gruplar.sel".
         copy "rez.sel".
         copy "hesap.sel"  of "..\..\muhB\lib-sel".
         copy "cari.sel"  of "..\..\muhB\lib-sel".
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
         copy "odemesil.sel".
         copy "devfiyat.sel".
         copy "doviz.sel".
         copy "kur.sel".
         copy "konuk.sel".
         COPY "castdon.sel".
         copy "cast.sel".
         copy "not.sel".
         COPY "CASTDEV.SEL".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         COPY "genel.lib".
         COPY "onay.lib".
         COPY "genelfis.lib".
         COPY "takvim.lib".
         COPY "errorlog.lib".                                                    
         COPY "logindex.lib".
$XFD FILE =devmulk                                                         
         copy "devremulk.lib".
         copy "kllnc.lib".
$XFD FILE =musteri
         copy "musteri.lib".
         copy "odalar.lib".
         copy "konum.lib".
$XFD FILE =donem
         copy "donem.lib".
$XFD FILE =donem2
         copy "donem2.lib".
$XFD FILE =donhrk
         copy "donhrk.lib".
         copy "donhrk.lib"  replacing 
             leading "donhrk" by "donhrk2".
$XFD FILE =sozhrk
         copy "sozhrk.lib".
$XFD FILE =soztar
         copy "soztar.lib".
         copy "gruplar.lib".
         copy "rez.lib". 
         copy "hesap.lib"  of "..\..\muhB\lib-sel".
         copy "cari.lib"  of "..\..\muhB\lib-sel".

$XFD FILE =cek
         copy "cek.lib".
         copy "mgenelfis.lib".
$XFD FILE =taksit
         copy "taksit.lib".
$XFD FILE =odemeler
         copy "odemeler.lib".
$XFD FILE =danisman
         copy "danisman.lib".
$XFD FILE =gorev
         copy "gorev.lib".
         copy "banka.lib".
         copy "odemetip.lib".
$XFD FILE =primhrk
         copy "primhrk.lib".
$XFD FILE =prim
         copy "prim.lib".
$XFD FILE =odemesil
         copy "odemesil.lib".
         copy "devfiyat.lib".
         copy "doviz.lib".
         copy "kur.lib".
         copy "konuk.lib".
$XFD FILE =castdon
         COPY "castdon.lib".
         COPY "cast.lib".
         copy "not.lib".
         COPY "castdev.lib".


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
   copy "opensave.def". 
   copy "link-oda.lnk".
   copy "not.lnk".
    
*{Bench}copy-working
 COPY "devmulk.wrk".
*{Bench}end
 copy "protasi.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "devmulk.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devmulk.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-uye-no, link-odano, link-donem.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "devmulk.dcl".
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
 COPY "devmulk.prd".
 COPY "devmulk.mnu".
 COPY "devmulk.evt".
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
 copy "castdon.lg".
 copy "rez.lg".
 copy "sozhrk.lg".
 copy "soztar.lg".
 copy "castdev.lg".
