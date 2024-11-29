*{Bench}prg-comment
* viprap.cbl
* viprap.cbl is generated from D:\asya\acugt.ytl\otel\viprap.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. viprap.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:01:49.
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
         COPY "dokumer.sel".
         COPY "genel.sel".
         COPY "kodlar02.sel".
         COPY "genelfis.sel".
         copy "konuk.sel".
         COPY "errorlog.sel".                                                    
         COPY "logindex.sel". 
         copy "rez.sel".
         copy "takvim.sel".
         copy "odalar.sel".
         copy "konum.sel".
         copy "acenta.sel".
         copy "gruplar.sel".
         copy "vipistek.sel".
         
       SELECT takas ASSIGN RANDOM,takas-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE  IS DYNAMIC
           RECORD KEY IS takas-anah
           alternate record key takas-gel-zaman duplicates
           STATUS FS-takas.   

       SELECT takas1 ASSIGN RANDOM,takas1-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE  IS DYNAMIC
           RECORD KEY IS takas1-anah
           STATUS FS-takas1.   

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
*
         COPY "dokumer.lib".
         COPY "genel.lib".
         COPY "kodlar02.lib".
         COPY "genelfis.lib".
         copy "konuk.lib".
         COPY "errorlog.lib".                                                    
         COPY "logindex.lib". 
         copy "rez.lib".
         copy "takvim.lib".
         copy "odalar.lib".
         copy "konum.lib".
         copy "acenta.lib".
         copy "gruplar.lib".
         copy "vipistek.lib".
*        
 fd takas label record standard.
 01 takas-rec.
    02 takas-anah.
       03 takas-tip           pic x.|G-Gelecek I-inhouse T-Gidecek
       03 takas-rez-no        pic 9(8).
    02 takas-adi              pic x(20).
    02 takas-soyadi           pic x(20).
    02 takas-gel-tar.
       03 takas-gel-yil       pic 9(4).
       03 takas-gel-ay        pic 9(2).
       03 takas-gel-gun       pic 9(2).
     02 takas-gel-zaman.
       03 takas-gel-saat        pic 9(2).
       03 takas-gel-dakika       pic 9(2).
    02 takas-git-tar.  
       03 takas-git-yil       pic 9(4).
       03 takas-git-ay        pic 9(2).
       03 takas-git-gun       pic 9(2).
    02 takas-vip-tipi         pic x.
    02 takas-odano            pic xxxx.
    02 takas-KISI.
       03 takas-BUYUK          PIC 9(02).
       03 takas-KUCUK          PIC 9(02).
       03 takas-BEBEK          PIC 9(01).
       03 takas-FREE           PIC 9(01).
    02 takas-acenta            pic x(4).
    02 takas-firma             pic x(5).
    02 takas-grup-no           pic 9(6).
 fd takas1 label record standard.
 01 takas1-rec.
    02 takas1-anah.
      03 takas1-tip           pic x.|I-istek , V-vip
      03 takas1-mlz-kodu      pic xx.
    02 takas1-adet            pic 9(3).

   
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
*{Bench}copy-working
 COPY "viprap.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "viprap.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
  copy "viprap.dcl".
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
 COPY "viprap.prd".
 COPY "viprap.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

