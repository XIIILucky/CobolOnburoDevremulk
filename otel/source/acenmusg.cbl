*{Bench}prg-comment
* acenmusg.cbl
* acenmusg.cbl is generated from D:\asya\acugt.ytl\otel\acenmusg.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. acenmusg.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:02:05.
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
         copy "genel.sel".
         copy "takvim.sel".
         copy "genelfis.sel".
         copy "isyeri.sel".
         copy "kllnc.sel".
         copy "konuk.sel".
         copy "acenta.sel".
         copy "ulke.sel".
         copy "dokumer.sel".
         copy "ozluk.sel".
         copy "kodlar02.sel".
         copy "odalar.sel".
        COPY "errorlog.sel".                                                    
        COPY "logindex.sel".
        copy "rez.sel".
        copy "konum.sel".
        copy "doviz.sel".
        copy "grup.sel".     
        copy "yanrez.sel".  
        copy "cast.sel".   
        copy "firma.sel".  
        copy "telayar.sel".  
        copy "telayarq.sel".
        copy "gruplar.sel".
           SELECT  takas ASSIGN RANDOM, takas-DOSYA
                   ORGANIZATION INDEXED
                   ACCESS  MODE IS DYNAMIC
                   RECORD KEY takas-ANAH
                   STATUS FS-takas.
           SELECT  takas1 ASSIGN RANDOM, takas1-DOSYA
                   ORGANIZATION INDEXED
                   ACCESS  MODE IS DYNAMIC
                   RECORD KEY takas1-ANAHtar
                   STATUS FS-takas1.

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
*        
         copy "genel.lib".
         copy "takvim.lib".
         copy "genelfis.lib".
         copy "isyeri.lib".
         copy "kllnc.lib".
         copy "konuk.lib".
         copy "acenta.lib".
         copy "ulke.lib".
         copy "dokumer.lib".
         copy "ozluk.lib".
         copy "kodlar02.lib".
         copy "odalar.lib".
        COPY "errorlog.lib".                                                    
        COPY "logindex.lib".
        copy "rez.lib".
        copy "konum.lib".
        copy "doviz.lib".
        copy "grup.lib".     
        copy "yanrez.lib".  
        copy "cast.lib".   
        copy "firma.lib".  
        copy "telayar.lib".  
        copy "telayarq.lib".
        copy "gruplar.lib".
FD takas LABEL RECORD STANDARD.
01 takas-REC.
       02 takas-anah.
          03 takas-rez-no       pic 9(8).
       02 takas-adi             pic x(20).
       02 takas-soyadi          pic x(20).
       02 takas-gel-tar.
          03 takas-gel-yil      pic 9(4).
          03 takas-gel-ay       pic 9(2).
          03 takas-gel-gun      pic 9(2).
       02 takas-git-tar.
          03 takas-git-yil      pic 9(4).
          03 takas-git-ay       pic 9(2).
          03 takas-git-gun      pic 9(2).
       02 takas-acenta          pic x(4).
       02 takas-firma           pic x(5).
       02 takas-grupno          pic 9(6).
       02 takas-odano           pic x(4).
       02 takas-KISI.
             03 takas-BUYUK          PIC 9(02).
             03 takas-KUCUK          PIC 9(02).
             03 takas-BEBEK          PIC 9(01).
             03 takas-FREE           PIC 9(01).
       02 takas-pan-tipi             pic xx.
       02 takas-rap-tip              pic x.
FD takas1 LABEL RECORD STANDARD.
01 takas1-REC.
       02 takas1-anahtar.
          03 takas1-anah              pic x(10).
       02 takas1-adet                 pic 9(6).
       02 takas1-icerde                 pic 9(6).
       02 takas1-gelecek                 pic 9(6).


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
 COPY "acenmusg.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "acenmusg.scr".
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
 COPY "acenmusg.prd".
 COPY "acenmusg.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "rezfilt.cpy".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.

