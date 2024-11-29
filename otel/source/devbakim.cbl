*{Bench}prg-comment
* devbakim.cbl
* devbakim.cbl is generated from D:\asya\acugt.ytl\otel\devbakim.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devbakim.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 19 Mart 2024 Salý 17:15:43.
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
         copy "romhrk.sel".
                  copy "odemeler.sel" replacing leading "odemeler" by "odemeler2".
       SELECT donhrk-log ASSIGN RANDOM,donhrk-log-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS donhrk-log-fis
           alternate record key donhrk-log-alt = donhrk-log-anah, donhrk-log-fis duplicates

           STATUS FS-donhrk-log.


       SELECT edonhrk-log ASSIGN RANDOM,edonhrk-log-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS edonhrk-log-fis 
           alternate record key edonhrk-log-alt = edonhrk-log-anah, edonhrk-log-fis duplicates

           STATUS FS-edonhrk-log.
      

         copy "donhrk.sel".
         copy "edonhrk.sel" replacing leading "donhrk" by 
                                 "edonhrk".
                       
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
         COPY "hesap.sel" OF "..\..\MUHA\LIB-SEL".
         COPY "cari.sel"  OF "..\..\MUHA\LIB-SEL".
                  copy "konuk.sel".



                  copy "soztar.sel".
                  copy "sozhrk.sel".
                  copy "castdev.sel".


                    copy "yanrez.sel"  .
          copy "cast.sel"  .
           copy "acenta.sel" .


*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         COPY "genel.lib".
         COPY "genelfis.lib"  replacing leading  "mcek-oto" by "mmmmcek".
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
         
         copy "yanrez.lib"  .
          copy "cast.lib"  .
           copy "acenta.lib" .





         copy "edonhrk.lib" replacing leading "donhrk" by 
                                 "edonhrk".
         copy "romhrk.lib".
         copy "odemeler.lib" replacing leading "odemeler" by "odemeler2".

         copy "soztar.lib".
         copy "sozhrk.lib".
         copy "castdev.lib".

          FD edonhrk-log LABEL RECORD STANDARD.
          01 edonhrk-log-REC.
            02 edonhrk-log-ANAH.
                 03 edonhrk-log-oda         pic x(04).
                 03 edonhrk-log-KODU        PIC X(04).
                 03 edonhrk-log-YILI        PIC 9(04).
            02 edonhrk-log-BAS-TAR.
                   03 edonhrk-log-BAS-YIL    PIC 9(04).
                   03 edonhrk-log-BAS-AY     PIC 9(02).
                   03 edonhrk-log-BAS-GUN    PIC 9(02).
            02 edonhrk-log-BIT-TAR.
                   03 edonhrk-log-BIT-YIL    PIC 9(04).
                   03 edonhrk-log-BIT-AY     PIC 9(02).
                   03 edonhrk-log-BIT-GUN    PIC 9(02).                   
            02 edonhrk-log-BOS                PIC X(100).
            02 edonhrk-log-uye-id             pic 9(8).
            02 edonhrk-log-tip-donem          pic x. |K-KIRALANDI
            02 edonhrk-log-rez-no             pic 9(8).
            02 edonhrk-log-tip-1              pic x.
            02 edonhrk-log-rez-no-2           pic 9(8).
            02 edonhrk-log-tip-2              pic x.
            02 edonhrk-log-rez-no-3           pic 9(8).
            02 edonhrk-log-tip-3              pic x.
            02 edonhrk-log-rez-no-4           pic 9(8).
            02 edonhrk-log-tip-4              pic x.
            02 edonhrk-log-rez-no-5           pic 9(8).
            02 edonhrk-log-tip-5              pic x.
            02 edonhrk-log-trez-a-gun         pic 9(3).
            02 edonhrk-log-trez-k-gun         pic s9(3).
            02 edonhrk-log-bos2               pic x(157).
            02 edonhrk-log-durumu             pic x. |Y-YENI KAYIT S-SILINEN KAYIT
            02 edonhrk-log-STAF               PIC X(4).
            02 edonhrk-log-fis                pic 9(10).
 

          FD donhrk-log LABEL RECORD STANDARD.
          01 donhrk-log-REC.
            02 donhrk-log-ANAH.
                 03 donhrk-log-oda          pic x(04).
                 03 donhrk-log-KODU         PIC X(04).
                 03 donhrk-log-YILI         PIC 9(04).
                 03 donhrk-log-devremulk-no pic 9(8).
            02 donhrk-log-BAS-TAR.
                   03 donhrk-log-BAS-YIL    PIC 9(04).
                   03 donhrk-log-BAS-AY     PIC 9(02).
                   03 donhrk-log-BAS-GUN    PIC 9(02).
            02 donhrk-log-BIT-TAR.
                   03 donhrk-log-BIT-YIL    PIC 9(04).
                   03 donhrk-log-BIT-AY     PIC 9(02).
                   03 donhrk-log-BIT-GUN    PIC 9(02).                   
            02 donhrk-log-BOS                PIC X(100).
            02 donhrk-log-tip-donem          pic x. |K-KIRALANDI
            02 donhrk-log-rez-no             pic 9(8).
            02 donhrk-log-tip-1              pic x.
            02 donhrk-log-rez-no-2           pic 9(8).
            02 donhrk-log-tip-2              pic x.
            02 donhrk-log-rez-no-3           pic 9(8).
            02 donhrk-log-tip-3              pic x.
            02 donhrk-log-rez-no-4           pic 9(8).
            02 donhrk-log-tip-4              pic x.
            02 donhrk-log-rez-no-5           pic 9(8).
            02 donhrk-log-tip-5              pic x.
            02 donhrk-log-trez-a-gun         pic 9(3).
            02 donhrk-log-trez-k-gun         pic s9(3).
            02 donhrk-log-donem-kapali       pic 9.
            02 donhrk-log-bos2               pic x(157).
            02 donhrk-log-durumu             pic x. |Y-YENI KAYIT S-SILINEN KAYIT
            02 donhrk-log-STAF               PIC X(4).
            02 donhrk-log-fis                pic 9(10).


                       
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
         COPY "hesap.lib" OF "..\..\MUHA\LIB-SEL".
         COPY "cari.lib"  OF "..\..\MUHA\LIB-SEL".
         copy "konuk.lib".

     

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
   copy "acuserve.wrk".
   copy "uzakadr.wrk".
   copy "taksithes.wrk".
    copy "dokcagir.tasi".
*{Bench}copy-working
 COPY "devbakim.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devbakim.scr".
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
 COPY "devbakim.prd".
 COPY "devbakim.evt".
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
